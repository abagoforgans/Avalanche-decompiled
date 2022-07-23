contract main {




// =====================  Runtime code  =====================


address owner;
address sub_6f16fd5dAddress;
address sub_3b1be07aAddress;
array of struct sub_54341980;
mapping of uint256 sub_5553f351;
mapping of uint256 sub_9ebe48c7;
uint256 sub_fd6cbeca;
uint256 sub_b22a371b;
uint8 stor8;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;

function sub_3b1be07a(?) payable {
    return sub_3b1be07aAddress
}

function sub_54341980(?) payable {
    require calldata.size - 4 >= 32
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
    if sub_5553f351[arg1] >= sub_54341980.length:
        revert with 0, 50
    return sub_54341980[stor4[arg1]].field_0, 
           sub_54341980[stor4[arg1]].field_256,
           sub_54341980[stor4[arg1]].field_512,
           sub_54341980[stor4[arg1]].field_768,
           sub_54341980[stor4[arg1]].field_1024,
           sub_54341980[stor4[arg1]].field_1280
}

function getCurrentTarget(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_5553f351[arg1]
}

function sub_6f16fd5d(?) payable {
    return sub_6f16fd5dAddress
}

function owner() payable {
    return owner
}

function sub_9ebe48c7(?) payable {
    require calldata.size - 4 >= 32
    return sub_9ebe48c7[arg1]
}

function sub_b22a371b(?) payable {
    return sub_b22a371b
}

function sub_d9ccfbdb(?) payable {
    return sub_54341980.length
}

function sub_fd6cbeca(?) payable {
    return sub_fd6cbeca
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

function sub_e308c79b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = uint8(bool(arg1))
}

function sub_2e0ba2dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6f16fd5dAddress = address(arg1)
}

function sub_9e7b123b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3b1be07aAddress = address(arg1)
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

function sub_1b7655c0(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_54341980.length++
    sub_54341980[sub_54341980.length].field_0 = arg1
    storC257[stor3.length] = arg2
    storC257[stor3.length] = arg3
    storC257[stor3.length] = arg4
    storC257[stor3.length] = arg5
    storC257[stor3.length] = arg6
}

function sub_0e0fb41a(?) payable {
    require calldata.size - 4 >= 32
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
    s = mem[64] + 64
    t = 128
    while idx < _17:
        _26 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_26 + 32]
        mem[s + 64] = mem[_26 + 64]
        mem[s + 96] = mem[_26 + 96]
        mem[s + 128] = mem[_26 + 128]
        mem[s + 160] = mem[_26 + 160]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _16 + (192 * _17) + -mem[64] + 64
}

function sub_5b220b7a(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_6f16fd5dAddress)
    staticcall sub_6f16fd5dAddress.0xe926ca95 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 0, 65
    if arg2 >= sub_54341980.length:
        revert with 0, 50
    if 11 > !sub_54341980[arg2].field_512:
        revert with 0, 17
    if sub_54341980[arg2].field_512 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 320 > !(64 * sub_54341980[arg2].field_512 + 11):
        revert with 0, 17
    if (64 * sub_54341980[arg2].field_512 + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 11 > !sub_54341980[arg2].field_0:
        revert with 0, 17
    if sub_54341980[arg2].field_0 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 9 > !ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 64 * sub_54341980[arg2].field_0 + 11 <= 64 * ext_call.return_data[32] + 9:
        if 1 > !(64 * ext_call.return_data[32] + 9):
            revert with 0, 17
        if (64 * ext_call.return_data[32] + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 64 * sub_54341980[arg2].field_0 + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if not 2 * (64 * ext_call.return_data[32] + 9) + 1:
            revert with 0, 18
        if (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 and 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 > -1 / (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640:
            revert with 0, 17
        if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 <= 100 * ext_call.return_data[128]:
            if 11 > !ext_call.return_data[64]:
                revert with 0, 17
            if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * ext_call.return_data[64] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !sub_54341980[arg2].field_256:
                revert with 0, 17
            if sub_54341980[arg2].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[arg2].field_256 + 9:
                if 1 > !(64 * sub_54341980[arg2].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 0, 17
                    if sub_54341980[arg2].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 0, 18
                    if 1 > !(1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)):
                        revert with 0, 17
                    if 999999999999999 >= (1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1:
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
            else:
                if 1 > !(64 * ext_call.return_data[0] + 11):
                    revert with 0, 17
                if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(64 * sub_54341980[arg2].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 0, 18
                if 1000 < (1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 0, 17
                    if sub_54341980[arg2].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 0, 18
                    if 1 > !(1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)):
                        revert with 0, 17
                    if 999999999999999 >= (1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1:
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
        else:
            if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 < 100 * ext_call.return_data[128]:
                revert with 0, 17
            if ext_call.return_data[96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not ((1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]):
                revert with 0, 18
            if 1 > !(1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128])):
                revert with 0, 17
            if 11 > !ext_call.return_data[64]:
                revert with 0, 17
            if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * ext_call.return_data[64] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !sub_54341980[arg2].field_256:
                revert with 0, 17
            if sub_54341980[arg2].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[arg2].field_256 + 9:
                if 1 > !(64 * sub_54341980[arg2].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 0, 17
                    if sub_54341980[arg2].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 0, 18
                    if 1 > !(1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)):
                        revert with 0, 17
                    if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) >= 1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
            else:
                if 1 > !(64 * ext_call.return_data[0] + 11):
                    revert with 0, 17
                if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(64 * sub_54341980[arg2].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 0, 18
                if 1000 < (1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 0, 17
                    if sub_54341980[arg2].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 0, 18
                    if 1 > !(1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)):
                        revert with 0, 17
                    if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) >= 1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
    else:
        if 1 > !(64 * sub_54341980[arg2].field_0 + 11):
            revert with 0, 17
        if (64 * sub_54341980[arg2].field_0 + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(64 * ext_call.return_data[32] + 9):
            revert with 0, 17
        if (64 * ext_call.return_data[32] + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if not 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1:
            revert with 0, 18
        if 1000 < (1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1:
            revert with 0, 17
        if (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 and -((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1) + 1000 > -1 / (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640:
            revert with 0, 17
        if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if (1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000 <= 100 * ext_call.return_data[128]:
            if 11 > !ext_call.return_data[64]:
                revert with 0, 17
            if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * ext_call.return_data[64] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !sub_54341980[arg2].field_256:
                revert with 0, 17
            if sub_54341980[arg2].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[arg2].field_256 + 9:
                if 1 > !(64 * sub_54341980[arg2].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 0, 17
                    if sub_54341980[arg2].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 0, 18
                    if 1 > !(1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)):
                        revert with 0, 17
                    if 999999999999999 >= (1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1:
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
            else:
                if 1 > !(64 * ext_call.return_data[0] + 11):
                    revert with 0, 17
                if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(64 * sub_54341980[arg2].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 0, 18
                if 1000 < (1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 0, 17
                    if sub_54341980[arg2].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 0, 18
                    if 1 > !(1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)):
                        revert with 0, 17
                    if 999999999999999 >= (1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1:
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
        else:
            if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000 < 100 * ext_call.return_data[128]:
                revert with 0, 17
            if ext_call.return_data[96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not ((1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]):
                revert with 0, 18
            if 1 > !(1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128])):
                revert with 0, 17
            if 11 > !ext_call.return_data[64]:
                revert with 0, 17
            if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * ext_call.return_data[64] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !sub_54341980[arg2].field_256:
                revert with 0, 17
            if sub_54341980[arg2].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[arg2].field_256 + 9:
                if 1 > !(64 * sub_54341980[arg2].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 0, 17
                    if sub_54341980[arg2].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 0, 18
                    if 1 > !(1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)):
                        revert with 0, 17
                    if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) >= 1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
            else:
                if 1 > !(64 * ext_call.return_data[0] + 11):
                    revert with 0, 17
                if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(64 * sub_54341980[arg2].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 0, 18
                if 1000 < (1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 0, 17
                    if sub_54341980[arg2].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 0, 18
                    if 1 > !(1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)):
                        revert with 0, 17
                    if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) >= 1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
    return 999999999999999
}

function sub_ea60459a(?) payable {
    require calldata.size - 4 >= 32
    if not sub_9ebe48c7[arg1]:
        return 0
    require ext_code.size(sub_6f16fd5dAddress)
    staticcall sub_6f16fd5dAddress.0xe926ca95 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 0, 65
    if sub_5553f351[arg1] >= sub_54341980.length:
        revert with 0, 50
    if 11 > !sub_54341980[stor4[arg1]].field_512:
        revert with 0, 17
    if sub_54341980[stor4[arg1]].field_512 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 320 > !(64 * sub_54341980[stor4[arg1]].field_512 + 11):
        revert with 0, 17
    if (64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 11 > !sub_54341980[stor4[arg1]].field_0:
        revert with 0, 17
    if sub_54341980[stor4[arg1]].field_0 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 9 > !ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 64 * sub_54341980[stor4[arg1]].field_0 + 11 <= 64 * ext_call.return_data[32] + 9:
        if 1 > !(64 * ext_call.return_data[32] + 9):
            revert with 0, 17
        if (64 * ext_call.return_data[32] + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 64 * sub_54341980[stor4[arg1]].field_0 + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if not 2 * (64 * ext_call.return_data[32] + 9) + 1:
            revert with 0, 18
        if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
            revert with 0, 17
        if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 <= 100 * ext_call.return_data[128]:
            if 11 > !ext_call.return_data[64]:
                revert with 0, 17
            if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * ext_call.return_data[64] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !sub_54341980[stor4[arg1]].field_256:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                    if block.timestamp < sub_9ebe48c7[arg1]:
                        revert with 0, 17
                    if sub_5553f351[arg1] >= sub_54341980.length:
                        revert with 0, 50
                    if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
                if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                    revert with 0, 18
                if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                    revert with 0, 17
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                    if sub_5553f351[arg1] >= sub_54341980.length:
                        revert with 0, 50
                    if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                    revert with 0, 18
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1)
            if 1 > !(64 * ext_call.return_data[0] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                revert with 0, 17
            if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                revert with 0, 18
            if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                revert with 0, 17
            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                revert with 0, 18
            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                revert with 0, 17
            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
        else:
            if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 < 100 * ext_call.return_data[128]:
                revert with 0, 17
            if ext_call.return_data[96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]):
                revert with 0, 18
            if 1 > !(1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128])):
                revert with 0, 17
            if 11 > !ext_call.return_data[64]:
                revert with 0, 17
            if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * ext_call.return_data[64] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !sub_54341980[stor4[arg1]].field_256:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                    if block.timestamp < sub_9ebe48c7[arg1]:
                        revert with 0, 17
                    if sub_5553f351[arg1] >= sub_54341980.length:
                        revert with 0, 50
                    if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
                if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                    revert with 0, 18
                if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                    revert with 0, 17
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                    if sub_5553f351[arg1] >= sub_54341980.length:
                        revert with 0, 50
                    if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                    revert with 0, 18
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1)
            if 1 > !(64 * ext_call.return_data[0] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                revert with 0, 17
            if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                revert with 0, 18
            if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                revert with 0, 17
            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                revert with 0, 18
            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                revert with 0, 17
            if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
    else:
        if 1 > !(64 * sub_54341980[stor4[arg1]].field_0 + 11):
            revert with 0, 17
        if (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(64 * ext_call.return_data[32] + 9):
            revert with 0, 17
        if (64 * ext_call.return_data[32] + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if not 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
            revert with 0, 18
        if 1000 < (1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
            revert with 0, 17
        if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and -((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1) + 1000 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
            revert with 0, 17
        if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 <= 100 * ext_call.return_data[128]:
            if 11 > !ext_call.return_data[64]:
                revert with 0, 17
            if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * ext_call.return_data[64] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !sub_54341980[stor4[arg1]].field_256:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                    if block.timestamp < sub_9ebe48c7[arg1]:
                        revert with 0, 17
                    if sub_5553f351[arg1] >= sub_54341980.length:
                        revert with 0, 50
                    if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
                if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                    revert with 0, 18
                if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                    revert with 0, 17
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                    if sub_5553f351[arg1] >= sub_54341980.length:
                        revert with 0, 50
                    if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                    revert with 0, 18
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1)
            if 1 > !(64 * ext_call.return_data[0] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                revert with 0, 17
            if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                revert with 0, 18
            if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                revert with 0, 17
            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                revert with 0, 18
            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                revert with 0, 17
            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
        else:
            if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 < 100 * ext_call.return_data[128]:
                revert with 0, 17
            if ext_call.return_data[96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]):
                revert with 0, 18
            if 1 > !(1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128])):
                revert with 0, 17
            if 11 > !ext_call.return_data[64]:
                revert with 0, 17
            if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * ext_call.return_data[64] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !sub_54341980[stor4[arg1]].field_256:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                    revert with 0, 17
                if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                    if block.timestamp < sub_9ebe48c7[arg1]:
                        revert with 0, 17
                    if sub_5553f351[arg1] >= sub_54341980.length:
                        revert with 0, 50
                    if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
                if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                    revert with 0, 18
                if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                    revert with 0, 17
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                    if sub_5553f351[arg1] >= sub_54341980.length:
                        revert with 0, 50
                    if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                    revert with 0, 18
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1)
            if 1 > !(64 * ext_call.return_data[0] + 11):
                revert with 0, 17
            if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                revert with 0, 17
            if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                revert with 0, 18
            if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                revert with 0, 17
            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                revert with 0, 18
            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                revert with 0, 17
            if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                if block.timestamp < sub_9ebe48c7[arg1]:
                    revert with 0, 17
                if sub_5553f351[arg1] >= sub_54341980.length:
                    revert with 0, 50
                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                    revert with 0, 17
                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999)
    if block.timestamp < sub_9ebe48c7[arg1]:
        revert with 0, 17
    if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
        revert with 0, 18
    if sub_5553f351[arg1] >= sub_54341980.length:
        revert with 0, 50
    if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
        revert with 0, 17
    if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1)
}

function sub_4c3db7ed(?) payable {
    require calldata.size - 4 >= 32
    if not stor8:
        revert with 0, 'Claiming is not available'
    require ext_code.size(sub_6f16fd5dAddress)
    staticcall sub_6f16fd5dAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You can only claim rewards for NotOwls you own.'
    if sub_9ebe48c7[arg1]:
        if not sub_9ebe48c7[arg1]:
            if sub_b22a371b > -1:
                revert with 0, 17
            if sub_b22a371b >= sub_fd6cbeca:
                revert with 0, 'Maximum amount of NOTSNO have been minted'
            if not stor8:
                revert with 0, 'Claiming is not available'
            if sub_b22a371b > -1:
                revert with 0, 17
            require ext_code.size(sub_3b1be07aAddress)
            call sub_3b1be07aAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require ext_code.size(sub_6f16fd5dAddress)
            staticcall sub_6f16fd5dAddress.0xe926ca95 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
                revert with 0, 65
            if sub_5553f351[arg1] >= sub_54341980.length:
                revert with 0, 50
            if 11 > !sub_54341980[stor4[arg1]].field_512:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_512 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * sub_54341980[stor4[arg1]].field_512 + 11):
                revert with 0, 17
            if (64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !sub_54341980[stor4[arg1]].field_0:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_0 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * sub_54341980[stor4[arg1]].field_0 + 11 <= 64 * ext_call.return_data[32] + 9:
                if 1 > !(64 * ext_call.return_data[32] + 9):
                    revert with 0, 17
                if (64 * ext_call.return_data[32] + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * sub_54341980[stor4[arg1]].field_0 + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * ext_call.return_data[32] + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
                    revert with 0, 17
                if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 <= 100 * ext_call.return_data[128]:
                    if 11 > !ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 320 > !(64 * ext_call.return_data[64] + 11):
                        revert with 0, 17
                    if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 11 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 9 > !sub_54341980[stor4[arg1]].field_256:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 0, 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 1 > !(64 * ext_call.return_data[0] + 11):
                            revert with 0, 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 < 100 * ext_call.return_data[128]:
                        revert with 0, 17
                    if ext_call.return_data[96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]):
                        revert with 0, 18
                    if 1 > !(1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128])):
                        revert with 0, 17
                    if 11 > !ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 320 > !(64 * ext_call.return_data[64] + 11):
                        revert with 0, 17
                    if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 11 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 9 > !sub_54341980[stor4[arg1]].field_256:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 0, 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 1 > !(64 * ext_call.return_data[0] + 11):
                            revert with 0, 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
            else:
                if 1 > !(64 * sub_54341980[stor4[arg1]].field_0 + 11):
                    revert with 0, 17
                if (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(64 * ext_call.return_data[32] + 9):
                    revert with 0, 17
                if (64 * ext_call.return_data[32] + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
                    revert with 0, 18
                if 1000 < (1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
                    revert with 0, 17
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and -((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1) + 1000 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
                    revert with 0, 17
                if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 <= 100 * ext_call.return_data[128]:
                    if 11 > !ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 320 > !(64 * ext_call.return_data[64] + 11):
                        revert with 0, 17
                    if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 11 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 9 > !sub_54341980[stor4[arg1]].field_256:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 0, 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 1 > !(64 * ext_call.return_data[0] + 11):
                            revert with 0, 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 < 100 * ext_call.return_data[128]:
                        revert with 0, 17
                    if ext_call.return_data[96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]):
                        revert with 0, 18
                    if 1 > !(1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128])):
                        revert with 0, 17
                    if 11 > !ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 320 > !(64 * ext_call.return_data[64] + 11):
                        revert with 0, 17
                    if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 11 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 9 > !sub_54341980[stor4[arg1]].field_256:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 0, 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 1 > !(64 * ext_call.return_data[0] + 11):
                            revert with 0, 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_9ebe48c7[arg1] = block.timestamp
}

function sub_5b8338f2(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_6f16fd5dAddress)
    staticcall sub_6f16fd5dAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You can only change the target of a NotOwl you own.'
    if arg2 >= sub_54341980.length:
        revert with 0, 'The enemy you are targetting doesn't exist'
    if sub_54341980[arg2].field_768 <= 0:
        revert with 0, 'The enemy you are targetting doesn't exist anymore'
    if stor8:
        if not sub_9ebe48c7[arg1]:
            if sub_b22a371b > -1:
                revert with 0, 17
            if sub_b22a371b >= sub_fd6cbeca:
                revert with 0, 'Maximum amount of NOTSNO have been minted'
            if not stor8:
                revert with 0, 'Claiming is not available'
            if sub_b22a371b > -1:
                revert with 0, 17
            require ext_code.size(sub_3b1be07aAddress)
            call sub_3b1be07aAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require ext_code.size(sub_6f16fd5dAddress)
            staticcall sub_6f16fd5dAddress.0xe926ca95 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
                revert with 0, 65
            if sub_5553f351[arg1] >= sub_54341980.length:
                revert with 0, 50
            if 11 > !sub_54341980[stor4[arg1]].field_512:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_512 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 320 > !(64 * sub_54341980[stor4[arg1]].field_512 + 11):
                revert with 0, 17
            if (64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 11 > !sub_54341980[stor4[arg1]].field_0:
                revert with 0, 17
            if sub_54341980[stor4[arg1]].field_0 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 9 > !ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 64 * sub_54341980[stor4[arg1]].field_0 + 11 <= 64 * ext_call.return_data[32] + 9:
                if 1 > !(64 * ext_call.return_data[32] + 9):
                    revert with 0, 17
                if (64 * ext_call.return_data[32] + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 64 * sub_54341980[stor4[arg1]].field_0 + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * ext_call.return_data[32] + 9) + 1:
                    revert with 0, 18
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
                    revert with 0, 17
                if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 <= 100 * ext_call.return_data[128]:
                    if 11 > !ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 320 > !(64 * ext_call.return_data[64] + 11):
                        revert with 0, 17
                    if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 11 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 9 > !sub_54341980[stor4[arg1]].field_256:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 0, 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 1 > !(64 * ext_call.return_data[0] + 11):
                            revert with 0, 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 < 100 * ext_call.return_data[128]:
                        revert with 0, 17
                    if ext_call.return_data[96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]):
                        revert with 0, 18
                    if 1 > !(1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128])):
                        revert with 0, 17
                    if 11 > !ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 320 > !(64 * ext_call.return_data[64] + 11):
                        revert with 0, 17
                    if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 11 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 9 > !sub_54341980[stor4[arg1]].field_256:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 0, 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 1 > !(64 * ext_call.return_data[0] + 11):
                            revert with 0, 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
            else:
                if 1 > !(64 * sub_54341980[stor4[arg1]].field_0 + 11):
                    revert with 0, 17
                if (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(64 * ext_call.return_data[32] + 9):
                    revert with 0, 17
                if (64 * ext_call.return_data[32] + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
                    revert with 0, 18
                if 1000 < (1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
                    revert with 0, 17
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and -((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1) + 1000 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
                    revert with 0, 17
                if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 <= 100 * ext_call.return_data[128]:
                    if 11 > !ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 320 > !(64 * ext_call.return_data[64] + 11):
                        revert with 0, 17
                    if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 11 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 9 > !sub_54341980[stor4[arg1]].field_256:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 0, 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 1 > !(64 * ext_call.return_data[0] + 11):
                            revert with 0, 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if ext_call.return_data[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 < 100 * ext_call.return_data[128]:
                        revert with 0, 17
                    if ext_call.return_data[96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]):
                        revert with 0, 18
                    if 1 > !(1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128])):
                        revert with 0, 17
                    if 11 > !ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 320 > !(64 * ext_call.return_data[64] + 11):
                        revert with 0, 17
                    if (64 * ext_call.return_data[64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 11 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 9 > !sub_54341980[stor4[arg1]].field_256:
                        revert with 0, 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 1 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 0, 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 1 > !(64 * ext_call.return_data[0] + 11):
                            revert with 0, 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 > !(64 * sub_54341980[stor4[arg1]].field_256 + 9):
                            revert with 0, 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 0, 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 0, 17
                        if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 0, 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                revert with 0, 'Maximum amount of NOTSNO have been minted'
                            if not stor8:
                                revert with 0, 'Claiming is not available'
                            if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                revert with 0, 17
                            sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_3b1be07aAddress)
                            call sub_3b1be07aAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 0, 17
                            if sub_54341980[stor4[arg1]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 0, 18
                            if 1 > !(1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)):
                                revert with 0, 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 0, 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 0, 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 0, 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                if sub_b22a371b + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_fd6cbeca:
                                    revert with 0, 'Maximum amount of NOTSNO have been minted'
                                if not stor8:
                                    revert with 0, 'Claiming is not available'
                                if sub_b22a371b > !(10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1):
                                    revert with 0, 17
                                sub_b22a371b += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_3b1be07aAddress)
                                call sub_3b1be07aAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    sub_9ebe48c7[arg1] = block.timestamp
    sub_5553f351[arg1] = arg2
}

function sub_de866bd0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor8:
        revert with 0, 'Claiming is not available'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_6f16fd5dAddress)
        staticcall sub_6f16fd5dAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            _271 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_271] == mem[_271 + 12 len 20]
            if mem[_271 + 12 len 20] != msg.sender:
                revert with 0, 'You can only claim rewards for NotOwls you own.'
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                else:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 5
                    if 0 == sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                        if idx == -1:
                            revert with 0, 17
                        else:
                            idx = idx + 1
                            continue 
                    else:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        else:
                            if sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 4
                                require ext_code.size(sub_6f16fd5dAddress)
                                staticcall sub_6f16fd5dAddress.0xe926ca95 with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _286 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 160
                                    _287 = mem[64]
                                    if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                                        revert with 0, 65
                                    else:
                                        mem[64] = mem[64] + 160
                                        mem[_287] = mem[_286]
                                        mem[_287 + 32] = mem[_286 + 32]
                                        mem[_287 + 64] = mem[_286 + 64]
                                        mem[_287 + 96] = mem[_286 + 96]
                                        mem[_287 + 128] = mem[_286 + 128]
                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                            revert with 0, 50
                                        else:
                                            mem[0] = 3
                                            _295 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_295] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                            mem[_295 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                            mem[_295 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                            mem[_295 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                            mem[_295 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                            mem[_295 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                            if 11 > !sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512:
                                                revert with 0, 17
                                            else:
                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                else:
                                                    if 320 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11):
                                                        revert with 0, 17
                                                    else:
                                                        if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                            revert with 0, 17
                                                        else:
                                                            if 11 > !sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0:
                                                                revert with 0, 17
                                                            else:
                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                    revert with 0, 17
                                                                else:
                                                                    if 9 > !mem[_287 + 32]:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if mem[_287 + 32] + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 <= 64 * mem[_287 + 32] + 9:
                                                                                if 1 > !(64 * mem[_287 + 32] + 9):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if (64 * mem[_287 + 32] + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if not 2 * (64 * mem[_287 + 32] + 9) + 1:
                                                                                                revert with 0, 18
                                                                                            else:
                                                                                                if (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 and 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_287 + 32] + 9) + 1 > -1 / (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if mem[_287 + 128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_287 + 32] + 9) + 1 / 2000 > 100 * mem[_287 + 128]:
                                                                                                            if mem[_287 + 128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_287 + 32] + 9) + 1 / 2000 < 100 * mem[_287 + 128]:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if mem[_287 + 96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_287 + 32] + 9) + 1 / 2000) - (100 * mem[_287 + 128]):
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if 1 > !(1000 * mem[_287 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_287 + 32] + 9) + 1 / 2000) - (100 * mem[_287 + 128])):
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                _307 = mem[_287 + 64]
                                                                                                                                if 11 > !mem[_287 + 64]:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if mem[_287 + 64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if 320 > !(64 * mem[_287 + 64] + 11):
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            if (64 * mem[_287 + 64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                _313 = mem[_287]
                                                                                                                                                if 11 > !mem[_287]:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if mem[_287] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if 9 > !sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if 64 * mem[_287] + 11 <= 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                                                                                                                                                                    if 1 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9):
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if 64 * mem[_287] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1:
                                                                                                                                                                                    revert with 0, 18
                                                                                                                                                                                else:
                                                                                                                                                                                    if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 and 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > -1 / (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if not ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                                revert with 0, 18
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if 1 > !(1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)):
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if 1000 * mem[_287 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_287 + 32] + 9) + 1 / 2000) - (100 * mem[_287 + 128]) >= 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                        mem[32] = 5
                                                                                                                                                                                                                        if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _307 + 11) + 320000 / 640 * 1000 * 64 * _313 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                                                revert with 0, 18
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                _471 = mem[64]
                                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                                mem[_471] = 0
                                                                                                                                                                                                                                mem[_471 + 32] = 0
                                                                                                                                                                                                                                mem[_471 + 64] = 0
                                                                                                                                                                                                                                mem[_471 + 96] = 0
                                                                                                                                                                                                                                mem[_471 + 128] = 0
                                                                                                                                                                                                                                mem[_471 + 160] = 0
                                                                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                                                                    _480 = mem[64]
                                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                                    mem[_480] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                                    mem[_480 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                                    mem[_480 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                                    mem[_480 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                                    mem[_480 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                                    mem[_480 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _307 + 11) + 320000 / 640 * 1000 * 64 * _313 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _307 + 11) + 320000 / 640 * 1000 * 64 * _313 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _307 + 11) + 320000 / 640 * 1000 * 64 * _313 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1):
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                        mem[32] = 5
                                                                                                                                                                                                                        if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            _472 = mem[64]
                                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                                            mem[_472] = 0
                                                                                                                                                                                                                            mem[_472 + 32] = 0
                                                                                                                                                                                                                            mem[_472 + 64] = 0
                                                                                                                                                                                                                            mem[_472 + 96] = 0
                                                                                                                                                                                                                            mem[_472 + 128] = 0
                                                                                                                                                                                                                            mem[_472 + 160] = 0
                                                                                                                                                                                                                            mem[32] = 4
                                                                                                                                                                                                                            if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                mem[0] = 3
                                                                                                                                                                                                                                _482 = mem[64]
                                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                                mem[_482] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                                mem[_482 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                                mem[_482 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                                mem[_482 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                                mem[_482 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                                mem[_482 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                                mem[32] = 5
                                                                                                                                                                                                                                                sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                                if idx == -1:
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                                                                                                    continue 
                                                                                                                                                                                            else:
                                                                                                                                                                                                if (1000 * mem[_287 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_287 + 32] + 9) + 1 / 2000) - (100 * mem[_287 + 128])) + 1 >= 999999999999999:
                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        _373 = mem[64]
                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                        mem[_373] = 0
                                                                                                                                                                                                        mem[_373 + 32] = 0
                                                                                                                                                                                                        mem[_373 + 64] = 0
                                                                                                                                                                                                        mem[_373 + 96] = 0
                                                                                                                                                                                                        mem[_373 + 128] = 0
                                                                                                                                                                                                        mem[_373 + 160] = 0
                                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                                            _386 = mem[64]
                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                            mem[_386] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                            mem[_386 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                            mem[_386 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                            mem[_386 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                            mem[_386 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                            mem[_386 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                continue 
                                                                                                                                                                                                else:
                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        _374 = mem[64]
                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                        mem[_374] = 0
                                                                                                                                                                                                        mem[_374 + 32] = 0
                                                                                                                                                                                                        mem[_374 + 64] = 0
                                                                                                                                                                                                        mem[_374 + 96] = 0
                                                                                                                                                                                                        mem[_374 + 128] = 0
                                                                                                                                                                                                        mem[_374 + 160] = 0
                                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                                            _388 = mem[64]
                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                            mem[_388] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                            mem[_388 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                            mem[_388 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                            mem[_388 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                            mem[_388 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                            mem[_388 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                continue 
                                                                                                                                                                else:
                                                                                                                                                                    if 1 > !(64 * mem[_287] + 11):
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if (64 * mem[_287] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if 2 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9):
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                else:
                                                                                                                                                                                    if not 2 * (64 * mem[_287] + 11) + 1:
                                                                                                                                                                                        revert with 0, 18
                                                                                                                                                                                    else:
                                                                                                                                                                                        if 1000 < (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1:
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1) + 1000 > -1 / (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640:
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if (1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if (1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if not ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                                        revert with 0, 18
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if 1 > !(1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)):
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if 1000 * mem[_287 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_287 + 32] + 9) + 1 / 2000) - (100 * mem[_287 + 128]) >= 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                mem[32] = 5
                                                                                                                                                                                                                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _307 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _313 + 11) + 1 * (1000 * 64 * _307 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                                                        revert with 0, 18
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        _495 = mem[64]
                                                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                                                        mem[_495] = 0
                                                                                                                                                                                                                                        mem[_495 + 32] = 0
                                                                                                                                                                                                                                        mem[_495 + 64] = 0
                                                                                                                                                                                                                                        mem[_495 + 96] = 0
                                                                                                                                                                                                                                        mem[_495 + 128] = 0
                                                                                                                                                                                                                                        mem[_495 + 160] = 0
                                                                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                                                                            _504 = mem[64]
                                                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                                                            mem[_504] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                                            mem[_504 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                                            mem[_504 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                                            mem[_504 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                                            mem[_504 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                                            mem[_504 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _307 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _313 + 11) + 1 * (1000 * 64 * _307 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _307 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _313 + 11) + 1 * (1000 * 64 * _307 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _307 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _313 + 11) + 1 * (1000 * 64 * _307 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1):
                                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                                                continue 
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                mem[32] = 5
                                                                                                                                                                                                                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    _496 = mem[64]
                                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                                    mem[_496] = 0
                                                                                                                                                                                                                                    mem[_496 + 32] = 0
                                                                                                                                                                                                                                    mem[_496 + 64] = 0
                                                                                                                                                                                                                                    mem[_496 + 96] = 0
                                                                                                                                                                                                                                    mem[_496 + 128] = 0
                                                                                                                                                                                                                                    mem[_496 + 160] = 0
                                                                                                                                                                                                                                    mem[32] = 4
                                                                                                                                                                                                                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[0] = 3
                                                                                                                                                                                                                                        _506 = mem[64]
                                                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                                                        mem[_506] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                                        mem[_506 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                                        mem[_506 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                                        mem[_506 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                                        mem[_506 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                                        mem[_506 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                                        mem[32] = 5
                                                                                                                                                                                                                                                        sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                                        if idx == -1:
                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if (1000 * mem[_287 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_287 + 32] + 9) + 1 / 2000) - (100 * mem[_287 + 128])) + 1 >= 999999999999999:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _403 = mem[64]
                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                mem[_403] = 0
                                                                                                                                                                                                                mem[_403 + 32] = 0
                                                                                                                                                                                                                mem[_403 + 64] = 0
                                                                                                                                                                                                                mem[_403 + 96] = 0
                                                                                                                                                                                                                mem[_403 + 128] = 0
                                                                                                                                                                                                                mem[_403 + 160] = 0
                                                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                                                    _423 = mem[64]
                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                    mem[_423] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                    mem[_423 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                    mem[_423 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                    mem[_423 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                    mem[_423 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                    mem[_423 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _404 = mem[64]
                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                mem[_404] = 0
                                                                                                                                                                                                                mem[_404 + 32] = 0
                                                                                                                                                                                                                mem[_404 + 64] = 0
                                                                                                                                                                                                                mem[_404 + 96] = 0
                                                                                                                                                                                                                mem[_404 + 128] = 0
                                                                                                                                                                                                                mem[_404 + 160] = 0
                                                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                                                    _425 = mem[64]
                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                    mem[_425] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                    mem[_425 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                    mem[_425 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                    mem[_425 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                    mem[_425 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                    mem[_425 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                        continue 
                                                                                                        else:
                                                                                                            _301 = mem[_287 + 64]
                                                                                                            if 11 > !mem[_287 + 64]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if mem[_287 + 64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if 320 > !(64 * mem[_287 + 64] + 11):
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if (64 * mem[_287 + 64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            _308 = mem[_287]
                                                                                                                            if 11 > !mem[_287]:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if mem[_287] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 9 > !sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            if 64 * mem[_287] + 11 <= 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                                                                                                                                                if 1 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if 64 * mem[_287] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1:
                                                                                                                                                                revert with 0, 18
                                                                                                                                                            else:
                                                                                                                                                                if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 and 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > -1 / (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                else:
                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if not ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                            revert with 0, 18
                                                                                                                                                                                        else:
                                                                                                                                                                                            if 1 > !(1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)):
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if 999999999999999 >= (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _301 + 11) + 320000 / 640 * 1000 * 64 * _308 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                            revert with 0, 18
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            _375 = mem[64]
                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                            mem[_375] = 0
                                                                                                                                                                                                            mem[_375 + 32] = 0
                                                                                                                                                                                                            mem[_375 + 64] = 0
                                                                                                                                                                                                            mem[_375 + 96] = 0
                                                                                                                                                                                                            mem[_375 + 128] = 0
                                                                                                                                                                                                            mem[_375 + 160] = 0
                                                                                                                                                                                                            mem[32] = 4
                                                                                                                                                                                                            if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                mem[0] = 3
                                                                                                                                                                                                                _390 = mem[64]
                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                mem[_390] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                mem[_390 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                mem[_390 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                mem[_390 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                mem[_390 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                mem[_390 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _301 + 11) + 320000 / 640 * 1000 * 64 * _308 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _301 + 11) + 320000 / 640 * 1000 * 64 * _308 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _301 + 11) + 320000 / 640 * 1000 * 64 * _308 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1):
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                mem[32] = 5
                                                                                                                                                                                                                                sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                if idx == -1:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                                                                                    continue 
                                                                                                                                                                                                else:
                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        _376 = mem[64]
                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                        mem[_376] = 0
                                                                                                                                                                                                        mem[_376 + 32] = 0
                                                                                                                                                                                                        mem[_376 + 64] = 0
                                                                                                                                                                                                        mem[_376 + 96] = 0
                                                                                                                                                                                                        mem[_376 + 128] = 0
                                                                                                                                                                                                        mem[_376 + 160] = 0
                                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                                            _392 = mem[64]
                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                            mem[_392] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                            mem[_392 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                            mem[_392 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                            mem[_392 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                            mem[_392 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                            mem[_392 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                continue 
                                                                                                                                                                        else:
                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                _329 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                mem[_329] = 0
                                                                                                                                                                                mem[_329 + 32] = 0
                                                                                                                                                                                mem[_329 + 64] = 0
                                                                                                                                                                                mem[_329 + 96] = 0
                                                                                                                                                                                mem[_329 + 128] = 0
                                                                                                                                                                                mem[_329 + 160] = 0
                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                    _335 = mem[64]
                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                    mem[_335] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                    mem[_335 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                    mem[_335 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                    mem[_335 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                    mem[_335 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                    mem[_335 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                else:
                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                        continue 
                                                                                                                                            else:
                                                                                                                                                if 1 > !(64 * mem[_287] + 11):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if (64 * mem[_287] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if 2 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9):
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if not 2 * (64 * mem[_287] + 11) + 1:
                                                                                                                                                                    revert with 0, 18
                                                                                                                                                                else:
                                                                                                                                                                    if 1000 < (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1) + 1000 > -1 / (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                if (1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if (1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if not ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                    revert with 0, 18
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if 1 > !(1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)):
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if 999999999999999 >= (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _301 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _308 + 11) + 1 * (1000 * 64 * _301 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                                    revert with 0, 18
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    _405 = mem[64]
                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                    mem[_405] = 0
                                                                                                                                                                                                                    mem[_405 + 32] = 0
                                                                                                                                                                                                                    mem[_405 + 64] = 0
                                                                                                                                                                                                                    mem[_405 + 96] = 0
                                                                                                                                                                                                                    mem[_405 + 128] = 0
                                                                                                                                                                                                                    mem[_405 + 160] = 0
                                                                                                                                                                                                                    mem[32] = 4
                                                                                                                                                                                                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        mem[0] = 3
                                                                                                                                                                                                                        _427 = mem[64]
                                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                                        mem[_427] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                        mem[_427 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                        mem[_427 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                        mem[_427 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                        mem[_427 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                        mem[_427 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _301 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _308 + 11) + 1 * (1000 * 64 * _301 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _301 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _308 + 11) + 1 * (1000 * 64 * _301 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _301 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _308 + 11) + 1 * (1000 * 64 * _301 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1):
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                        mem[32] = 5
                                                                                                                                                                                                                                        sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                        if idx == -1:
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _406 = mem[64]
                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                mem[_406] = 0
                                                                                                                                                                                                                mem[_406 + 32] = 0
                                                                                                                                                                                                                mem[_406 + 64] = 0
                                                                                                                                                                                                                mem[_406 + 96] = 0
                                                                                                                                                                                                                mem[_406 + 128] = 0
                                                                                                                                                                                                                mem[_406 + 160] = 0
                                                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                                                    _429 = mem[64]
                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                    mem[_429] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                    mem[_429 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                    mem[_429 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                    mem[_429 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                    mem[_429 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                    mem[_429 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        _340 = mem[64]
                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                        mem[_340] = 0
                                                                                                                                                                                        mem[_340 + 32] = 0
                                                                                                                                                                                        mem[_340 + 64] = 0
                                                                                                                                                                                        mem[_340 + 96] = 0
                                                                                                                                                                                        mem[_340 + 128] = 0
                                                                                                                                                                                        mem[_340 + 160] = 0
                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                        else:
                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                            _351 = mem[64]
                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                            mem[_351] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                            mem[_351 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                            mem[_351 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                            mem[_351 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                            mem[_351 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                            mem[_351 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                continue 
                                                                            else:
                                                                                if 1 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        if 2 > !(64 * mem[_287 + 32] + 9):
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (64 * mem[_287 + 32] + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1:
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 1000 < (1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 and -((1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1) + 1000 > -1 / (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if mem[_287 + 128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000 > 100 * mem[_287 + 128]:
                                                                                                                    if mem[_287 + 128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if (1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000 < 100 * mem[_287 + 128]:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if mem[_287 + 96] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if not ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_287 + 128]):
                                                                                                                                    revert with 0, 18
                                                                                                                                else:
                                                                                                                                    if 1 > !(1000 * mem[_287 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_287 + 128])):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        _310 = mem[_287 + 64]
                                                                                                                                        if 11 > !mem[_287 + 64]:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            if mem[_287 + 64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if 320 > !(64 * mem[_287 + 64] + 11):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if (64 * mem[_287 + 64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        _315 = mem[_287]
                                                                                                                                                        if 11 > !mem[_287]:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if mem[_287] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if 9 > !sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if 64 * mem[_287] + 11 <= 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                                                                                                                                                                            if 1 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9):
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                else:
                                                                                                                                                                                    if 64 * mem[_287] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1:
                                                                                                                                                                                            revert with 0, 18
                                                                                                                                                                                        else:
                                                                                                                                                                                            if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 and 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > -1 / (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640:
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if not ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                                        revert with 0, 18
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if 1 > !(1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)):
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if 1000 * mem[_287 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_287 + 128]) >= 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                mem[32] = 5
                                                                                                                                                                                                                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _310 + 11) + 320000 / 640 * 1000 * 64 * _315 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                                                        revert with 0, 18
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        _497 = mem[64]
                                                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                                                        mem[_497] = 0
                                                                                                                                                                                                                                        mem[_497 + 32] = 0
                                                                                                                                                                                                                                        mem[_497 + 64] = 0
                                                                                                                                                                                                                                        mem[_497 + 96] = 0
                                                                                                                                                                                                                                        mem[_497 + 128] = 0
                                                                                                                                                                                                                                        mem[_497 + 160] = 0
                                                                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                                                                            _508 = mem[64]
                                                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                                                            mem[_508] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                                            mem[_508 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                                            mem[_508 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                                            mem[_508 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                                            mem[_508 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                                            mem[_508 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _310 + 11) + 320000 / 640 * 1000 * 64 * _315 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _310 + 11) + 320000 / 640 * 1000 * 64 * _315 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _310 + 11) + 320000 / 640 * 1000 * 64 * _315 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1):
                                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                                                continue 
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                mem[32] = 5
                                                                                                                                                                                                                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    _498 = mem[64]
                                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                                    mem[_498] = 0
                                                                                                                                                                                                                                    mem[_498 + 32] = 0
                                                                                                                                                                                                                                    mem[_498 + 64] = 0
                                                                                                                                                                                                                                    mem[_498 + 96] = 0
                                                                                                                                                                                                                                    mem[_498 + 128] = 0
                                                                                                                                                                                                                                    mem[_498 + 160] = 0
                                                                                                                                                                                                                                    mem[32] = 4
                                                                                                                                                                                                                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[0] = 3
                                                                                                                                                                                                                                        _510 = mem[64]
                                                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                                                        mem[_510] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                                        mem[_510 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                                        mem[_510 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                                        mem[_510 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                                        mem[_510 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                                        mem[_510 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                                        mem[32] = 5
                                                                                                                                                                                                                                                        sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                                        if idx == -1:
                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if (1000 * mem[_287 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_287 + 128])) + 1 >= 999999999999999:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _407 = mem[64]
                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                mem[_407] = 0
                                                                                                                                                                                                                mem[_407 + 32] = 0
                                                                                                                                                                                                                mem[_407 + 64] = 0
                                                                                                                                                                                                                mem[_407 + 96] = 0
                                                                                                                                                                                                                mem[_407 + 128] = 0
                                                                                                                                                                                                                mem[_407 + 160] = 0
                                                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                                                    _431 = mem[64]
                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                    mem[_431] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                    mem[_431 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                    mem[_431 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                    mem[_431 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                    mem[_431 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                    mem[_431 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _408 = mem[64]
                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                mem[_408] = 0
                                                                                                                                                                                                                mem[_408 + 32] = 0
                                                                                                                                                                                                                mem[_408 + 64] = 0
                                                                                                                                                                                                                mem[_408 + 96] = 0
                                                                                                                                                                                                                mem[_408 + 128] = 0
                                                                                                                                                                                                                mem[_408 + 160] = 0
                                                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                                                    _433 = mem[64]
                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                    mem[_433] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                    mem[_433 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                    mem[_433 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                    mem[_433 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                    mem[_433 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                    mem[_433 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                        continue 
                                                                                                                                                                        else:
                                                                                                                                                                            if 1 > !(64 * mem[_287] + 11):
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                if (64 * mem[_287] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                else:
                                                                                                                                                                                    if 2 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9):
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            if not 2 * (64 * mem[_287] + 11) + 1:
                                                                                                                                                                                                revert with 0, 18
                                                                                                                                                                                            else:
                                                                                                                                                                                                if 1000 < (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1:
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1) + 1000 > -1 / (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if (1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if (1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if not ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                                                revert with 0, 18
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if 1 > !(1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)):
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if 1000 * mem[_287 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_287 + 128]) >= 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                        mem[32] = 5
                                                                                                                                                                                                                                        if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _310 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _315 + 11) + 1 * (1000 * 64 * _310 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                                                                revert with 0, 18
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                _519 = mem[64]
                                                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                                                mem[_519] = 0
                                                                                                                                                                                                                                                mem[_519 + 32] = 0
                                                                                                                                                                                                                                                mem[_519 + 64] = 0
                                                                                                                                                                                                                                                mem[_519 + 96] = 0
                                                                                                                                                                                                                                                mem[_519 + 128] = 0
                                                                                                                                                                                                                                                mem[_519 + 160] = 0
                                                                                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                                                                                    _526 = mem[64]
                                                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                                                    mem[_526] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                                                    mem[_526 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                                                    mem[_526 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                                                    mem[_526 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                                                    mem[_526 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                                                    mem[_526 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _310 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _315 + 11) + 1 * (1000 * 64 * _310 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _310 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _315 + 11) + 1 * (1000 * 64 * _310 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _310 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _315 + 11) + 1 * (1000 * 64 * _310 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1):
                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                        mem[32] = 5
                                                                                                                                                                                                                                        if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            _520 = mem[64]
                                                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                                                            mem[_520] = 0
                                                                                                                                                                                                                                            mem[_520 + 32] = 0
                                                                                                                                                                                                                                            mem[_520 + 64] = 0
                                                                                                                                                                                                                                            mem[_520 + 96] = 0
                                                                                                                                                                                                                                            mem[_520 + 128] = 0
                                                                                                                                                                                                                                            mem[_520 + 160] = 0
                                                                                                                                                                                                                                            mem[32] = 4
                                                                                                                                                                                                                                            if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                mem[0] = 3
                                                                                                                                                                                                                                                _528 = mem[64]
                                                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                                                mem[_528] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                                                mem[_528 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                                                mem[_528 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                                                mem[_528 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                                                mem[_528 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                                                mem[_528 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                                                mem[32] = 5
                                                                                                                                                                                                                                                                sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                                                if idx == -1:
                                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                                                                                                                    continue 
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if (1000 * mem[_287 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_287 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_287 + 128])) + 1 >= 999999999999999:
                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        _447 = mem[64]
                                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                                        mem[_447] = 0
                                                                                                                                                                                                                        mem[_447 + 32] = 0
                                                                                                                                                                                                                        mem[_447 + 64] = 0
                                                                                                                                                                                                                        mem[_447 + 96] = 0
                                                                                                                                                                                                                        mem[_447 + 128] = 0
                                                                                                                                                                                                                        mem[_447 + 160] = 0
                                                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                                                            _464 = mem[64]
                                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                                            mem[_464] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                            mem[_464 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                            mem[_464 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                            mem[_464 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                            mem[_464 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                            mem[_464 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                                continue 
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        _448 = mem[64]
                                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                                        mem[_448] = 0
                                                                                                                                                                                                                        mem[_448 + 32] = 0
                                                                                                                                                                                                                        mem[_448 + 64] = 0
                                                                                                                                                                                                                        mem[_448 + 96] = 0
                                                                                                                                                                                                                        mem[_448 + 128] = 0
                                                                                                                                                                                                                        mem[_448 + 160] = 0
                                                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                                                            _466 = mem[64]
                                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                                            mem[_466] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                            mem[_466 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                            mem[_466 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                            mem[_466 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                            mem[_466 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                            mem[_466 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                                continue 
                                                                                                                else:
                                                                                                                    _305 = mem[_287 + 64]
                                                                                                                    if 11 > !mem[_287 + 64]:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if mem[_287 + 64] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if 320 > !(64 * mem[_287 + 64] + 11):
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if (64 * mem[_287 + 64] + 11) + 320 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    _311 = mem[_287]
                                                                                                                                    if 11 > !mem[_287]:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if mem[_287] + 11 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            if 9 > !sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > 0x3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if 64 * mem[_287] + 11 <= 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                                                                                                                                                        if 1 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9):
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if 64 * mem[_287] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1:
                                                                                                                                                                        revert with 0, 18
                                                                                                                                                                    else:
                                                                                                                                                                        if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 and 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > -1 / (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if not ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                    revert with 0, 18
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if 1 > !(1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)):
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if 999999999999999 >= (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_287] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _305 + 11) + 320000 / 640 * 1000 * 64 * _311 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                                    revert with 0, 18
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    _409 = mem[64]
                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                    mem[_409] = 0
                                                                                                                                                                                                                    mem[_409 + 32] = 0
                                                                                                                                                                                                                    mem[_409 + 64] = 0
                                                                                                                                                                                                                    mem[_409 + 96] = 0
                                                                                                                                                                                                                    mem[_409 + 128] = 0
                                                                                                                                                                                                                    mem[_409 + 160] = 0
                                                                                                                                                                                                                    mem[32] = 4
                                                                                                                                                                                                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        mem[0] = 3
                                                                                                                                                                                                                        _435 = mem[64]
                                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                                        mem[_435] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                        mem[_435 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                        mem[_435 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                        mem[_435 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                        mem[_435 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                        mem[_435 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _305 + 11) + 320000 / 640 * 1000 * 64 * _311 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _305 + 11) + 320000 / 640 * 1000 * 64 * _311 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _305 + 11) + 320000 / 640 * 1000 * 64 * _311 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1):
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                        mem[32] = 5
                                                                                                                                                                                                                                        sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                        if idx == -1:
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _410 = mem[64]
                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                mem[_410] = 0
                                                                                                                                                                                                                mem[_410 + 32] = 0
                                                                                                                                                                                                                mem[_410 + 64] = 0
                                                                                                                                                                                                                mem[_410 + 96] = 0
                                                                                                                                                                                                                mem[_410 + 128] = 0
                                                                                                                                                                                                                mem[_410 + 160] = 0
                                                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                                                    _437 = mem[64]
                                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                                    mem[_437] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                    mem[_437 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                    mem[_437 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                    mem[_437 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                    mem[_437 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                    mem[_437 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        _342 = mem[64]
                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                        mem[_342] = 0
                                                                                                                                                                                        mem[_342 + 32] = 0
                                                                                                                                                                                        mem[_342 + 64] = 0
                                                                                                                                                                                        mem[_342 + 96] = 0
                                                                                                                                                                                        mem[_342 + 128] = 0
                                                                                                                                                                                        mem[_342 + 160] = 0
                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                        else:
                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                            _353 = mem[64]
                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                            mem[_353] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                            mem[_353 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                            mem[_353 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                            mem[_353 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                            mem[_353 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                            mem[_353 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                continue 
                                                                                                                                                    else:
                                                                                                                                                        if 1 > !(64 * mem[_287] + 11):
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if (64 * mem[_287] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if 2 > !(64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9):
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if not 2 * (64 * mem[_287] + 11) + 1:
                                                                                                                                                                            revert with 0, 18
                                                                                                                                                                        else:
                                                                                                                                                                            if 1000 < (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                if (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1) + 1000 > -1 / (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640:
                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                else:
                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if (1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if (1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if not ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                                                                                                                                                                                            revert with 0, 18
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if 1 > !(1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)):
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if 999999999999999 >= (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_287] + 11) + 1 * (1000 * 64 * mem[_287 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _305 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _311 + 11) + 1 * (1000 * 64 * _305 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                                                                                                                                                                                                            revert with 0, 18
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            _449 = mem[64]
                                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                                            mem[_449] = 0
                                                                                                                                                                                                                            mem[_449 + 32] = 0
                                                                                                                                                                                                                            mem[_449 + 64] = 0
                                                                                                                                                                                                                            mem[_449 + 96] = 0
                                                                                                                                                                                                                            mem[_449 + 128] = 0
                                                                                                                                                                                                                            mem[_449 + 160] = 0
                                                                                                                                                                                                                            mem[32] = 4
                                                                                                                                                                                                                            if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                mem[0] = 3
                                                                                                                                                                                                                                _468 = mem[64]
                                                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                                                mem[_468] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                                mem[_468 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                                mem[_468 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                                mem[_468 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                                mem[_468 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                                mem[_468 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _305 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _311 + 11) + 1 * (1000 * 64 * _305 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _305 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _311 + 11) + 1 * (1000 * 64 * _305 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _305 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _311 + 11) + 1 * (1000 * 64 * _305 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1):
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                                mem[32] = 5
                                                                                                                                                                                                                                                sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                                if idx == -1:
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                                                                                                    continue 
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                    if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        _450 = mem[64]
                                                                                                                                                                                                                        mem[64] = mem[64] + 192
                                                                                                                                                                                                                        mem[_450] = 0
                                                                                                                                                                                                                        mem[_450 + 32] = 0
                                                                                                                                                                                                                        mem[_450 + 64] = 0
                                                                                                                                                                                                                        mem[_450 + 96] = 0
                                                                                                                                                                                                                        mem[_450 + 128] = 0
                                                                                                                                                                                                                        mem[_450 + 160] = 0
                                                                                                                                                                                                                        mem[32] = 4
                                                                                                                                                                                                                        if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[0] = 3
                                                                                                                                                                                                                            _470 = mem[64]
                                                                                                                                                                                                                            mem[64] = mem[64] + 192
                                                                                                                                                                                                                            mem[_470] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                                            mem[_470 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                                            mem[_470 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                                            mem[_470 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                                            mem[_470 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                                            mem[_470 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if idx >= ('cd', 4).length:
                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                                                                            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                                continue 
                                                                                                                                                                                        else:
                                                                                                                                                                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                            mem[32] = 5
                                                                                                                                                                                            if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                _360 = mem[64]
                                                                                                                                                                                                mem[64] = mem[64] + 192
                                                                                                                                                                                                mem[_360] = 0
                                                                                                                                                                                                mem[_360 + 32] = 0
                                                                                                                                                                                                mem[_360 + 64] = 0
                                                                                                                                                                                                mem[_360 + 96] = 0
                                                                                                                                                                                                mem[_360 + 128] = 0
                                                                                                                                                                                                mem[_360 + 160] = 0
                                                                                                                                                                                                mem[32] = 4
                                                                                                                                                                                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                else:
                                                                                                                                                                                                    mem[0] = 3
                                                                                                                                                                                                    _372 = mem[64]
                                                                                                                                                                                                    mem[64] = mem[64] + 192
                                                                                                                                                                                                    mem[_372] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                                                                                                                                                                                    mem[_372 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                                                                                                                                                                                    mem[_372 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                                                                                                                                                                                    mem[_372 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                                                                                                                                                                                    mem[_372 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                                                                                                                                                                                    mem[_372 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                                                                                                                                                                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if 0 > !(10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999):
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if idx >= ('cd', 4).length:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                                                                                                                                                                                    mem[32] = 5
                                                                                                                                                                                                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                                                                                                                                                                                                    if idx == -1:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                        continue 
                            else:
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                else:
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 5
                                    sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                                    if idx == -1:
                                        revert with 0, 17
                                    else:
                                        idx = idx + 1
                                        continue 
    if sub_b22a371b > -1:
        revert with 0, 17
    if sub_b22a371b >= sub_fd6cbeca:
        revert with 0, 'Maximum amount of NOTSNO have been minted'
    if not stor8:
        revert with 0, 'Claiming is not available'
    if sub_b22a371b > -1:
        revert with 0, 17
    require ext_code.size(sub_3b1be07aAddress)
    call sub_3b1be07aAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
