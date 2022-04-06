contract main {




// =====================  Runtime code  =====================


#
#  - sub_e29d75aa(?)
#
address owner;
uint256 sub_2f9cae82;
address wbnbAddress;
uint256 sub_3f7a3d14;
uint256 sub_0662bf7b;
address sub_328b0a71Address;
address sub_225e73c7Address;
array of address sub_f19cfb51;
array of address sub_ec538e67;
mapping of uint8 stor9;
mapping of struct stor10;
uint8 sub_164ecd9c;
uint256 sellRatio;
uint256 sub_33ee7be1;
uint256 sub_15cf91a6;

function sub_0662bf7b(?) payable {
    return sub_0662bf7b
}

function sub_15cf91a6(?) payable {
    return sub_15cf91a6
}

function sub_164ecd9c(?) payable {
    return bool(sub_164ecd9c)
}

function sub_225e73c7(?) payable {
    return sub_225e73c7Address
}

function sub_2f9cae82(?) payable {
    return sub_2f9cae82
}

function sub_328b0a71(?) payable {
    return sub_328b0a71Address
}

function sub_33ee7be1(?) payable {
    return sub_33ee7be1
}

function sub_3f7a3d14(?) payable {
    return sub_3f7a3d14
}

function wbnbAddress() payable {
    return wbnbAddress
}

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function sellRatio() payable {
    return sellRatio
}

function sub_ec538e67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ec538e67.length
    return address(sub_ec538e67[arg1])
}

function sub_f19cfb51(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f19cfb51.length
    return address(sub_f19cfb51[arg1])
}

function _fallback() payable {
    revert
}

function sub_0e1dba7f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    sub_33ee7be1 = arg1
}

function sub_c442be8b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    sub_15cf91a6 = arg1
}

function setSellRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'zero'
    sellRatio = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
}

function sub_87830579(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not address(arg1):
        revert with 0, 'Z A'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_14fdeee5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not address(arg1):
        revert with 0, 'Z A'
    if not address(arg2):
        revert with 0, 'Z A'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ac14afd2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e20d3058(?) payable {
    require calldata.size - 4 >= 32
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                idx = 192
                s = 0
                while stor10[arg1].field_1 + 160 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                idx = 192
                s = 0
                while stor10[arg1].field_1 + 160 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(stor10[arg1].field_256)
}

function sub_76f045cd(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    sub_ec538e67.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_ec538e67.length > idx:
            uint256(sub_ec538e67[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_ec538e67[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_ec538e67.length > idx:
            uint256(sub_ec538e67[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_7f39bee7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    sub_f19cfb51.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_f19cfb51.length > idx:
            uint256(sub_f19cfb51[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_f19cfb51[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_f19cfb51.length > idx:
            uint256(sub_f19cfb51[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_c631614f(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not address(arg3):
        revert with 0, 'Z A'
    require not stor10[arg1].field_256
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[arg1].field_0 = 0
            idx = 0
            while stor10[arg1].field_1 + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[arg1].field_0 = 0
            idx = 0
            while stor10[arg1].field_1 + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor10[arg1].field_256 = address(arg3)
    require ext_code.size(wbnbAddress)
    call wbnbAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7ea7f804(?) payable {
    require calldata.size - 4 >= 192
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == bool(arg6)
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                idx = 192
                s = 0
                while stor10[arg1].field_1 + 160 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                idx = 192
                s = 0
                while stor10[arg1].field_1 + 160 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if not stor10[arg1].field_256:
        revert with 0, 'N Z'
    if not address(arg2):
        revert with 0, 'N Z'
    if not address(arg3):
        revert with 0, 'N Z'
    if arg4 <= 0:
        revert with 0, 'N Z'
    if arg5 <= 0:
        revert with 0, 'N Z'
    sub_2f9cae82 = arg1
    sub_328b0a71Address = address(arg2)
    sub_225e73c7Address = address(arg3)
    sub_3f7a3d14 = arg4
    sub_0662bf7b = arg5
    sub_164ecd9c = uint8(bool(arg6))
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor10[arg1].field_256, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg3))
    call address(arg3).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor10[arg1].field_256, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_f19cfb51.length = 0
    idx = 0
    while sub_f19cfb51.length > idx:
        uint256(sub_f19cfb51[idx]) = 0
        idx = idx + 1
        continue 
    sub_ec538e67.length = 0
    idx = 0
    while sub_ec538e67.length > idx:
        uint256(sub_ec538e67[idx]) = 0
        idx = idx + 1
        continue 
}

function sub_6338a7c0(?) payable {
    require calldata.size - 4 >= 32
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 0, 34
            if stor10[arg1].field_1:
                if 31 >= stor10[arg1].field_1:
                    mem[128] = 256 * stor10[arg1].field_8
                else:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 0, 34
            if stor10[arg1].field_1:
                if 31 >= stor10[arg1].field_1:
                    mem[128] = 256 * stor10[arg1].field_8
                else:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)]), 
               stor10[arg1].field_256
    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
        revert with 0, 34
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_1:
            if 31 >= stor10[arg1].field_1:
                mem[128] = 256 * stor10[arg1].field_8
            else:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_1:
            if 31 >= stor10[arg1].field_1:
                mem[128] = 256 * stor10[arg1].field_8
            else:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)]), stor10[arg1].field_256
}

function sub_3324be69(?) payable {
    if stor10[stor1].field_0:
        if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
            revert with 0, 34
        if stor10[stor1].field_0:
            if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                revert with 0, 34
            if stor10[stor1].field_1:
                if 31 >= stor10[stor1].field_1:
                    mem[192] = 256 * stor10[stor1].field_8
                else:
                    mem[192] = stor10[stor1].field_0
                    idx = 192
                    s = 0
                    while stor10[stor1].field_1 + 160 > idx:
                        mem[idx + 32] = stor10[stor1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                revert with 0, 34
            if stor10[stor1].field_1:
                if 31 >= stor10[stor1].field_1:
                    mem[192] = 256 * stor10[stor1].field_8
                else:
                    mem[192] = stor10[stor1].field_0
                    idx = 192
                    s = 0
                    while stor10[stor1].field_1 + 160 > idx:
                        mem[idx + 32] = stor10[stor1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor10[stor1].field_1), data=mem[192 len ceil32(stor10[stor1].field_1)]), 
               sub_328b0a71Address,
               sub_225e73c7Address,
               sub_3f7a3d14,
               sub_0662bf7b,
               bool(sub_164ecd9c),
               sellRatio,
               sub_33ee7be1,
               sub_15cf91a6
    if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
        revert with 0, 34
    if stor10[stor1].field_0:
        if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
            revert with 0, 34
        if stor10[stor1].field_1:
            if 31 >= stor10[stor1].field_1:
                mem[192] = 256 * stor10[stor1].field_8
            else:
                mem[192] = stor10[stor1].field_0
                idx = 192
                s = 0
                while stor10[stor1].field_1 + 160 > idx:
                    mem[idx + 32] = stor10[stor1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
            revert with 0, 34
        if stor10[stor1].field_1:
            if 31 >= stor10[stor1].field_1:
                mem[192] = 256 * stor10[stor1].field_8
            else:
                mem[192] = stor10[stor1].field_0
                idx = 192
                s = 0
                while stor10[stor1].field_1 + 160 > idx:
                    mem[idx + 32] = stor10[stor1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor10[stor1].field_0, data=mem[192 len ceil32(stor10[stor1].field_1)]), 
           sub_328b0a71Address,
           sub_225e73c7Address,
           sub_3f7a3d14,
           sub_0662bf7b,
           bool(sub_164ecd9c),
           sellRatio,
           sub_33ee7be1,
           sub_15cf91a6
}

function sub_b39a5aa3(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_328b0a71Address)
    staticcall sub_328b0a71Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[32] = 10
    if ext_call.return_data[0] >= arg1:
        if not stor10[stor1].field_0:
            if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                revert with 0, 34
            mem[ceil32(return_data.size) + 160] = stor10[stor1].field_1
            if stor10[stor1].field_0:
                if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                    revert with 0, 34
                if stor10[stor1].field_1:
                    if 31 >= stor10[stor1].field_1:
                        mem[ceil32(return_data.size) + 192] = 256 * stor10[stor1].field_8
                    else:
                        mem[ceil32(return_data.size) + 192] = stor10[stor1].field_0
                        idx = ceil32(return_data.size) + 192
                        s = 0
                        while ceil32(return_data.size) + stor10[stor1].field_1 + 160 > idx:
                            mem[idx + 32] = stor10[stor1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                    revert with 0, 34
                if stor10[stor1].field_1:
                    if 31 >= stor10[stor1].field_1:
                        mem[ceil32(return_data.size) + 192] = 256 * stor10[stor1].field_8
                    else:
                        mem[ceil32(return_data.size) + 192] = stor10[stor1].field_0
                        idx = ceil32(return_data.size) + 192
                        s = 0
                        while ceil32(return_data.size) + stor10[stor1].field_1 + 160 > idx:
                            mem[idx + 32] = stor10[stor1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if 10000 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 196] = arg1
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 228] = arg2
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 260] = 160
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 356] = sub_ec538e67.length
            mem[0] = 8
            idx = 0
            s = 0
            t = ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 388
            while idx < sub_ec538e67.length:
                mem[t] = address(sub_ec538e67[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 292] = this.address
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 324] = block.timestamp + 10000
            require ext_code.size(stor10[stor1].field_256)
            call stor10[stor1].field_256.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=sub_ec538e67.length, data=mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 388 len 32 * sub_ec538e67.length]), address(this.address), block.timestamp + 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(stor10[stor1].field_1) + 192
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + return_data.size + 192 > ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
            if mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 0, 65
            if floor32(mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(stor10[stor1].field_1) + floor32(mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            require return_data.size >= mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32
        else:
            if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                revert with 0, 34
            mem[ceil32(return_data.size) + 160] = stor10[stor1].field_1
            if stor10[stor1].field_0:
                if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                    revert with 0, 34
                if stor10[stor1].field_1:
                    if 31 >= stor10[stor1].field_1:
                        mem[ceil32(return_data.size) + 192] = 256 * stor10[stor1].field_8
                    else:
                        mem[ceil32(return_data.size) + 192] = stor10[stor1].field_0
                        idx = ceil32(return_data.size) + 192
                        s = 0
                        while ceil32(return_data.size) + stor10[stor1].field_1 + 160 > idx:
                            mem[idx + 32] = stor10[stor1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                    revert with 0, 34
                if stor10[stor1].field_1:
                    if 31 >= stor10[stor1].field_1:
                        mem[ceil32(return_data.size) + 192] = 256 * stor10[stor1].field_8
                    else:
                        mem[ceil32(return_data.size) + 192] = stor10[stor1].field_0
                        idx = ceil32(return_data.size) + 192
                        s = 0
                        while ceil32(return_data.size) + stor10[stor1].field_1 + 160 > idx:
                            mem[idx + 32] = stor10[stor1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 160
            mem[ceil32(return_data.size) + 128] = stor10[stor1].field_256
            if 10000 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 196] = arg1
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 228] = arg2
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 260] = 160
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 356] = sub_ec538e67.length
            mem[0] = 8
            idx = 0
            s = 0
            t = ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 388
            while idx < sub_ec538e67.length:
                mem[t] = address(sub_ec538e67[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 292] = this.address
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 324] = block.timestamp + 10000
            require ext_code.size(stor10[stor1].field_256)
            call stor10[stor1].field_256.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=sub_ec538e67.length, data=mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 388 len 32 * sub_ec538e67.length]), address(this.address), block.timestamp + 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(stor10[stor1].field_1) + 192
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + return_data.size + 192 > ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
            if mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 0, 65
            if floor32(mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(stor10[stor1].field_1) + floor32(mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            require return_data.size >= mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32
    else:
        if not stor10[stor1].field_0:
            if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                revert with 0, 34
            mem[ceil32(return_data.size) + 160] = stor10[stor1].field_1
            if stor10[stor1].field_0:
                if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                    revert with 0, 34
                if stor10[stor1].field_1:
                    if 31 >= stor10[stor1].field_1:
                        mem[ceil32(return_data.size) + 192] = 256 * stor10[stor1].field_8
                    else:
                        mem[ceil32(return_data.size) + 192] = stor10[stor1].field_0
                        idx = ceil32(return_data.size) + 192
                        s = 0
                        while ceil32(return_data.size) + stor10[stor1].field_1 + 160 > idx:
                            mem[idx + 32] = stor10[stor1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                    revert with 0, 34
                if stor10[stor1].field_1:
                    if 31 >= stor10[stor1].field_1:
                        mem[ceil32(return_data.size) + 192] = 256 * stor10[stor1].field_8
                    else:
                        mem[ceil32(return_data.size) + 192] = stor10[stor1].field_0
                        idx = ceil32(return_data.size) + 192
                        s = 0
                        while ceil32(return_data.size) + stor10[stor1].field_1 + 160 > idx:
                            mem[idx + 32] = stor10[stor1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if 10000 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 196] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 228] = 0
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 260] = 160
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 356] = sub_ec538e67.length
            mem[0] = 8
            idx = 0
            s = 0
            t = ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 388
            while idx < sub_ec538e67.length:
                mem[t] = address(sub_ec538e67[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 292] = this.address
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 324] = block.timestamp + 10000
            require ext_code.size(stor10[stor1].field_256)
            call stor10[stor1].field_256.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, sub_ec538e67.length, mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 388 len 32 * sub_ec538e67.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(stor10[stor1].field_1) + 192
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + return_data.size + 192 > ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 223
            if mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 0, 65
            if floor32(mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(stor10[stor1].field_1) + floor32(mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                revert with 0, 65
            require return_data.size >= mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
        else:
            if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                revert with 0, 34
            mem[ceil32(return_data.size) + 160] = stor10[stor1].field_1
            if stor10[stor1].field_0:
                if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                    revert with 0, 34
                if stor10[stor1].field_1:
                    if 31 >= stor10[stor1].field_1:
                        mem[ceil32(return_data.size) + 192] = 256 * stor10[stor1].field_8
                    else:
                        mem[ceil32(return_data.size) + 192] = stor10[stor1].field_0
                        idx = ceil32(return_data.size) + 192
                        s = 0
                        while ceil32(return_data.size) + stor10[stor1].field_1 + 160 > idx:
                            mem[idx + 32] = stor10[stor1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor10[stor1].field_0 == stor10[stor1].field_1 < 32:
                    revert with 0, 34
                if stor10[stor1].field_1:
                    if 31 >= stor10[stor1].field_1:
                        mem[ceil32(return_data.size) + 192] = 256 * stor10[stor1].field_8
                    else:
                        mem[ceil32(return_data.size) + 192] = stor10[stor1].field_0
                        idx = ceil32(return_data.size) + 192
                        s = 0
                        while ceil32(return_data.size) + stor10[stor1].field_1 + 160 > idx:
                            mem[idx + 32] = stor10[stor1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 160
            mem[ceil32(return_data.size) + 128] = stor10[stor1].field_256
            if 10000 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 196] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 228] = 0
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 260] = 160
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 356] = sub_ec538e67.length
            mem[0] = 8
            idx = 0
            s = 0
            t = ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 388
            while idx < sub_ec538e67.length:
                mem[t] = address(sub_ec538e67[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 292] = this.address
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 324] = block.timestamp + 10000
            require ext_code.size(stor10[stor1].field_256)
            call stor10[stor1].field_256.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, sub_ec538e67.length, mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 388 len 32 * sub_ec538e67.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(stor10[stor1].field_1) + 192
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + return_data.size + 192 > ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 223
            if mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 0, 65
            if floor32(mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(stor10[stor1].field_1) + floor32(mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                revert with 0, 65
            require return_data.size >= mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + mem[ceil32(return_data.size) + ceil32(stor10[stor1].field_1) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
}



}
