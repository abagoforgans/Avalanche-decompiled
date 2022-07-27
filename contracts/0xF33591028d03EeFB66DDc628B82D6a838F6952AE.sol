contract main {




// =====================  Runtime code  =====================


#
#  - items(uint256 arg1)
#
address owner;
address boosterAddress;
address conAddress;
address treasuryAddress;
address rewardPoolAddress;
array of address nodes;
mapping of struct stor8;
uint256 totalItems;
mapping of uint256 nftPrices;
mapping of uint256 sub_6213edb5;

function con() payable {
    return conAddress
}

function nodes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return nodes[arg1]
}

function totalItems() payable {
    return totalItems
}

function treasury() payable {
    return treasuryAddress
}

function sub_6213edb5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6213edb5[arg1]
}

function rewardPool() payable {
    return rewardPoolAddress
}

function owner() payable {
    return owner
}

function booster() payable {
    return boosterAddress
}

function nftPrices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nftPrices[arg1]
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

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function sub_4a7e1b68(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    conAddress = address(arg1)
}

function setRewardPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPoolAddress = arg1
}

function setPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor8[arg1].field_0) = arg2
}

function setSupply(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor8[arg1].field_256) = arg2
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

function sub_cc97130b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'Amount must be greater than 0'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cbb6f072(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2c10a67d(?) payable {
    require calldata.size - 4 >= 96
    require 35 < calldata.size
    require 100 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 3:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 5
    idx = 96
    while 192 > idx:
        address(stor[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while 8 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
}

function sub_a68fa716(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 98 > test266151307() or ceil32(ceil32(arg6.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg6 + arg6.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor8[arg1].field_0) = arg2
    uint256(stor8[arg1].field_768) = arg3
    uint256(stor8[arg1].field_512) = arg4
    if bool(stor8[arg1].field_1280):
        if bool(stor8[arg1].field_1280) == uint255(stor8[arg1].field_1281) < 32:
            revert with 'NH{q', 34
        if arg5.length:
            uint256(stor8[arg1][5][].field_0) = Array(len=arg5.length, data=arg5[all])
        else:
            uint256(stor8[arg1].field_1280) = 0
            idx = 0
            while uint255(stor8[arg1].field_1281) + 31 / 32 > idx:
                uint256(stor8[arg1][idx + 5].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8[arg1].field_1280) == stor8[arg1].field_1281 % 128 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            uint256(stor8[arg1][5][].field_0) = Array(len=arg5.length, data=arg5[all])
        else:
            uint256(stor8[arg1].field_1280) = 0
            idx = 0
            while stor8[arg1].field_1281 % 128 + 31 / 32 > idx:
                uint256(stor8[arg1][idx + 5].field_0) = 0
                idx = idx + 1
                continue 
    if bool(stor8[arg1].field_1024):
        if bool(stor8[arg1].field_1024) == uint255(stor8[arg1].field_1025) < 32:
            revert with 'NH{q', 34
        if arg6.length:
            uint256(stor8[arg1][4][].field_0) = Array(len=arg6.length, data=arg6[all])
        else:
            uint256(stor8[arg1].field_1024) = 0
            idx = 0
            while uint255(stor8[arg1].field_1025) + 31 / 32 > idx:
                uint256(stor8[arg1][idx + 4].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8[arg1].field_1024) == stor8[arg1].field_1025 % 128 < 32:
            revert with 'NH{q', 34
        if arg6.length:
            uint256(stor8[arg1][4][].field_0) = Array(len=arg6.length, data=arg6[all])
        else:
            uint256(stor8[arg1].field_1024) = 0
            idx = 0
            while stor8[arg1].field_1025 % 128 + 31 / 32 > idx:
                uint256(stor8[arg1][idx + 4].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_601f4c1e(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 98 > test266151307() or ceil32(ceil32(arg6.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg6 + arg6.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor8[stor9].field_0) = arg1
    uint256(stor8[stor9].field_256) = arg2
    uint256(stor8[stor9].field_512) = arg3
    uint256(stor8[stor9].field_768) = arg4
    if bool(stor8[stor9].field_1024):
        if bool(stor8[stor9].field_1024) == uint255(stor8[stor9].field_1025) < 32:
            revert with 'NH{q', 34
        if arg5.length:
            uint256(stor8[stor9][4][].field_0) = Array(len=arg5.length, data=arg5[all])
        else:
            uint256(stor8[stor9].field_1024) = 0
            idx = 0
            while uint255(stor8[stor9].field_1025) + 31 / 32 > idx:
                uint256(stor8[stor9][idx + 4].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8[stor9].field_1024) == stor8[stor9].field_1025 % 128 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            uint256(stor8[stor9][4][].field_0) = Array(len=arg5.length, data=arg5[all])
        else:
            uint256(stor8[stor9].field_1024) = 0
            idx = 0
            while stor8[stor9].field_1025 % 128 + 31 / 32 > idx:
                uint256(stor8[stor9][idx + 4].field_0) = 0
                idx = idx + 1
                continue 
    if bool(stor8[stor9].field_1280):
        if bool(stor8[stor9].field_1280) == uint255(stor8[stor9].field_1281) < 32:
            revert with 'NH{q', 34
        if arg6.length:
            uint256(stor8[stor9][5][].field_0) = Array(len=arg6.length, data=arg6[all])
        else:
            uint256(stor8[stor9].field_1280) = 0
            idx = 0
            while uint255(stor8[stor9].field_1281) + 31 / 32 > idx:
                uint256(stor8[stor9][idx + 5].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8[stor9].field_1280) == stor8[stor9].field_1281 % 128 < 32:
            revert with 'NH{q', 34
        if arg6.length:
            uint256(stor8[stor9][5][].field_0) = Array(len=arg6.length, data=arg6[all])
        else:
            uint256(stor8[stor9].field_1280) = 0
            idx = 0
            while stor8[stor9].field_1281 % 128 + 31 / 32 > idx:
                uint256(stor8[stor9][idx + 5].field_0) = 0
                idx = idx + 1
                continue 
    if totalItems == -1:
        revert with 'NH{q', 17
    totalItems++
}

function sub_5b953955(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 >= 3:
        revert with 0, 'NODE: Node out of range.'
    require ext_code.size(boosterAddress)
    staticcall boosterAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not a owner'
    if arg2 >= 3:
        revert with 'NH{q', 50
    require ext_code.size(boosterAddress)
    staticcall boosterAddress.getType(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(boosterAddress)
    staticcall boosterAddress.0x985a6053 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(nodes[arg2])
    call nodes[arg2].0x648945e5 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(nodes[arg2])
        call nodes[arg2].0xb721e8c8 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] == 1:
            require ext_code.size(nodes[arg2])
            call nodes[arg2].0xecbdf378 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if ext_call.return_data[0] == 2:
                require ext_code.size(nodes[arg2])
                call nodes[arg2].0xc455f6b6 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] == 3:
                    require ext_code.size(nodes[arg2])
                    call nodes[arg2].0x57e05c3b with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(boosterAddress)
    call boosterAddress.consume(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cd30138f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 > totalItems:
        revert with 0, 'This ID doesnt exist'
    if uint256(stor8[arg2].field_256) <= 0:
        revert with 0, 'There are no items left'
    if uint256(stor8[arg2].field_0) and 25 > -1 / uint256(stor8[arg2].field_0):
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = treasuryAddress
    mem[164] = 25 * uint256(stor8[arg2].field_0) / 100
    require ext_code.size(conAddress)
    call conAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, treasuryAddress, 25 * uint256(stor8[arg2].field_0) / 100
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if uint256(stor8[arg2].field_0) and 75 > -1 / uint256(stor8[arg2].field_0):
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = rewardPoolAddress
    mem[ceil32(return_data.size) + 164] = 75 * uint256(stor8[arg2].field_0) / 100
    require ext_code.size(conAddress)
    call conAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, rewardPoolAddress, 75 * uint256(stor8[arg2].field_0) / 100
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[32] = 8
    mem[(2 * ceil32(return_data.size)) + 96] = 0x16543af500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 132] = 160
    if bool(stor8[arg2].field_1024):
        if bool(stor8[arg2].field_1024) == uint255(stor8[arg2].field_1025) < 32:
            revert with 'NH{q', 34
        mem[(2 * ceil32(return_data.size)) + 260] = uint255(stor8[arg2].field_1025)
        if not bool(stor8[arg2].field_1024):
            if bool(stor8[arg2].field_1280):
                if bool(stor8[arg2].field_1280) == uint255(stor8[arg2].field_1281) < 32:
                    revert with 'NH{q', 34
                if not bool(stor8[arg2].field_1280):
                    require ext_code.size(boosterAddress)
                    call boosterAddress.0x16543af5 with:
                         gas gas_remaining wei
                        args address(arg1), 160, uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), 224, 2 * Mask(256, -1, uint255(stor8[arg2].field_1025)), Mask(248, 8, uint256(stor8[arg2].field_1024)), 2 * Mask(256, -1, uint255(stor8[arg2].field_1281)), Mask(248, 8, uint256(stor8[arg2].field_1280))
                else:
                    if bool(stor8[arg2].field_1280) != 1:
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor8[arg2].field_1281):
                            mem[(2 * ceil32(return_data.size)) + idx + 356] = uint256(stor8[arg2][s + 5].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args address(arg1), 160, uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), 224, 2 * Mask(256, -1, uint255(stor8[arg2].field_1025)), Mask(248, 8, uint256(stor8[arg2].field_1024)), 2 * Mask(256, -1, uint255(stor8[arg2].field_1281)), mem[(2 * ceil32(return_data.size)) + 356 len ceil32(uint255(stor8[arg2].field_1281))]
            else:
                if bool(stor8[arg2].field_1280) == stor8[arg2].field_1281 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor8[arg2].field_1280):
                    require ext_code.size(boosterAddress)
                    call boosterAddress.0x16543af5 with:
                         gas gas_remaining wei
                        args address(arg1), 160, uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), 224, 2 * Mask(256, -1, uint255(stor8[arg2].field_1025)), Mask(248, 8, uint256(stor8[arg2].field_1024)), stor8[arg2].field_1280 % 128, Mask(248, 8, uint256(stor8[arg2].field_1280))
                else:
                    if bool(stor8[arg2].field_1280) != 1:
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor8[arg2].field_1281 % 128:
                            mem[(2 * ceil32(return_data.size)) + idx + 356] = uint256(stor8[arg2][s + 5].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args address(arg1), 160, uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), 224, 2 * Mask(256, -1, uint255(stor8[arg2].field_1025)), Mask(248, 8, uint256(stor8[arg2].field_1024)), stor8[arg2].field_1280 % 128, mem[(2 * ceil32(return_data.size)) + 356 len ceil32(stor8[arg2].field_1281 % 128)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if bool(stor8[arg2].field_1024) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor8[arg2].field_1025):
                    mem[(2 * ceil32(return_data.size)) + idx + 292] = uint256(stor8[arg2][s + 4].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor8[arg2].field_1280):
                    if bool(stor8[arg2].field_1280) == uint255(stor8[arg2].field_1281) < 32:
                        revert with 'NH{q', 34
                    mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor8[arg2].field_1025)) + 292] = uint255(stor8[arg2].field_1281)
                    if not bool(stor8[arg2].field_1280):
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args address(arg1), Array(len=2 * Mask(256, -1, uint255(stor8[arg2].field_1025)), data=mem[(2 * ceil32(return_data.size)) + 292 len ceil32(uint255(stor8[arg2].field_1025)) + 32], Mask(248, 8, uint256(stor8[arg2].field_1280))), uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), ceil32(uint255(stor8[arg2].field_1025)) + 192
                    else:
                        if bool(stor8[arg2].field_1280) != 1:
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor8[arg2].field_1281):
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor8[arg2].field_1025)) + idx + 324] = uint256(stor8[arg2][s + 5].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args address(arg1), Array(len=2 * Mask(256, -1, uint255(stor8[arg2].field_1025)), data=mem[(2 * ceil32(return_data.size)) + 292 len ceil32(uint255(stor8[arg2].field_1025)) + ceil32(uint255(stor8[arg2].field_1281)) + 32]), uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), ceil32(uint255(stor8[arg2].field_1025)) + 192
                else:
                    if bool(stor8[arg2].field_1280) == stor8[arg2].field_1281 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor8[arg2].field_1025)) + 292] = stor8[arg2].field_1281 % 128
                    if not bool(stor8[arg2].field_1280):
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args address(arg1), Array(len=2 * Mask(256, -1, uint255(stor8[arg2].field_1025)), data=mem[(2 * ceil32(return_data.size)) + 292 len ceil32(uint255(stor8[arg2].field_1025)) + 32], Mask(248, 8, uint256(stor8[arg2].field_1280))), uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), ceil32(uint255(stor8[arg2].field_1025)) + 192
                    else:
                        if bool(stor8[arg2].field_1280) != 1:
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor8[arg2].field_1281 % 128:
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor8[arg2].field_1025)) + idx + 324] = uint256(stor8[arg2][s + 5].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args address(arg1), Array(len=2 * Mask(256, -1, uint255(stor8[arg2].field_1025)), data=mem[(2 * ceil32(return_data.size)) + 292 len ceil32(uint255(stor8[arg2].field_1025)) + ceil32(stor8[arg2].field_1281 % 128) + 32]), uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), ceil32(uint255(stor8[arg2].field_1025)) + 192
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                mem[(2 * ceil32(return_data.size)) + 164] = uint256(stor8[arg2].field_768)
                mem[(2 * ceil32(return_data.size)) + 196] = uint256(stor8[arg2].field_512)
                mem[(2 * ceil32(return_data.size)) + 228] = -(2 * ceil32(return_data.size)) - 100
                if bool(stor8[arg2].field_1280):
                    if bool(stor8[arg2].field_1280) == uint255(stor8[arg2].field_1281) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor8[arg2].field_1280):
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if bool(stor8[arg2].field_1280) != 1:
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                        else:
                            mem[0] = sha3(arg2, 8) + 5
                            idx = 0
                            s = 0
                            while idx < uint255(stor8[arg2].field_1281):
                                mem[idx + 32] = uint256(stor8[arg2][s + 5].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(boosterAddress)
                            call boosterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(uint255(stor8[arg2].field_1281)) + -mem[64] + 28]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _189 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_189] == mem[_189]
                else:
                    if bool(stor8[arg2].field_1280) == stor8[arg2].field_1281 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor8[arg2].field_1280):
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if bool(stor8[arg2].field_1280) != 1:
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                        else:
                            mem[0] = sha3(arg2, 8) + 5
                            idx = 0
                            s = 0
                            while idx < stor8[arg2].field_1281 % 128:
                                mem[idx + 32] = uint256(stor8[arg2][s + 5].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(boosterAddress)
                            call boosterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(stor8[arg2].field_1281 % 128) + -mem[64] + 28]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _190 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_190] == mem[_190]
    else:
        if bool(stor8[arg2].field_1024) == stor8[arg2].field_1025 % 128 < 32:
            revert with 'NH{q', 34
        mem[(2 * ceil32(return_data.size)) + 260] = stor8[arg2].field_1025 % 128
        if not bool(stor8[arg2].field_1024):
            if bool(stor8[arg2].field_1280):
                if bool(stor8[arg2].field_1280) == uint255(stor8[arg2].field_1281) < 32:
                    revert with 'NH{q', 34
                if not bool(stor8[arg2].field_1280):
                    require ext_code.size(boosterAddress)
                    call boosterAddress.0x16543af5 with:
                         gas gas_remaining wei
                        args address(arg1), 160, uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), 224, stor8[arg2].field_1024 % 128, Mask(248, 8, uint256(stor8[arg2].field_1024)), 2 * Mask(256, -1, uint255(stor8[arg2].field_1281)), Mask(248, 8, uint256(stor8[arg2].field_1280))
                else:
                    if bool(stor8[arg2].field_1280) != 1:
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor8[arg2].field_1281):
                            mem[(2 * ceil32(return_data.size)) + idx + 356] = uint256(stor8[arg2][s + 5].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args address(arg1), 160, uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), 224, stor8[arg2].field_1024 % 128, Mask(248, 8, uint256(stor8[arg2].field_1024)), 2 * Mask(256, -1, uint255(stor8[arg2].field_1281)), mem[(2 * ceil32(return_data.size)) + 356 len ceil32(uint255(stor8[arg2].field_1281))]
            else:
                if bool(stor8[arg2].field_1280) == stor8[arg2].field_1281 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor8[arg2].field_1280):
                    require ext_code.size(boosterAddress)
                    call boosterAddress.0x16543af5 with:
                         gas gas_remaining wei
                        args address(arg1), 160, uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), 224, stor8[arg2].field_1024 % 128, Mask(248, 8, uint256(stor8[arg2].field_1024)), stor8[arg2].field_1280 % 128, Mask(248, 8, uint256(stor8[arg2].field_1280))
                else:
                    if bool(stor8[arg2].field_1280) != 1:
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor8[arg2].field_1281 % 128:
                            mem[(2 * ceil32(return_data.size)) + idx + 356] = uint256(stor8[arg2][s + 5].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args address(arg1), 160, uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), 224, stor8[arg2].field_1024 % 128, Mask(248, 8, uint256(stor8[arg2].field_1024)), stor8[arg2].field_1280 % 128, mem[(2 * ceil32(return_data.size)) + 356 len ceil32(stor8[arg2].field_1281 % 128)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if bool(stor8[arg2].field_1024) == 1:
                idx = 0
                s = 0
                while idx < stor8[arg2].field_1025 % 128:
                    mem[(2 * ceil32(return_data.size)) + idx + 292] = uint256(stor8[arg2][s + 4].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor8[arg2].field_1280):
                    if bool(stor8[arg2].field_1280) == uint255(stor8[arg2].field_1281) < 32:
                        revert with 'NH{q', 34
                    mem[(2 * ceil32(return_data.size)) + ceil32(stor8[arg2].field_1025 % 128) + 292] = uint255(stor8[arg2].field_1281)
                    if not bool(stor8[arg2].field_1280):
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args address(arg1), Array(len=stor8[arg2].field_1024 % 128, data=mem[(2 * ceil32(return_data.size)) + 292 len ceil32(stor8[arg2].field_1025 % 128) + 32], Mask(248, 8, uint256(stor8[arg2].field_1280))), uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), ceil32(stor8[arg2].field_1025 % 128) + 192
                    else:
                        if bool(stor8[arg2].field_1280) != 1:
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor8[arg2].field_1281):
                                mem[(2 * ceil32(return_data.size)) + ceil32(stor8[arg2].field_1025 % 128) + idx + 324] = uint256(stor8[arg2][s + 5].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args address(arg1), Array(len=stor8[arg2].field_1024 % 128, data=mem[(2 * ceil32(return_data.size)) + 292 len ceil32(stor8[arg2].field_1025 % 128) + ceil32(uint255(stor8[arg2].field_1281)) + 32]), uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), ceil32(stor8[arg2].field_1025 % 128) + 192
                else:
                    if bool(stor8[arg2].field_1280) == stor8[arg2].field_1281 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[(2 * ceil32(return_data.size)) + ceil32(stor8[arg2].field_1025 % 128) + 292] = stor8[arg2].field_1281 % 128
                    if not bool(stor8[arg2].field_1280):
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args address(arg1), Array(len=stor8[arg2].field_1024 % 128, data=mem[(2 * ceil32(return_data.size)) + 292 len ceil32(stor8[arg2].field_1025 % 128) + 32], Mask(248, 8, uint256(stor8[arg2].field_1280))), uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), ceil32(stor8[arg2].field_1025 % 128) + 192
                    else:
                        if bool(stor8[arg2].field_1280) != 1:
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor8[arg2].field_1281 % 128:
                                mem[(2 * ceil32(return_data.size)) + ceil32(stor8[arg2].field_1025 % 128) + idx + 324] = uint256(stor8[arg2][s + 5].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args address(arg1), Array(len=stor8[arg2].field_1024 % 128, data=mem[(2 * ceil32(return_data.size)) + 292 len ceil32(stor8[arg2].field_1025 % 128) + ceil32(stor8[arg2].field_1281 % 128) + 32]), uint256(stor8[arg2].field_768), uint256(stor8[arg2].field_512), ceil32(stor8[arg2].field_1025 % 128) + 192
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                mem[(2 * ceil32(return_data.size)) + 164] = uint256(stor8[arg2].field_768)
                mem[(2 * ceil32(return_data.size)) + 196] = uint256(stor8[arg2].field_512)
                mem[(2 * ceil32(return_data.size)) + 228] = -(2 * ceil32(return_data.size)) - 100
                if bool(stor8[arg2].field_1280):
                    if bool(stor8[arg2].field_1280) == uint255(stor8[arg2].field_1281) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor8[arg2].field_1280):
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if bool(stor8[arg2].field_1280) != 1:
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                        else:
                            mem[0] = sha3(arg2, 8) + 5
                            idx = 0
                            s = 0
                            while idx < uint255(stor8[arg2].field_1281):
                                mem[idx + 32] = uint256(stor8[arg2][s + 5].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(boosterAddress)
                            call boosterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(uint255(stor8[arg2].field_1281)) + -mem[64] + 28]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _193 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_193] == mem[_193]
                else:
                    if bool(stor8[arg2].field_1280) == stor8[arg2].field_1281 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor8[arg2].field_1280):
                        require ext_code.size(boosterAddress)
                        call boosterAddress.0x16543af5 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if bool(stor8[arg2].field_1280) != 1:
                            require ext_code.size(boosterAddress)
                            call boosterAddress.0x16543af5 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 100 len -(2 * ceil32(return_data.size)) - 100]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                        else:
                            mem[0] = sha3(arg2, 8) + 5
                            idx = 0
                            s = 0
                            while idx < stor8[arg2].field_1281 % 128:
                                mem[idx + 32] = uint256(stor8[arg2][s + 5].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(boosterAddress)
                            call boosterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(stor8[arg2].field_1281 % 128) + -mem[64] + 28]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _194 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_194] == mem[_194]
    if uint256(stor8[arg2].field_256) < 1:
        revert with 'NH{q', 17
    uint256(stor8[arg2].field_256)--
}



}
