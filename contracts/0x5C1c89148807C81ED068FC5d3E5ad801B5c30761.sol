contract main {




// =====================  Runtime code  =====================


address owner;
address sub_06b3613fAddress;
address VMAddress;
uint256 changePrice;
mapping of struct stor4;

function sub_06b3613f(?) payable {
    return sub_06b3613fAddress
}

function ChangePrice() payable {
    return changePrice
}

function owner() payable {
    return owner
}

function VM() payable {
    return VMAddress
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

function sub_c09d5c28(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    changePrice = arg1
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

function sub_3c5e87d2(?) payable {
    require calldata.size - 4 >= 32
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1].field_0):
                if 31 < uint255(stor4[arg1].field_0) * 0.5:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor4[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_0), data=mem[128 len ceil32(uint255(stor4[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor4[arg1].field_8
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 0, 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_0), data=mem[128 len ceil32(uint255(stor4[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor4[arg1].field_8
        mem[ceil32(uint255(stor4[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor4[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor4[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor4[arg1].field_0) * 0.5) > uint255(stor4[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor4[arg1].field_0) * 0.5) + (uint255(stor4[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4[arg1].field_0), data=mem[128 len ceil32(uint255(stor4[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor4[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor4[arg1].field_0) * 0.5)]), 
    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
        revert with 0, 34
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4[arg1].field_0):
            if 31 < uint255(stor4[arg1].field_0) * 0.5:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor4[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 0, 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
        mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
    return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
}

function sub_d2bd1b40(?) payable {
    require calldata.size - 4 >= 32
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1].field_0):
                if 31 < uint255(stor4[arg1].field_0) * 0.5:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor4[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_0), data=mem[128 len ceil32(uint255(stor4[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor4[arg1].field_8
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 0, 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_0), data=mem[128 len ceil32(uint255(stor4[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor4[arg1].field_8
        mem[ceil32(uint255(stor4[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor4[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor4[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor4[arg1].field_0) * 0.5) > uint255(stor4[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor4[arg1].field_0) * 0.5) + (uint255(stor4[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4[arg1].field_0), data=mem[128 len ceil32(uint255(stor4[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor4[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor4[arg1].field_0) * 0.5)]), 
    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
        revert with 0, 34
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4[arg1].field_0):
            if 31 < uint255(stor4[arg1].field_0) * 0.5:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor4[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 0, 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
        mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
    return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
}

function changeName(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    staticcall sub_06b3613fAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < changePrice:
        revert with 0, 'NO BIZ'
    mem[ceil32(return_data.size) + 100] = arg1
    staticcall VMAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = changePrice
    call sub_06b3613fAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, changePrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1].field_0):
                if 31 >= uint255(stor4[arg1].field_0) * 0.5:
                    mem[(4 * ceil32(return_data.size)) + 128] = 256 * stor4[arg1].field_8
                else:
                    mem[(4 * ceil32(return_data.size)) + 128] = stor4[arg1].field_0
                    idx = (4 * ceil32(return_data.size)) + 128
                    s = 0
                    while (4 * ceil32(return_data.size)) + (uint255(stor4[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 0, 34
            if stor4[arg1].field_1:
                if 31 >= stor4[arg1].field_1:
                    mem[(4 * ceil32(return_data.size)) + 128] = 256 * stor4[arg1].field_8
                else:
                    mem[(4 * ceil32(return_data.size)) + 128] = stor4[arg1].field_0
                    idx = (4 * ceil32(return_data.size)) + 128
                    s = 0
                    while (4 * ceil32(return_data.size)) + stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not arg2.length:
                stor4[arg1].field_0 = 0
                idx = 0
                while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                    stor4[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[arg1].field_0 = (2 * arg2.length) + 1
                s = 0
                idx = arg2 + 36
                while arg2 + arg2.length + 36 > idx:
                    stor4[arg1][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg2.length + 31) >> 5
                while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                    stor4[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 0, 34
            if not arg2.length:
                stor4[arg1].field_0 = 0
                idx = 0
                while stor4[arg1].field_1 + 31 / 32 > idx:
                    stor4[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[arg1].field_0 = (2 * arg2.length) + 1
                s = 0
                idx = arg2 + 36
                while arg2 + arg2.length + 36 > idx:
                    stor4[arg1][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg2.length + 31) >> 5
                while stor4[arg1].field_1 + 31 / 32 > idx:
                    stor4[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[(2 * ceil32(uint255(stor4[arg1].field_0) * 0.5)) + (4 * ceil32(return_data.size)) + 288 len arg2.length] = arg2[all]
        mem[(2 * ceil32(uint255(stor4[arg1].field_0) * 0.5)) + (4 * ceil32(return_data.size)) + arg2.length + 288] = 0
        emit 0xf1ac6d88: arg1, Array(len=2 * Mask(256, -1, stor4[arg1].field_0), data=mem[(4 * ceil32(return_data.size)) + 128 len ceil32(uint255(stor4[arg1].field_0) * 0.5)], arg2.length, arg2[all], mem[(4 * ceil32(return_data.size)) + (2 * ceil32(uint255(stor4[arg1].field_0) * 0.5)) + arg2.length + 288 len ceil32(arg2.length) - arg2.length]), ceil32(uint255(stor4[arg1].field_0) * 0.5) + 128
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 0, 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1].field_0):
                if 31 >= uint255(stor4[arg1].field_0) * 0.5:
                    mem[(4 * ceil32(return_data.size)) + 128] = 256 * stor4[arg1].field_8
                else:
                    mem[(4 * ceil32(return_data.size)) + 128] = stor4[arg1].field_0
                    idx = (4 * ceil32(return_data.size)) + 128
                    s = 0
                    while (4 * ceil32(return_data.size)) + (uint255(stor4[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 0, 34
            if stor4[arg1].field_1:
                if 31 >= stor4[arg1].field_1:
                    mem[(4 * ceil32(return_data.size)) + 128] = 256 * stor4[arg1].field_8
                else:
                    mem[(4 * ceil32(return_data.size)) + 128] = stor4[arg1].field_0
                    idx = (4 * ceil32(return_data.size)) + 128
                    s = 0
                    while (4 * ceil32(return_data.size)) + stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not arg2.length:
                stor4[arg1].field_0 = 0
                idx = 0
                while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                    stor4[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[arg1].field_0 = (2 * arg2.length) + 1
                s = 0
                idx = arg2 + 36
                while arg2 + arg2.length + 36 > idx:
                    stor4[arg1][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg2.length + 31) >> 5
                while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                    stor4[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 0, 34
            if not arg2.length:
                stor4[arg1].field_0 = 0
                idx = 0
                while stor4[arg1].field_1 + 31 / 32 > idx:
                    stor4[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[arg1].field_0 = (2 * arg2.length) + 1
                s = 0
                idx = arg2 + 36
                while arg2 + arg2.length + 36 > idx:
                    stor4[arg1][s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg2.length + 31) >> 5
                while stor4[arg1].field_1 + 31 / 32 > idx:
                    stor4[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[(2 * ceil32(stor4[arg1].field_1)) + (4 * ceil32(return_data.size)) + 288 len arg2.length] = arg2[all]
        mem[(2 * ceil32(stor4[arg1].field_1)) + (4 * ceil32(return_data.size)) + arg2.length + 288] = 0
        emit 0xf1ac6d88: arg1, Array(len=stor4[arg1].field_0, data=mem[(4 * ceil32(return_data.size)) + 128 len ceil32(stor4[arg1].field_1)], arg2.length, arg2[all], mem[(4 * ceil32(return_data.size)) + (2 * ceil32(stor4[arg1].field_1)) + arg2.length + 288 len ceil32(arg2.length) - arg2.length]), ceil32(stor4[arg1].field_1) + 128
}



}
