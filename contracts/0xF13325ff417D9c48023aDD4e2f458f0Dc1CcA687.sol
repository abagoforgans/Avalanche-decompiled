contract main {




// =====================  Runtime code  =====================


#
#  - sub_d43655e2(?)
#
mapping of uint256 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address distributionPoolAddress;
array of uint256 stor2;
array of uint256 stor3;
address stor4;
address stor5;
address stor6;

function distributionPool() payable {
    return distributionPoolAddress
}

function _fallback() payable {
    revert
}

function sub_1e7fca2f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor6
    distributionPoolAddress = address(arg1)
}

function setDisabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor6
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function sub_ad619d86(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if uint8(stor1.field_160):
        revert with 0, 'Contract disabled'
    require msg.sender == stor6
    require ext_code.size(stor4)
    staticcall stor4._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0x90219732 with:
         gas gas_remaining wei
        args address(arg1), 96, 0, arg3.length, arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(msg.sender)][ext_call.return_data[0]] = arg2
}

function sub_1693a1f9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if uint8(stor1.field_160):
        revert with 0, 'Contract disabled'
    require ext_code.size(stor5)
    call stor5._isBlacklisted(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if arg1 < 0:
        revert with 0, 'COMET: Invalid tier'
    if arg1 > 2:
        revert with 0, 'COMET: Invalid tier'
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor5, stor3[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    staticcall stor4._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228 len arg2.length] = arg2[all]
    mem[(4 * ceil32(return_data.size)) + arg2.length + 228] = 0
    require ext_code.size(stor4)
    call stor4.0x90219732 with:
         gas gas_remaining wei
        args msg.sender, 96, 0, arg2.length, arg2[all], mem[(4 * ceil32(return_data.size)) + arg2.length + 228 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(msg.sender)][ext_call.return_data[0]] = arg1
}

function sub_607294e2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x486af96a00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor4)
    staticcall stor4.0x486af96a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (128 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require return_data.size + -s + 96 >= 128
        _50 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s]
        mem[_50] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_50 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_50 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 96]
        mem[_50 + 96] = mem[s + 96]
        mem[t] = _50
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    if mem[ceil32(return_data.size) + 96] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    if mem[ceil32(return_data.size) + 96] <= 0:
        revert with 0, 'CASHOUT ERROR: You don't have nodes to cash-out'
    if arg1 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[32] = sha3(address(msg.sender), 0)
    if stor0[address(msg.sender)][arg1] >= stor2.length:
        revert with 'NH{q', 50
    mem[0] = 2
    if block.timestamp <= mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96]:
        if block.timestamp < mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]]:
            revert with 'NH{q', 17
        if block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 and 694444444444444 > -1 / block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60:
            revert with 'NH{q', 17
        if mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] > 0:
            if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 > -1:
                revert with 'NH{q', 17
            if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 < mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64]:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64]:
                revert with 'NH{q', 17
            mem[mem[64]] = (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][arg1]]) / 100
        else:
            if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 > -1000000000000000001:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) + 10^18 < mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64]:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] + 10^18:
                revert with 'NH{q', 17
            mem[mem[64]] = (10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][arg1]]) / 100
    else:
        if mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] <= 0:
            if block.timestamp < mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]]:
                revert with 'NH{q', 17
            if block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 and 694444444444444 > -1 / block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60:
                revert with 'NH{q', 17
            if mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] > 0:
                if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 > -1:
                    revert with 'NH{q', 17
                if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 < mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                mem[mem[64]] = (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][arg1]]) / 100
            else:
                if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 > -1000000000000000001:
                    revert with 'NH{q', 17
                if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) + 10^18 < mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] + 10^18:
                    revert with 'NH{q', 17
                mem[mem[64]] = (10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][arg1]]) / 100
        else:
            if mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] < mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]]:
                revert with 'NH{q', 17
            if mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 and 694444444444444 > -1 / mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60:
                revert with 'NH{q', 17
            if mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] > 0:
                if 694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 > -1:
                    revert with 'NH{q', 17
                if 694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 < mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                if (694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                mem[mem[64]] = (694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][arg1]]) / 100
            else:
                if 694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 > -1000000000000000001:
                    revert with 'NH{q', 17
                if (694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) + 10^18 < mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                if (694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] + 10^18:
                    revert with 'NH{q', 17
                mem[mem[64]] = (10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * arg1) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (mem[mem[(32 * arg1) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][arg1]]) / 100
    return memory
      from mem[64]
       len 32
}

function sub_52134420(?) payable {
    mem[96] = 0x486af96a00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor4)
    staticcall stor4.0x486af96a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (128 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require return_data.size + -s + 96 >= 128
        _38 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s]
        mem[_38] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_38 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_38 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 96]
        mem[_38 + 96] = mem[s + 96]
        mem[t] = _38
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    if mem[ceil32(return_data.size) + 96] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    _39 = mem[64]
    mem[64] = mem[64] + 128
    mem[_39] = 0
    mem[_39 + 32] = 0
    mem[_39 + 64] = 0
    mem[_39 + 96] = 0
    idx = 0
    s = _39
    s = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[32] = sha3(address(msg.sender), 0)
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if stor0[address(msg.sender)][idx] >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        if block.timestamp <= mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
            if block.timestamp < mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
                revert with 'NH{q', 17
            if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 and 694444444444444 > -1 / block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] > 0:
                if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 > -1:
                    revert with 'NH{q', 17
                if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                if (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                if s > -((694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * idx) + ceil32(return_data.size) + 128]
                s = s + ((694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
                continue 
            if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 > -1000000000000000001:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) + 10^18 < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] + 10^18:
                revert with 'NH{q', 17
            if s > -((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * idx) + ceil32(return_data.size) + 128]
            s = s + ((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
            continue 
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] <= 0:
            if block.timestamp < mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
                revert with 'NH{q', 17
            if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 and 694444444444444 > -1 / block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] > 0:
                if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 > -1:
                    revert with 'NH{q', 17
                if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                if (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                    revert with 'NH{q', 17
                if s > -((694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * idx) + ceil32(return_data.size) + 128]
                s = s + ((694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
                continue 
            if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 > -1000000000000000001:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) + 10^18 < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] + 10^18:
                revert with 'NH{q', 17
            if s > -((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * idx) + ceil32(return_data.size) + 128]
            s = s + ((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
            continue 
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] < mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
            revert with 'NH{q', 17
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 and 694444444444444 > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60:
            revert with 'NH{q', 17
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] > 0:
            if 694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 > -1:
                revert with 'NH{q', 17
            if 694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                revert with 'NH{q', 17
            if (694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                revert with 'NH{q', 17
            if s > -((694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * idx) + ceil32(return_data.size) + 128]
            s = s + ((694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
            continue 
        if 694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 > -1000000000000000001:
            revert with 'NH{q', 17
        if (694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) + 10^18 < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
            revert with 'NH{q', 17
        if (694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60) + -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] + 10^18:
            revert with 'NH{q', 17
        if s > -((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * idx) + ceil32(return_data.size) + 128]
        s = s + ((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
        continue 
    return s
}

function cashoutAll() payable {
    if uint8(stor1.field_160):
        revert with 0, 'Contract disabled'
    mem[100] = msg.sender
    require ext_code.size(stor5)
    call stor5._isBlacklisted(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    mem[ceil32(return_data.size) + 96] = 0x486af96a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor4)
    staticcall stor4.0x486af96a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + (128 * _13) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _12 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _13:
        require ceil32(return_data.size) + return_data.size + -s + 96 >= 128
        _56 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s]
        mem[_56] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_56 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_56 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 96]
        mem[_56 + 96] = mem[s + 96]
        mem[t] = _56
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _54 = mem[(2 * ceil32(return_data.size)) + 96]
    if mem[(2 * ceil32(return_data.size)) + 96] <= 0:
        revert with 0, 'NODE: NO NODE OWNER'
    _57 = mem[64]
    mem[64] = mem[64] + 128
    mem[_57] = 0
    mem[_57 + 32] = 0
    mem[_57 + 64] = 0
    mem[_57 + 96] = 0
    idx = 0
    s = 0
    t = _57
    while idx < _54:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 0)
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        if block.timestamp <= mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]:
            _100 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
            if block.timestamp < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]:
                revert with 'NH{q', 17
            if block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 and 694444444444444 > -1 / block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] > 0:
                if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1:
                    revert with 'NH{q', 17
                if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                    revert with 'NH{q', 17
                if stor0[address(msg.sender)][idx] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if (694444444444444 * block.timestamp - _100 / 60) - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * block.timestamp - _100 / 60) - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                    revert with 'NH{q', 17
                if s > -((694444444444444 * block.timestamp - _100 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + ((694444444444444 * block.timestamp - _100 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
                t = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                continue 
            if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1000000000000000001:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60) + 10^18 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                revert with 'NH{q', 17
            if stor0[address(msg.sender)][idx] >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if (694444444444444 * block.timestamp - _100 / 60) + -mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * block.timestamp - _100 / 60) + -mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18:
                revert with 'NH{q', 17
            if s > -((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * block.timestamp - _100 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * block.timestamp - _100 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
            t = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            continue 
        if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] <= 0:
            _101 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
            if block.timestamp < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]:
                revert with 'NH{q', 17
            if block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 and 694444444444444 > -1 / block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] > 0:
                if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1:
                    revert with 'NH{q', 17
                if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                    revert with 'NH{q', 17
                if stor0[address(msg.sender)][idx] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if (694444444444444 * block.timestamp - _101 / 60) - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * block.timestamp - _101 / 60) - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                    revert with 'NH{q', 17
                if s > -((694444444444444 * block.timestamp - _101 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + ((694444444444444 * block.timestamp - _101 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
                t = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                continue 
            if 694444444444444 * block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1000000000000000001:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60) + 10^18 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                revert with 'NH{q', 17
            if stor0[address(msg.sender)][idx] >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if (694444444444444 * block.timestamp - _101 / 60) + -mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * block.timestamp - _101 / 60) + -mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18:
                revert with 'NH{q', 17
            if s > -((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * block.timestamp - _101 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * block.timestamp - _101 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
            t = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            continue 
        _103 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]:
            revert with 'NH{q', 17
        if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 and 694444444444444 > -1 / mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60:
            revert with 'NH{q', 17
        if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] > 0:
            if 694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1:
                revert with 'NH{q', 17
            if 694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                revert with 'NH{q', 17
            if stor0[address(msg.sender)][idx] >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if (694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - _103 / 60) - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - _103 / 60) - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                revert with 'NH{q', 17
            if s > -((694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - _103 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - _103 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
            t = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            continue 
        if 694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1000000000000000001:
            revert with 'NH{q', 17
        if (694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] / 60) + 10^18 < mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
            revert with 'NH{q', 17
        if stor0[address(msg.sender)][idx] >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        if (694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - _103 / 60) + -mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][idx]] > -1 / (694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - _103 / 60) + -mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18:
            revert with 'NH{q', 17
        if s > -((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - _103 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + ((10^18 * stor2[stor0[address(msg.sender)][idx]]) + (694444444444444 * mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96] - _103 / 60 * stor2[stor0[address(msg.sender)][idx]]) - (mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64] * stor2[stor0[address(msg.sender)][idx]]) / 100)
        t = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        continue 
    mem[mem[64] + 4] = distributionPoolAddress
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = s
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args distributionPoolAddress, msg.sender, s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_109] == bool(mem[_109])
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(stor4)
    call stor4._cashoutAllNodesReward(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_115] == mem[_115]
}

function sub_b27e77b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_160):
        revert with 0, 'Contract disabled'
    mem[100] = msg.sender
    require ext_code.size(stor5)
    call stor5._isBlacklisted(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    mem[ceil32(return_data.size) + 96] = 0x486af96a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor4)
    staticcall stor4.0x486af96a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + (128 * _13) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _12 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _13:
        require ceil32(return_data.size) + return_data.size + -s + 96 >= 128
        _105 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s]
        mem[_105] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_105 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_105 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 96]
        mem[_105 + 96] = mem[s + 96]
        mem[t] = _105
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    if mem[(2 * ceil32(return_data.size)) + 96] <= 0:
        revert with 0, 'CASHOUT ERROR: You don't have nodes to cash-out'
    mem[32] = sha3(address(msg.sender), 0)
    if arg1 >= mem[(2 * ceil32(return_data.size)) + 96]:
        revert with 'NH{q', 50
    if stor0[address(msg.sender)][arg1] >= stor2.length:
        revert with 'NH{q', 50
    mem[0] = 2
    if block.timestamp <= mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96]:
        _110 = mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]]
        if block.timestamp < mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]]:
            revert with 'NH{q', 17
        _117 = mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]
        if block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 and 694444444444444 > -1 / block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60:
            revert with 'NH{q', 17
        if mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] > 0:
            if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1:
                revert with 'NH{q', 17
            if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 < mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64] and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = distributionPoolAddress
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = (694444444444444 * block.timestamp - _110 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_117 * stor2[stor0[address(msg.sender)][arg1]]) / 100
            require ext_code.size(stor5)
            call stor5.0x23b872dd with:
                 gas gas_remaining wei
                args distributionPoolAddress, msg.sender, (694444444444444 * block.timestamp - _110 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_117 * stor2[stor0[address(msg.sender)][arg1]]) / 100
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_135] == bool(mem[_135])
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor4)
            call stor4._cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_159] == mem[_159]
            return ((694444444444444 * block.timestamp - _110 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_117 * stor2[stor0[address(msg.sender)][arg1]]) / 100)
        if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1000000000000000001:
            revert with 'NH{q', 17
        if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) + 10^18 < mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]:
            revert with 'NH{q', 17
        if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) + -mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) + -mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = distributionPoolAddress
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = (10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * block.timestamp - _110 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_117 * stor2[stor0[address(msg.sender)][arg1]]) / 100
        require ext_code.size(stor5)
        call stor5.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, (10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * block.timestamp - _110 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_117 * stor2[stor0[address(msg.sender)][arg1]]) / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_136] == bool(mem[_136])
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        require ext_code.size(stor4)
        call stor4._cashoutNodeReward(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_160] == mem[_160]
        return ((10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * block.timestamp - _110 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_117 * stor2[stor0[address(msg.sender)][arg1]]) / 100)
    if mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] <= 0:
        _111 = mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]]
        if block.timestamp < mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]]:
            revert with 'NH{q', 17
        _119 = mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]
        if block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 and 694444444444444 > -1 / block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60:
            revert with 'NH{q', 17
        if mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] > 0:
            if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1:
                revert with 'NH{q', 17
            if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 < mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]:
                revert with 'NH{q', 17
            if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64] and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = distributionPoolAddress
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = (694444444444444 * block.timestamp - _111 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_119 * stor2[stor0[address(msg.sender)][arg1]]) / 100
            require ext_code.size(stor5)
            call stor5.0x23b872dd with:
                 gas gas_remaining wei
                args distributionPoolAddress, msg.sender, (694444444444444 * block.timestamp - _111 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_119 * stor2[stor0[address(msg.sender)][arg1]]) / 100
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_139] == bool(mem[_139])
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor4)
            call stor4._cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _163 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_163] == mem[_163]
            return ((694444444444444 * block.timestamp - _111 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_119 * stor2[stor0[address(msg.sender)][arg1]]) / 100)
        if 694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1000000000000000001:
            revert with 'NH{q', 17
        if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) + 10^18 < mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]:
            revert with 'NH{q', 17
        if (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) + -mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * block.timestamp - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) + -mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = distributionPoolAddress
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = (10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * block.timestamp - _111 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_119 * stor2[stor0[address(msg.sender)][arg1]]) / 100
        require ext_code.size(stor5)
        call stor5.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, (10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * block.timestamp - _111 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_119 * stor2[stor0[address(msg.sender)][arg1]]) / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _140 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_140] == bool(mem[_140])
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        require ext_code.size(stor4)
        call stor4._cashoutNodeReward(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_164] == mem[_164]
        return ((10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * block.timestamp - _111 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_119 * stor2[stor0[address(msg.sender)][arg1]]) / 100)
    _112 = mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96]
    _113 = mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]]
    if mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] < mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]]:
        revert with 'NH{q', 17
    _121 = mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]
    if mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 and 694444444444444 > -1 / mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60:
        revert with 'NH{q', 17
    if mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] > 0:
        if 694444444444444 * mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1:
            revert with 'NH{q', 17
        if 694444444444444 * mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 < mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]:
            revert with 'NH{q', 17
        if (694444444444444 * mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64] and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = distributionPoolAddress
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = (694444444444444 * _112 - _113 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_121 * stor2[stor0[address(msg.sender)][arg1]]) / 100
        require ext_code.size(stor5)
        call stor5.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, (694444444444444 * _112 - _113 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_121 * stor2[stor0[address(msg.sender)][arg1]]) / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_141] == bool(mem[_141])
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        require ext_code.size(stor4)
        call stor4._cashoutNodeReward(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_165] == mem[_165]
        return ((694444444444444 * _112 - _113 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_121 * stor2[stor0[address(msg.sender)][arg1]]) / 100)
    if 694444444444444 * mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60 > -1000000000000000001:
        revert with 'NH{q', 17
    if (694444444444444 * mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) + 10^18 < mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64]:
        revert with 'NH{q', 17
    if (694444444444444 * mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) + -mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18 and stor2[stor0[address(msg.sender)][arg1]] > -1 / (694444444444444 * mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 96] - mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128]] / 60) + -mem[mem[(32 * arg1) + (2 * ceil32(return_data.size)) + 128] + 64] + 10^18:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = distributionPoolAddress
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = (10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * _112 - _113 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_121 * stor2[stor0[address(msg.sender)][arg1]]) / 100
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args distributionPoolAddress, msg.sender, (10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * _112 - _113 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_121 * stor2[stor0[address(msg.sender)][arg1]]) / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _142 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_142] == bool(mem[_142])
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    require ext_code.size(stor4)
    call stor4._cashoutNodeReward(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _166 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_166] == mem[_166]
    return ((10^18 * stor2[stor0[address(msg.sender)][arg1]]) + (694444444444444 * _112 - _113 / 60 * stor2[stor0[address(msg.sender)][arg1]]) - (_121 * stor2[stor0[address(msg.sender)][arg1]]) / 100)
}



}
