contract main {




// =====================  Runtime code  =====================


#
#  - fundPool(uint256 arg1)
#
address owner;
address treasuryAddress;
address rewardsTokenAddress;
array of struct stor3;
mapping of uint256 stor4;

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
    return stor3.length
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
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    if stor3[arg1].field_256:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
    else:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
    if stor3[arg1].field_256:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_257:
            if 31 < stor3[arg1].field_257:
                idx = 384
                s = 0
                while stor3[arg1].field_257 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_257:
            if 31 < stor3[arg1].field_257:
                idx = 384
                s = 0
                while stor3[arg1].field_257 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    require ext_code.size(stor3[arg1].field_0)
    staticcall stor3[arg1].field_0.periodFinish() with:
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
    if arg1 > stor3.length:
        revert with 0, 'Invalid Pool ID!'
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    if stor3[arg1].field_512 == arg2:
        revert with 0, 'Invalid Reward Amount!'
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    stor3[arg1].field_512 = arg2
    if stor3[arg1].field_256:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor3[arg1].field_256:
            emit 0x7f2711e5: 32, stor3[arg1].field_0, 128, stor3[arg1].field_512, bool(stor3[arg1].field_768), 2 * Mask(256, -1, stor3[arg1].field_257), Mask(248, 8, stor3[arg1].field_256)
        else:
            if stor3[arg1].field_256 != 1:
                emit 0x7f2711e5: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor3[arg1].field_257:
                    mem[idx + 288] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x7f2711e5: 32, stor3[arg1].field_0, 128, stor3[arg1].field_512, bool(stor3[arg1].field_768), 2 * Mask(256, -1, stor3[arg1].field_257), mem[288 len ceil32(stor3[arg1].field_257)]
    else:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor3[arg1].field_256:
            emit 0x7f2711e5: 32, stor3[arg1].field_0, 128, stor3[arg1].field_512, bool(stor3[arg1].field_768), stor3[arg1].field_256, Mask(248, 8, stor3[arg1].field_256)
        else:
            if stor3[arg1].field_256 != 1:
                emit 0x7f2711e5: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor3[arg1].field_257:
                    mem[idx + 288] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x7f2711e5: 32, stor3[arg1].field_0, 128, stor3[arg1].field_512, bool(stor3[arg1].field_768), stor3[arg1].field_256, mem[288 len ceil32(stor3[arg1].field_257)]
}

function removePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > stor3.length:
        revert with 0, 'Invalid Pool ID!'
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    if not stor3[arg1].field_768:
        revert with 0, 'Pool Already Removed!'
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    require ext_code.size(stor3[arg1].field_0)
    call stor3[arg1].field_0.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    stor3[arg1].field_768 = 0
    if stor3[arg1].field_256:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor3[arg1].field_256:
            emit 0x9cc6270c: 32, stor3[arg1].field_0, 128, stor3[arg1].field_512, bool(stor3[arg1].field_768), 2 * Mask(256, -1, stor3[arg1].field_257), Mask(248, 8, stor3[arg1].field_256)
        else:
            if stor3[arg1].field_256 != 1:
                emit 0x9cc6270c: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor3[arg1].field_257:
                    mem[idx + 288] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x9cc6270c: 32, stor3[arg1].field_0, 128, stor3[arg1].field_512, bool(stor3[arg1].field_768), 2 * Mask(256, -1, stor3[arg1].field_257), mem[288 len ceil32(stor3[arg1].field_257)]
    else:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor3[arg1].field_256:
            emit 0x9cc6270c: 32, stor3[arg1].field_0, 128, stor3[arg1].field_512, bool(stor3[arg1].field_768), stor3[arg1].field_256, Mask(248, 8, stor3[arg1].field_256)
        else:
            if stor3[arg1].field_256 != 1:
                emit 0x9cc6270c: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor3[arg1].field_257:
                    mem[idx + 288] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x9cc6270c: 32, stor3[arg1].field_0, 128, stor3[arg1].field_512, bool(stor3[arg1].field_768), stor3[arg1].field_256, mem[288 len ceil32(stor3[arg1].field_257)]
}

function getPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    if stor3[arg1].field_256:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_256:
            if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_257:
                if 31 >= stor3[arg1].field_257:
                    mem[384] = 256 * stor3[arg1].field_264
                else:
                    mem[384] = stor[sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_0
                    idx = 384
                    s = 0
                    while stor3[arg1].field_257 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_257:
                if 31 >= stor3[arg1].field_257:
                    mem[384] = 256 * stor3[arg1].field_264
                else:
                    mem[384] = stor[sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_0
                    idx = 384
                    s = 0
                    while stor3[arg1].field_257 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor3[arg1].field_0, 
               128,
               stor3[arg1].field_512,
               bool(stor3[arg1].field_768),
               2 * Mask(256, -1, stor3[arg1].field_257),
               mem[384 len ceil32(stor3[arg1].field_257)]
    if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor3[arg1].field_256:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_257:
            if 31 >= stor3[arg1].field_257:
                mem[384] = 256 * stor3[arg1].field_264
            else:
                mem[384] = stor[sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_0
                idx = 384
                s = 0
                while stor3[arg1].field_257 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[arg1].field_256 == stor3[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_257:
            if 31 >= stor3[arg1].field_257:
                mem[384] = 256 * stor3[arg1].field_264
            else:
                mem[384] = stor[sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_0
                idx = 384
                s = 0
                while stor3[arg1].field_257 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor3', 3) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor3[arg1].field_0, 
           128,
           stor3[arg1].field_512,
           bool(stor3[arg1].field_768),
           stor3[arg1].field_256,
           mem[384 len ceil32(stor3[arg1].field_257)]
}

function sub_2b235e32(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor4[address(arg1)] < 1:
        revert with 'NH{q', 17
    if stor4[address(arg1)] - 1 >= stor3.length:
        revert with 'NH{q', 50
    if stor3[stor4[address(arg1)] - 1].field_256:
        if stor3[stor4[address(arg1)] - 1].field_256 == stor3[stor4[address(arg1)] - 1].field_257 < 32:
            revert with 'NH{q', 34
        if stor3[stor4[address(arg1)] - 1].field_256:
            if stor3[stor4[address(arg1)] - 1].field_256 == stor3[stor4[address(arg1)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if stor3[stor4[address(arg1)] - 1].field_257:
                if 31 >= stor3[stor4[address(arg1)] - 1].field_257:
                    mem[512] = 256 * stor3[stor4[address(arg1)] - 1].field_264
                else:
                    mem[512] = stor[sha3((4 * stor4[address(arg1)] - 1) + ('name', 'stor3', 3) + 1)].field_0
                    idx = 512
                    s = 0
                    while stor3[stor4[address(arg1)] - 1].field_257 + 480 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * stor4[address(arg1)] - 1) + ('name', 'stor3', 3) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[stor4[address(arg1)] - 1].field_256 == stor3[stor4[address(arg1)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if stor3[stor4[address(arg1)] - 1].field_257:
                if 31 >= stor3[stor4[address(arg1)] - 1].field_257:
                    mem[512] = 256 * stor3[stor4[address(arg1)] - 1].field_264
                else:
                    mem[512] = stor[sha3((4 * stor4[address(arg1)] - 1) + ('name', 'stor3', 3) + 1)].field_0
                    idx = 512
                    s = 0
                    while stor3[stor4[address(arg1)] - 1].field_257 + 480 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * stor4[address(arg1)] - 1) + ('name', 'stor3', 3) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor3[stor4[address(arg1)] - 1].field_0, 
               128,
               stor3[stor4[address(arg1)] - 1].field_512,
               bool(stor3[stor4[address(arg1)] - 1].field_768),
               2 * Mask(256, -1, stor3[stor4[address(arg1)] - 1].field_257),
               mem[512 len ceil32(stor3[stor4[address(arg1)] - 1].field_257)]
    if stor3[stor4[address(arg1)] - 1].field_256 == stor3[stor4[address(arg1)] - 1].field_257 < 32:
        revert with 'NH{q', 34
    if stor3[stor4[address(arg1)] - 1].field_256:
        if stor3[stor4[address(arg1)] - 1].field_256 == stor3[stor4[address(arg1)] - 1].field_257 < 32:
            revert with 'NH{q', 34
        if stor3[stor4[address(arg1)] - 1].field_257:
            if 31 >= stor3[stor4[address(arg1)] - 1].field_257:
                mem[512] = 256 * stor3[stor4[address(arg1)] - 1].field_264
            else:
                mem[512] = stor[sha3((4 * stor4[address(arg1)] - 1) + ('name', 'stor3', 3) + 1)].field_0
                idx = 512
                s = 0
                while stor3[stor4[address(arg1)] - 1].field_257 + 480 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * stor4[address(arg1)] - 1) + ('name', 'stor3', 3) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[stor4[address(arg1)] - 1].field_256 == stor3[stor4[address(arg1)] - 1].field_257 < 32:
            revert with 'NH{q', 34
        if stor3[stor4[address(arg1)] - 1].field_257:
            if 31 >= stor3[stor4[address(arg1)] - 1].field_257:
                mem[512] = 256 * stor3[stor4[address(arg1)] - 1].field_264
            else:
                mem[512] = stor[sha3((4 * stor4[address(arg1)] - 1) + ('name', 'stor3', 3) + 1)].field_0
                idx = 512
                s = 0
                while stor3[stor4[address(arg1)] - 1].field_257 + 480 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * stor4[address(arg1)] - 1) + ('name', 'stor3', 3) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor3[stor4[address(arg1)] - 1].field_0, 
           128,
           stor3[stor4[address(arg1)] - 1].field_512,
           bool(stor3[stor4[address(arg1)] - 1].field_768),
           stor3[stor4[address(arg1)] - 1].field_256,
           mem[512 len ceil32(stor3[stor4[address(arg1)] - 1].field_257)]
}

function sub_0ff908f7(?) payable {
    require calldata.size - 4 >= 96
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x8da5cb5b with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Invalid Ownership!'
    if stor4[address(arg2)] <= 0:
        stor3.length++
        stor3[stor3.length].field_0 = address(arg2)
        if stor3[stor3.length].field_256:
            if stor3[stor3.length].field_256 == stor3[stor3.length].field_257 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor[sha3((4 * stor3.length) + ('name', 'stor3', 3) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor3[stor3.length].field_256 = 0
                idx = 0
                while stor3[stor3.length].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor3.length) + ('name', 'stor3', 3) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor3[stor3.length].field_256 == stor3[stor3.length].field_257 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor[sha3((4 * stor3.length) + ('name', 'stor3', 3) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor3[stor3.length].field_256 = 0
                idx = 0
                while stor3[stor3.length].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor3.length) + ('name', 'stor3', 3) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        stor3[stor3.length].field_512 = arg1
        stor3[stor3.length].field_768 = 1
        stor4[address(arg2)] = stor3.length
        emit 0x7a5a7678: 32, address(arg2), 128, arg1, 1, arg3.length, arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]
    else:
        if stor4[address(arg2)] < 1:
            revert with 'NH{q', 17
        if stor4[address(arg2)] - 1 >= stor3.length:
            revert with 'NH{q', 50
        if stor3[stor4[address(arg2)] - 1].field_768:
            revert with 0, 'Pool Already Added!'
        if stor4[address(arg2)] - 1 >= stor3.length:
            revert with 'NH{q', 50
        stor3[stor4[address(arg2)] - 1].field_512 = arg1
        if stor3[stor4[address(arg2)] - 1].field_256:
            if stor3[stor4[address(arg2)] - 1].field_256 == stor3[stor4[address(arg2)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor[sha3((4 * stor4[address(arg2)] - 1) + ('name', 'stor3', 3) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor3[stor4[address(arg2)] - 1].field_256 = 0
                idx = 0
                while stor3[stor4[address(arg2)] - 1].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor4[address(arg2)] - 1) + ('name', 'stor3', 3) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor3[stor4[address(arg2)] - 1].field_256 == stor3[stor4[address(arg2)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor[sha3((4 * stor4[address(arg2)] - 1) + ('name', 'stor3', 3) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor3[stor4[address(arg2)] - 1].field_256 = 0
                idx = 0
                while stor3[stor4[address(arg2)] - 1].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor4[address(arg2)] - 1) + ('name', 'stor3', 3) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor4[address(arg2)] - 1 >= stor3.length:
            revert with 'NH{q', 50
        stor3[stor4[address(arg2)] - 1].field_768 = 1
        if stor3[stor4[address(arg2)] - 1].field_256:
            if stor3[stor4[address(arg2)] - 1].field_256 == stor3[stor4[address(arg2)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor3[stor4[address(arg2)] - 1].field_256:
                emit 0x7f2711e5: 32, stor3[stor4[address(arg2)] - 1].field_0, 128, stor3[stor4[address(arg2)] - 1].field_512, bool(stor3[stor4[address(arg2)] - 1].field_768), 2 * Mask(256, -1, stor3[stor4[address(arg2)] - 1].field_257), Mask(248, 8, stor3[stor4[address(arg2)] - 1].field_256)
            else:
                if stor3[stor4[address(arg2)] - 1].field_256 != 1:
                    emit 0x7f2711e5: mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len -ceil32(ceil32(arg3.length)) + -ceil32(return_data.size) - 97]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3[stor4[address(arg2)] - 1].field_257:
                        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + idx + 289] = stor[s + sha3((4 * stor4[address(arg2)] - 1) + ('name', 'stor3', 3) + 1)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x7f2711e5: 32, stor3[stor4[address(arg2)] - 1].field_0, 128, stor3[stor4[address(arg2)] - 1].field_512, bool(stor3[stor4[address(arg2)] - 1].field_768), 2 * Mask(256, -1, stor3[stor4[address(arg2)] - 1].field_257), mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 289 len ceil32(stor3[stor4[address(arg2)] - 1].field_257)]
        else:
            if stor3[stor4[address(arg2)] - 1].field_256 == stor3[stor4[address(arg2)] - 1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor3[stor4[address(arg2)] - 1].field_256:
                emit 0x7f2711e5: 32, stor3[stor4[address(arg2)] - 1].field_0, 128, stor3[stor4[address(arg2)] - 1].field_512, bool(stor3[stor4[address(arg2)] - 1].field_768), stor3[stor4[address(arg2)] - 1].field_256, Mask(248, 8, stor3[stor4[address(arg2)] - 1].field_256)
            else:
                if stor3[stor4[address(arg2)] - 1].field_256 != 1:
                    emit 0x7f2711e5: mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len -ceil32(ceil32(arg3.length)) + -ceil32(return_data.size) - 97]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3[stor4[address(arg2)] - 1].field_257:
                        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + idx + 289] = stor[s + sha3((4 * stor4[address(arg2)] - 1) + ('name', 'stor3', 3) + 1)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x7f2711e5: 32, stor3[stor4[address(arg2)] - 1].field_0, 128, stor3[stor4[address(arg2)] - 1].field_512, bool(stor3[stor4[address(arg2)] - 1].field_768), stor3[stor4[address(arg2)] - 1].field_256, mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 289 len ceil32(stor3[stor4[address(arg2)] - 1].field_257)]
}



}
