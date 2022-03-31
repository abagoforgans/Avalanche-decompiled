contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct reward;
mapping of struct sub_f569bedc;
address owner;
address sub_035b742fAddress;

function sub_035b742f(?) payable {
    return sub_035b742fAddress
}

function getReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return reward[arg1].field_0, 
           reward[arg1].field_256,
           reward[arg1].field_512,
           reward[arg1].field_768,
           reward[arg1].field_1024,
           reward[arg1].field_1280,
           reward[arg1].field_1536,
           reward[arg1].field_1792,
           reward[arg1].field_2048,
           reward[arg1].field_2304,
           reward[arg1].field_2560,
           reward[arg1].field_2816,
           reward[arg1].field_3072
}

function owner() payable {
    return owner
}

function sub_f569bedc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_f569bedc[arg1][arg2].field_0, sub_f569bedc[arg1][arg2].field_256, sub_f569bedc[arg1][arg2].field_512
}

function _fallback() payable {
    revert
}

function sub_704bf244(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'FN'
    reward[arg1].field_2816 = arg2
    return 1
}

function sub_d4a3670b(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    reward[arg1].field_3072 = arg2
    return 1
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    owner = arg1
    return 1
}

function setStakeContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'FN'
    sub_035b742fAddress = arg1
}

function sub_6231512d(?) payable {
    require calldata.size - 4 >= 352
    require arg8 == address(arg8)
    require arg11 == address(arg11)
    if arg10 > stor0:
        revert with 0, 'IP'
    if arg9 > stor0:
        revert with 0, 'IP'
    reward[arg1].field_0 = arg1
    reward[arg1].field_256 = arg2
    reward[arg1].field_512 = arg3
    reward[arg1].field_768 = arg4
    reward[arg1].field_1024 = arg5
    reward[arg1].field_1280 = arg6
    reward[arg1].field_1536 = arg7
    reward[arg1].field_1792 = address(arg8)
    reward[arg1].field_2048 = arg9
    reward[arg1].field_2304 = arg10
    reward[arg1].field_2560 = address(arg11)
    reward[arg1].field_3072 = 1
    return 1
}

function sub_e9b301c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_035b742fAddress)
    staticcall sub_035b742fAddress.participants(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 416 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function sub_6f2b6b9a(?) payable {
    require calldata.size - 4 >= 64
    if not reward[arg1].field_2560:
        revert with 0, 'IA'
    require ext_code.size(reward[arg1].field_2560)
    call reward[arg1].field_2560.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if reward[arg1].field_2816 > !arg2:
        revert with 0, 17
    if reward[arg1].field_2816 + arg2 < reward[arg1].field_2816:
        revert with 0, 'OADD'
    reward[arg1].field_2816 += arg2
    return 1
}

function sub_4bdf2ce4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not reward[arg2].field_3072:
        return 0
    if not reward[arg2].field_256:
        if not reward[arg2].field_512:
            if not reward[arg2].field_768:
                if not reward[arg2].field_1024:
                    if not reward[arg2].field_1280:
                        if not reward[arg2].field_1536:
                            return 2
    if not reward[arg2].field_1792:
        if reward[arg2].field_1536:
            return 3
    if not reward[arg2].field_2048:
        if not reward[arg2].field_2304:
            return 4
    if reward[arg2].field_2048 < reward[arg2].field_2304:
        return 4
    if not reward[arg2].field_2560:
        return 5
    if not reward[arg2].field_2816:
        return 6
    require ext_code.size(reward[arg2].field_2560)
    staticcall reward[arg2].field_2560.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 7
    require ext_code.size(sub_035b742fAddress)
    staticcall sub_035b742fAddress.participants(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
        revert with 0, 65
    if reward[arg2].field_512 > ext_call.return_data[0]:
        return 8
    if ext_call.return_data[32] < reward[arg2].field_768:
        return 9
    if ext_call.return_data[64] < reward[arg2].field_1024:
        return 10
    if ext_call.return_data[96] < reward[arg2].field_1280:
        return 11
    if reward[arg2].field_1536:
        require ext_code.size(reward[arg2].field_1792)
        staticcall reward[arg2].field_1792.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < reward[arg2].field_1536:
            return 12
    if block.timestamp < sub_f569bedc[address(arg1)][arg2].field_512:
        revert with 0, 17
    if block.timestamp - sub_f569bedc[address(arg1)][arg2].field_512 >= reward[arg2].field_256:
        return 1
    return 100
}

function getPrizeValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if reward[arg1].field_2304 > reward[arg1].field_2048:
        revert with 0, 'IBP'
    if reward[arg1].field_2304 == reward[arg1].field_2048:
        if reward[arg1].field_2304 <= 0:
            revert with 0, 'IBP'
        if reward[arg1].field_2304 > stor0:
            revert with 0, 'IP'
        if not reward[arg1].field_2816:
            if not stor0:
                revert with 0, '', 0
            return (0 / stor0)
        if reward[arg1].field_2816 and reward[arg1].field_2304 > -1 / reward[arg1].field_2816:
            revert with 0, 17
        if not reward[arg1].field_2816:
            revert with 0, 18
        if reward[arg1].field_2816 * reward[arg1].field_2304 / reward[arg1].field_2816 != reward[arg1].field_2304:
            revert with 0, 'OMUL'
        if not stor0:
            revert with 0, '', 0
        return (reward[arg1].field_2816 * reward[arg1].field_2304 / stor0)
    if reward[arg1].field_2304 > reward[arg1].field_2048:
        revert with 0, '', 0
    if reward[arg1].field_2048 < reward[arg1].field_2304:
        revert with 0, 17
    if not reward[arg1].field_2048 - reward[arg1].field_2304:
        revert with 0, 18
    if sha3(block.timestamp, block.difficulty, msg.sender) % reward[arg1].field_2048 - reward[arg1].field_2304 > !reward[arg1].field_2304:
        revert with 0, 17
    if (sha3(block.timestamp, block.difficulty, msg.sender) % reward[arg1].field_2048 - reward[arg1].field_2304) + reward[arg1].field_2304 < sha3(block.timestamp, block.difficulty, msg.sender) % reward[arg1].field_2048 - reward[arg1].field_2304:
        revert with 0, 'OADD'
    if (sha3(block.timestamp, block.difficulty, msg.sender) % reward[arg1].field_2048 - reward[arg1].field_2304) + reward[arg1].field_2304 <= 0:
        revert with 0, 'IBP'
    if (sha3(block.timestamp, block.difficulty, msg.sender) % reward[arg1].field_2048 - reward[arg1].field_2304) + reward[arg1].field_2304 > stor0:
        revert with 0, 'IP'
    if not reward[arg1].field_2816:
        if not stor0:
            revert with 0, '', 0
        return (0 / stor0)
    if reward[arg1].field_2816 and (sha3(block.timestamp, block.difficulty, msg.sender) % reward[arg1].field_2048 - reward[arg1].field_2304) + reward[arg1].field_2304 > -1 / reward[arg1].field_2816:
        revert with 0, 17
    if not reward[arg1].field_2816:
        revert with 0, 18
    if (sha3(block.timestamp, block.difficulty, msg.sender) % reward[arg1].field_2048 - reward[arg1].field_2304 * reward[arg1].field_2816) + (reward[arg1].field_2304 * reward[arg1].field_2816) / reward[arg1].field_2816 != (sha3(block.timestamp, block.difficulty, msg.sender) % reward[arg1].field_2048 - reward[arg1].field_2304) + reward[arg1].field_2304:
        revert with 0, 'OMUL'
    if not stor0:
        revert with 0, '', 0
    return ((sha3(block.timestamp, block.difficulty, msg.sender) % reward[arg1].field_2048 - reward[arg1].field_2304 * reward[arg1].field_2816) + (reward[arg1].field_2304 * reward[arg1].field_2816) / stor0)
}

function claim(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not reward[arg2].field_3072:
        revert with 0, 'NA'
    if not reward[arg2].field_256:
        if not reward[arg2].field_512:
            if not reward[arg2].field_768:
                if not reward[arg2].field_1024:
                    if not reward[arg2].field_1280:
                        if not reward[arg2].field_1536:
                            revert with 0, 'NA'
    if not reward[arg2].field_1792:
        if reward[arg2].field_1536:
            revert with 0, 'NA'
    if not reward[arg2].field_2048:
        if not reward[arg2].field_2304:
            revert with 0, 'NA'
    if reward[arg2].field_2048 < reward[arg2].field_2304:
        revert with 0, 'NA'
    if not reward[arg2].field_2560:
        revert with 0, 'NA'
    if not reward[arg2].field_2816:
        revert with 0, 'NA'
    require ext_code.size(reward[arg2].field_2560)
    staticcall reward[arg2].field_2560.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NA'
    require ext_code.size(sub_035b742fAddress)
    staticcall sub_035b742fAddress.participants(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
        revert with 0, 65
    if reward[arg2].field_512 > ext_call.return_data[0]:
        revert with 0, 'NA'
    if ext_call.return_data[32] < reward[arg2].field_768:
        revert with 0, 'NA'
    if ext_call.return_data[64] < reward[arg2].field_1024:
        revert with 0, 'NA'
    if ext_call.return_data[96] < reward[arg2].field_1280:
        revert with 0, 'NA'
    if reward[arg2].field_1536:
        require ext_code.size(reward[arg2].field_1792)
        staticcall reward[arg2].field_1792.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < reward[arg2].field_1536:
            revert with 0, 'NA'
    if block.timestamp < sub_f569bedc[address(arg1)][arg2].field_512:
        revert with 0, 17
    if block.timestamp - sub_f569bedc[address(arg1)][arg2].field_512 < reward[arg2].field_256:
        revert with 0, 'NA'
    if not reward[arg2].field_2048:
        revert with 0, 'IBP'
    if reward[arg2].field_2048 > stor0:
        revert with 0, 'IP'
    if arg3 <= 0:
        revert with 0, 'ZV'
    if arg3 > reward[arg2].field_2816:
        revert with 0, 'OB'
    if not reward[arg2].field_2816:
        if not stor0:
            revert with 0, '', 0
        if arg3 > 0 / stor0:
            revert with 0, 'OP'
    else:
        if reward[arg2].field_2816 and reward[arg2].field_2048 > -1 / reward[arg2].field_2816:
            revert with 0, 17
        if not reward[arg2].field_2816:
            revert with 0, 18
        if reward[arg2].field_2816 * reward[arg2].field_2048 / reward[arg2].field_2816 != reward[arg2].field_2048:
            revert with 0, 'OMUL'
        if not stor0:
            revert with 0, '', 0
        if arg3 > reward[arg2].field_2816 * reward[arg2].field_2048 / stor0:
            revert with 0, 'OP'
    if not reward[arg2].field_2560:
        revert with 0, 'IA'
    require ext_code.size(reward[arg2].field_2560)
    staticcall reward[arg2].field_2560.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'NB'
    require ext_code.size(reward[arg2].field_2560)
    call reward[arg2].field_2560.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x73eb6e57: address(arg1), arg2, block.timestamp, arg3, reward[arg2].field_2816
    if arg3 > reward[arg2].field_2816:
        revert with 0, '', 0
    if reward[arg2].field_2816 < arg3:
        revert with 0, 17
    reward[arg2].field_2816 -= arg3
    sub_f569bedc[address(arg1)][arg2].field_512 = block.timestamp
    sub_f569bedc[address(arg1)][arg2].field_256 = arg3
    return 1
}



}
