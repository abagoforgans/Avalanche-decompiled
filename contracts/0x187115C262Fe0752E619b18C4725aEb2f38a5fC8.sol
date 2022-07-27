contract main {




// =====================  Runtime code  =====================


#
#  - fundPool(uint256 arg1)
#
address owner;
array of struct stor1;
address treasuryAddress;
address rewardsTokenAddress;
array of struct stor4;
mapping of uint256 stor5;

function treasury() payable {
    return treasuryAddress
}

function owner() payable {
    return owner
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function poolCount() payable {
    return stor4.length
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

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == treasuryAddress:
        revert with 0, 'Invalid Treasury!'
    treasuryAddress = arg1
    emit TreasuryUpdated(arg1);
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

function sub_e1b963c9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 < stor4[arg1].field_257:
                idx = 448
                s = 0
                while stor4[arg1].field_257 + 416 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 < stor4[arg1].field_257:
                idx = 448
                s = 0
                while stor4[arg1].field_257 + 416 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    require ext_code.size(stor4[arg1].field_0)
    staticcall stor4[arg1].field_0.0xebe2b12b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (block.timestamp > ext_call.return_data[0])
}

function updatePoolReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > stor4.length:
        revert with 0, 'Invalid Pool ID!'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_512 == arg2:
        revert with 0, 'Invalid Reward Amount!'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    stor4[arg1].field_512 = arg2
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_256:
            emit 0x4fb17658: 32, stor4[arg1].field_0, 160, stor4[arg1].field_512, bool(stor4[arg1].field_768), bool(stor4[arg1].field_776), 2 * Mask(256, -1, stor4[arg1].field_257), Mask(248, 8, stor4[arg1].field_256)
        else:
            if stor4[arg1].field_256 != 1:
                emit 0x4fb17658: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor4[arg1].field_257:
                    mem[idx + 320] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x4fb17658: 32, stor4[arg1].field_0, 160, stor4[arg1].field_512, bool(stor4[arg1].field_768), bool(stor4[arg1].field_776), 2 * Mask(256, -1, stor4[arg1].field_257), mem[320 len ceil32(stor4[arg1].field_257)]
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_256:
            emit 0x4fb17658: 32, stor4[arg1].field_0, 160, stor4[arg1].field_512, bool(stor4[arg1].field_768), bool(stor4[arg1].field_776), stor4[arg1].field_256, Mask(248, 8, stor4[arg1].field_256)
        else:
            if stor4[arg1].field_256 != 1:
                emit 0x4fb17658: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor4[arg1].field_257:
                    mem[idx + 320] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x4fb17658: 32, stor4[arg1].field_0, 160, stor4[arg1].field_512, bool(stor4[arg1].field_768), bool(stor4[arg1].field_776), stor4[arg1].field_256, mem[320 len ceil32(stor4[arg1].field_257)]
}

function removePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > stor4.length:
        revert with 0, 'Invalid Pool ID!'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if not stor4[arg1].field_776:
        revert with 0, 'Pool Already Removed!'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    require ext_code.size(stor4[arg1].field_0)
    if not stor4[arg1].field_768:
        call stor4[arg1].field_0.0xf2fde38b with:
             gas gas_remaining wei
            args owner
    else:
        call stor4[arg1].field_0.nominateNewOwner(address arg1) with:
             gas gas_remaining wei
            args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    stor4[arg1].field_776 = 0
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_256:
            emit 0x6e5ac48f: 32, stor4[arg1].field_0, 160, stor4[arg1].field_512, bool(stor4[arg1].field_768), bool(stor4[arg1].field_776), 2 * Mask(256, -1, stor4[arg1].field_257), Mask(248, 8, stor4[arg1].field_256)
        else:
            if stor4[arg1].field_256 != 1:
                emit 0x6e5ac48f: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor4[arg1].field_257:
                    mem[idx + 320] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x6e5ac48f: 32, stor4[arg1].field_0, 160, stor4[arg1].field_512, bool(stor4[arg1].field_768), bool(stor4[arg1].field_776), 2 * Mask(256, -1, stor4[arg1].field_257), mem[320 len ceil32(stor4[arg1].field_257)]
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_256:
            emit 0x6e5ac48f: 32, stor4[arg1].field_0, 160, stor4[arg1].field_512, bool(stor4[arg1].field_768), bool(stor4[arg1].field_776), stor4[arg1].field_256, Mask(248, 8, stor4[arg1].field_256)
        else:
            if stor4[arg1].field_256 != 1:
                emit 0x6e5ac48f: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor4[arg1].field_257:
                    mem[idx + 320] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x6e5ac48f: 32, stor4[arg1].field_0, 160, stor4[arg1].field_512, bool(stor4[arg1].field_768), bool(stor4[arg1].field_776), stor4[arg1].field_256, mem[320 len ceil32(stor4[arg1].field_257)]
}

function getPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_256:
            if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_257:
                if 31 >= stor4[arg1].field_257:
                    mem[448] = 256 * stor4[arg1].field_264
                else:
                    mem[448] = stor[sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = 448
                    s = 0
                    while stor4[arg1].field_257 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_257:
                if 31 >= stor4[arg1].field_257:
                    mem[448] = 256 * stor4[arg1].field_264
                else:
                    mem[448] = stor[sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = 448
                    s = 0
                    while stor4[arg1].field_257 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor4[arg1].field_0, 
               160,
               stor4[arg1].field_512,
               bool(stor4[arg1].field_768),
               bool(stor4[arg1].field_776),
               2 * Mask(256, -1, stor4[arg1].field_257),
               mem[448 len ceil32(stor4[arg1].field_257)]
    if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 >= stor4[arg1].field_257:
                mem[448] = 256 * stor4[arg1].field_264
            else:
                mem[448] = stor[sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                idx = 448
                s = 0
                while stor4[arg1].field_257 + 416 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 >= stor4[arg1].field_257:
                mem[448] = 256 * stor4[arg1].field_264
            else:
                mem[448] = stor[sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_0
                idx = 448
                s = 0
                while stor4[arg1].field_257 + 416 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor4[arg1].field_0, 
           160,
           stor4[arg1].field_512,
           bool(stor4[arg1].field_768),
           bool(stor4[arg1].field_776),
           stor4[arg1].field_256,
           mem[448 len ceil32(stor4[arg1].field_257)]
}

function name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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

function sub_2b235e32(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5[address(arg1)] < 1:
        revert with 'NH{q', 17
    if stor5[address(arg1)] - 1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[stor5[address(arg1)] - 1].field_256:
        if stor4[stor5[address(arg1)] - 1].field_256 == stor4[stor5[address(arg1)] - 1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[stor5[address(arg1)] - 1].field_256:
            if stor4[stor5[address(arg1)] - 1].field_256 == stor4[stor5[address(arg1)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if stor4[stor5[address(arg1)] - 1].field_257:
                if 31 >= stor4[stor5[address(arg1)] - 1].field_257:
                    mem[608] = 256 * stor4[stor5[address(arg1)] - 1].field_264
                else:
                    mem[608] = stor[sha3((4 * stor5[address(arg1)] - 1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = 608
                    s = 0
                    while stor4[stor5[address(arg1)] - 1].field_257 + 576 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * stor5[address(arg1)] - 1) + ('name', 'stor4', 4) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[stor5[address(arg1)] - 1].field_256 == stor4[stor5[address(arg1)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if stor4[stor5[address(arg1)] - 1].field_257:
                if 31 >= stor4[stor5[address(arg1)] - 1].field_257:
                    mem[608] = 256 * stor4[stor5[address(arg1)] - 1].field_264
                else:
                    mem[608] = stor[sha3((4 * stor5[address(arg1)] - 1) + ('name', 'stor4', 4) + 1)].field_0
                    idx = 608
                    s = 0
                    while stor4[stor5[address(arg1)] - 1].field_257 + 576 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * stor5[address(arg1)] - 1) + ('name', 'stor4', 4) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor4[stor5[address(arg1)] - 1].field_0, 
               160,
               stor4[stor5[address(arg1)] - 1].field_512,
               bool(stor4[stor5[address(arg1)] - 1].field_768),
               bool(stor4[stor5[address(arg1)] - 1].field_776),
               2 * Mask(256, -1, stor4[stor5[address(arg1)] - 1].field_257),
               mem[608 len ceil32(stor4[stor5[address(arg1)] - 1].field_257)]
    if stor4[stor5[address(arg1)] - 1].field_256 == stor4[stor5[address(arg1)] - 1].field_257 < 32:
        revert with 'NH{q', 34
    if stor4[stor5[address(arg1)] - 1].field_256:
        if stor4[stor5[address(arg1)] - 1].field_256 == stor4[stor5[address(arg1)] - 1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[stor5[address(arg1)] - 1].field_257:
            if 31 >= stor4[stor5[address(arg1)] - 1].field_257:
                mem[608] = 256 * stor4[stor5[address(arg1)] - 1].field_264
            else:
                mem[608] = stor[sha3((4 * stor5[address(arg1)] - 1) + ('name', 'stor4', 4) + 1)].field_0
                idx = 608
                s = 0
                while stor4[stor5[address(arg1)] - 1].field_257 + 576 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * stor5[address(arg1)] - 1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[stor5[address(arg1)] - 1].field_256 == stor4[stor5[address(arg1)] - 1].field_257 < 32:
            revert with 'NH{q', 34
        if stor4[stor5[address(arg1)] - 1].field_257:
            if 31 >= stor4[stor5[address(arg1)] - 1].field_257:
                mem[608] = 256 * stor4[stor5[address(arg1)] - 1].field_264
            else:
                mem[608] = stor[sha3((4 * stor5[address(arg1)] - 1) + ('name', 'stor4', 4) + 1)].field_0
                idx = 608
                s = 0
                while stor4[stor5[address(arg1)] - 1].field_257 + 576 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * stor5[address(arg1)] - 1) + ('name', 'stor4', 4) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor4[stor5[address(arg1)] - 1].field_0, 
           160,
           stor4[stor5[address(arg1)] - 1].field_512,
           bool(stor4[stor5[address(arg1)] - 1].field_768),
           bool(stor4[stor5[address(arg1)] - 1].field_776),
           stor4[stor5[address(arg1)] - 1].field_256,
           mem[608 len ceil32(stor4[stor5[address(arg1)] - 1].field_257)]
}

function sub_93218bb2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 == bool(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    if not arg4:
        staticcall address(arg2).0x8da5cb5b with:
                gas gas_remaining wei
        mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Invalid Ownership!'
    else:
        staticcall address(arg2).nominatedOwner() with:
                gas gas_remaining wei
        mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Invalid Ownership!'
        require ext_code.size(address(arg2))
        call address(arg2).acceptOwnership() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if stor5[address(arg2)] <= 0:
        stor4.length++
        stor4[stor4.length].field_0 = address(arg2)
        if stor4[stor4.length].field_256:
            if stor4[stor4.length].field_256 == stor4[stor4.length].field_257 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor[sha3((4 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor4[stor4.length].field_256 = 0
                idx = 0
                while stor4[stor4.length].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor4.length) + ('name', 'stor4', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor4[stor4.length].field_256 == stor4[stor4.length].field_257 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor[sha3((4 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor4[stor4.length].field_256 = 0
                idx = 0
                while stor4[stor4.length].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor4.length) + ('name', 'stor4', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        stor4[stor4.length].field_512 = arg1
        stor4[stor4.length].field_768 = uint8(bool(arg4))
        stor4[stor4.length].field_776 = 1
        stor5[address(arg2)] = stor4.length
        emit 0xb46b5ec7: 32, address(arg2), 160, arg1, bool(arg4), 1, arg3.length, arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]
    else:
        if stor5[address(arg2)] < 1:
            revert with 'NH{q', 17
        if stor5[address(arg2)] - 1 >= stor4.length:
            revert with 'NH{q', 50
        if stor4[stor5[address(arg2)] - 1].field_776:
            revert with 0, 'Pool Already Added!'
        if stor5[address(arg2)] - 1 >= stor4.length:
            revert with 'NH{q', 50
        stor4[stor5[address(arg2)] - 1].field_512 = arg1
        if stor4[stor5[address(arg2)] - 1].field_256:
            if stor4[stor5[address(arg2)] - 1].field_256 == stor4[stor5[address(arg2)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor[sha3((4 * stor5[address(arg2)] - 1) + ('name', 'stor4', 4) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor4[stor5[address(arg2)] - 1].field_256 = 0
                idx = 0
                while stor4[stor5[address(arg2)] - 1].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor5[address(arg2)] - 1) + ('name', 'stor4', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor4[stor5[address(arg2)] - 1].field_256 == stor4[stor5[address(arg2)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor[sha3((4 * stor5[address(arg2)] - 1) + ('name', 'stor4', 4) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor4[stor5[address(arg2)] - 1].field_256 = 0
                idx = 0
                while stor4[stor5[address(arg2)] - 1].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor5[address(arg2)] - 1) + ('name', 'stor4', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor5[address(arg2)] - 1 >= stor4.length:
            revert with 'NH{q', 50
        stor4[stor5[address(arg2)] - 1].field_776 = 1
        if stor4[stor5[address(arg2)] - 1].field_256:
            if stor4[stor5[address(arg2)] - 1].field_256 == stor4[stor5[address(arg2)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor4[stor5[address(arg2)] - 1].field_256:
                emit 0x4fb17658: 32, stor4[stor5[address(arg2)] - 1].field_0, 160, stor4[stor5[address(arg2)] - 1].field_512, bool(stor4[stor5[address(arg2)] - 1].field_768), bool(stor4[stor5[address(arg2)] - 1].field_776), 2 * Mask(256, -1, stor4[stor5[address(arg2)] - 1].field_257), Mask(248, 8, stor4[stor5[address(arg2)] - 1].field_256)
            else:
                if stor4[stor5[address(arg2)] - 1].field_256 != 1:
                    emit 0x4fb17658: mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len -ceil32(ceil32(arg3.length)) + -ceil32(return_data.size) - 97]
                else:
                    idx = 0
                    s = 0
                    while idx < stor4[stor5[address(arg2)] - 1].field_257:
                        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + idx + 321] = stor[s + sha3((4 * stor5[address(arg2)] - 1) + ('name', 'stor4', 4) + 1)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x4fb17658: 32, stor4[stor5[address(arg2)] - 1].field_0, 160, stor4[stor5[address(arg2)] - 1].field_512, bool(stor4[stor5[address(arg2)] - 1].field_768), bool(stor4[stor5[address(arg2)] - 1].field_776), 2 * Mask(256, -1, stor4[stor5[address(arg2)] - 1].field_257), mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 321 len ceil32(stor4[stor5[address(arg2)] - 1].field_257)]
        else:
            if stor4[stor5[address(arg2)] - 1].field_256 == stor4[stor5[address(arg2)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor4[stor5[address(arg2)] - 1].field_256:
                emit 0x4fb17658: 32, stor4[stor5[address(arg2)] - 1].field_0, 160, stor4[stor5[address(arg2)] - 1].field_512, bool(stor4[stor5[address(arg2)] - 1].field_768), bool(stor4[stor5[address(arg2)] - 1].field_776), stor4[stor5[address(arg2)] - 1].field_256, Mask(248, 8, stor4[stor5[address(arg2)] - 1].field_256)
            else:
                if stor4[stor5[address(arg2)] - 1].field_256 != 1:
                    emit 0x4fb17658: mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len -ceil32(ceil32(arg3.length)) + -ceil32(return_data.size) - 97]
                else:
                    idx = 0
                    s = 0
                    while idx < stor4[stor5[address(arg2)] - 1].field_257:
                        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + idx + 321] = stor[s + sha3((4 * stor5[address(arg2)] - 1) + ('name', 'stor4', 4) + 1)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x4fb17658: 32, stor4[stor5[address(arg2)] - 1].field_0, 160, stor4[stor5[address(arg2)] - 1].field_512, bool(stor4[stor5[address(arg2)] - 1].field_768), bool(stor4[stor5[address(arg2)] - 1].field_776), stor4[stor5[address(arg2)] - 1].field_256, mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 321 len ceil32(stor4[stor5[address(arg2)] - 1].field_257)]
}



}
