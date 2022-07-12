contract main {




// =====================  Runtime code  =====================


#
#  - sub_42681fc1(?)
#
address owner;
array of struct stor1;
address sub_a4679264Address;
uint256 sub_39ddbc8c;
address tokenAddress;
address sub_bbacaac3Address;
address sub_246fa74dAddress;
address sub_51bf1352Address;
address sub_871c1a72Address;
address sub_808f5322Address;
address sub_a72f8755Address;
uint256 sub_d21e582c;
uint256 sub_dac6266d;
uint256 sub_948c7f09;
uint256 sub_c0786ca8;
uint256 sub_73452301;
uint256 sub_556d9aa9;

function sub_246fa74d(?) payable {
    return sub_246fa74dAddress
}

function sub_39ddbc8c(?) payable {
    return sub_39ddbc8c
}

function sub_51bf1352(?) payable {
    return sub_51bf1352Address
}

function sub_556d9aa9(?) payable {
    return sub_556d9aa9
}

function sub_73452301(?) payable {
    return sub_73452301
}

function sub_808f5322(?) payable {
    return sub_808f5322Address
}

function sub_871c1a72(?) payable {
    return sub_871c1a72Address
}

function owner() payable {
    return owner
}

function sub_948c7f09(?) payable {
    return sub_948c7f09
}

function tokenAddress() payable {
    return tokenAddress
}

function sub_a4679264(?) payable {
    return sub_a4679264Address
}

function sub_a72f8755(?) payable {
    return sub_a72f8755Address
}

function sub_bbacaac3(?) payable {
    return sub_bbacaac3Address
}

function sub_c0786ca8(?) payable {
    return sub_c0786ca8
}

function sub_d21e582c(?) payable {
    return sub_d21e582c
}

function sub_dac6266d(?) payable {
    return sub_dac6266d
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

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function sub_46d168b9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if sub_246fa74dAddress != msg.sender:
        revert with 0, 'Only QI can set active'
    if not arg1:
        sub_dac6266d = 0
    else:
        sub_dac6266d = 1
}

function sub_58650326(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if sub_808f5322Address != msg.sender:
        revert with 0, 'Only HAO can set active'
    if not arg1:
        sub_73452301 = 0
    else:
        sub_73452301 = 1
}

function sub_7e13b69a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if sub_bbacaac3Address != msg.sender:
        revert with 0, 'Only FAN can set active'
    if not arg1:
        sub_d21e582c = 0
    else:
        sub_d21e582c = 1
}

function sub_92da0b2b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if sub_a72f8755Address != msg.sender:
        revert with 0, 'Only BAI can set active'
    if not arg1:
        sub_556d9aa9 = 0
    else:
        sub_556d9aa9 = 1
}

function sub_14551d4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if sub_871c1a72Address != msg.sender:
        revert with 0, 'Only ZHEN can set active'
    if not arg1:
        sub_c0786ca8 = 0
    else:
        sub_c0786ca8 = 1
}

function sub_271b92b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if sub_51bf1352Address != msg.sender:
        revert with 0, 'Only QIANG can set active'
    if not arg1:
        sub_948c7f09 = 0
    else:
        sub_948c7f09 = 1
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

function setAddress(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bbacaac3Address = arg1
    sub_246fa74dAddress = arg2
    sub_51bf1352Address = arg3
    sub_871c1a72Address = arg4
    sub_808f5322Address = arg5
    sub_a72f8755Address = arg6
}

function sub_b9d2d32c(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_d21e582c > !sub_dac6266d:
        revert with 0, 17
    if sub_d21e582c + sub_dac6266d > !sub_948c7f09:
        revert with 0, 17
    if sub_d21e582c + sub_dac6266d + sub_948c7f09 > !sub_c0786ca8:
        revert with 0, 17
    if sub_d21e582c + sub_dac6266d + sub_948c7f09 + sub_c0786ca8 > !sub_73452301:
        revert with 0, 17
    if sub_d21e582c + sub_dac6266d + sub_948c7f09 + sub_c0786ca8 + sub_73452301 > !sub_556d9aa9:
        revert with 0, 17
    if sub_d21e582c + sub_dac6266d + sub_948c7f09 + sub_c0786ca8 + sub_73452301 + sub_556d9aa9 < 4:
        revert with 0, 'Not enough active nodes'
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_a4679264Address, sub_39ddbc8c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b120db32(?) payable {
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor1.length):
            if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if not bool(stor1.length) - (stor1.length.field_1 < 32):
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if not bool(stor1.length) - (stor1.length.field_1 < 32):
        revert with 0, 34
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if not bool(stor1.length) - (stor1.length.field_1 < 32):
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
