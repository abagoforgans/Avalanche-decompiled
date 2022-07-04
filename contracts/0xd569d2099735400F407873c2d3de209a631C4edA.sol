contract main {




// =====================  Runtime code  =====================


address owner;
address devAddress;
uint256 ticketPrice;
array of uint256 sub_3fb21bbc;
mapping of uint256 sub_55f8d12f;
mapping of uint256 sub_f6238532;
mapping of struct sub_59845516;
array of uint256 sub_20be22fa;
mapping of uint256 sub_9577658f;
mapping of struct stor17;
address sub_94eaecbfAddress;
address sub_2619e2d0Address;
address sub_9c191ee5Address;
uint256 roundId;
uint256 sub_735f7b56;
uint256 sub_8e071c4d;
uint16 minNumber;
uint16 maxNumber; offset 16
uint256 ticketId;

function sub_01bf9759(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return address(sub_59845516[arg1][arg2].field_0)
}

function ticketPrice() payable {
    return ticketPrice
}

function sub_128f227e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 >= sub_59845516[arg1][arg2].field_256:
        revert with 'NH{q', 50
    return sub_128f227e[uint8(arg3)]
}

function sub_20be22fa(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg3 < sub_20be22fa[arg1][arg2]
    return sub_20be22fa[arg1][arg2][arg3]
}

function sub_2619e2d0(?) payable {
    return sub_2619e2d0Address
}

function maxNumber() payable {
    return maxNumber
}

function devAddress() payable {
    return devAddress
}

function sub_3fb21bbc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_3fb21bbc[arg1]
    return sub_3fb21bbc[arg1][arg2]
}

function sub_4feba6aa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_20be22fa[arg1][address(arg2)]
}

function minNumber() payable {
    return minNumber
}

function sub_55f8d12f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_55f8d12f[arg1]
}

function sub_59845516(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return address(sub_59845516[arg1][arg2].field_0)
}

function sub_735f7b56(?) payable {
    return sub_735f7b56
}

function roundId() payable {
    return roundId
}

function owner() payable {
    return owner
}

function sub_8e071c4d(?) payable {
    return sub_8e071c4d
}

function sub_94eaecbf(?) payable {
    return sub_94eaecbfAddress
}

function sub_9577658f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_9577658f[arg1][arg2]
}

function sub_9c191ee5(?) payable {
    return sub_9c191ee5Address
}

function sub_c8e9b303(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < stor17[arg1].field_0
    return sub_c8e9b303[uint8(arg2)]
}

function sub_f6238532(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f6238532[arg1]
}

function sub_f9dfcf87(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_3fb21bbc[arg1]
}

function ticketId() payable {
    return ticketId
}

function _fallback() payable {
    revert
}

function sub_b1ee2268(?) payable {
    return block.timestamp >= sub_55f8d12f[stor5]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_be7c919c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8e071c4d = arg1
}

function sub_da845ce0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f6238532[stor5] = arg1
}

function setTicketPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ticketPrice = arg1
}

function sub_81209bd2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxNumber = uint16(arg1)
}

function sub_cd23088b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minNumber = uint16(arg1)
}

function sub_ac7566c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_735f7b56 != 1:
        revert with 0, 'Round not in progress.'
    sub_55f8d12f[stor5] = arg1
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

function startRound(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_735f7b56:
        revert with 0, 'Round already started.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_roundReward needs to be greater than 0.'
    if roundId > -2:
        revert with 'NH{q', 17
    roundId++
    sub_735f7b56 = 1
    sub_f6238532[stor5] = arg1
    sub_55f8d12f[stor5] = arg2
}

function sub_1e30c341(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_735f7b56 != 1:
        revert with 0, 'Round not started yet.'
    mem[0] = roundId
    mem[32] = 12
    if block.timestamp < sub_55f8d12f[stor5]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Time to submit ticket did NOT expire yet.'
    idx = 0
    while uint16(idx) < sub_8e071c4d:
        if not uint16(idx):
            mem[0] = roundId
            mem[32] = 11
            if block.number < 1:
                revert with 'NH{q', 17
            mem[mem[64] + 32] = block.hash(block.number - 1)
            mem[mem[64] + 64] = sub_3fb21bbc[stor5]
            mem[mem[64] + 96] = gas_remaining
            _23 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _25 = sha3(mem[_23 + 32 len mem[_23]])
            if maxNumber < minNumber:
                revert with 'NH{q', 17
            mem[32] = 17
            stor17[stor5].field_0++
            mem[0] = sha3(roundId, 17)
            stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0 = uint16((_25 % maxNumber - minNumber) + minNumber) * 256^(2 * stor17[stor5].field_0 % 16) or !(65535 * 256^(2 * stor17[stor5].field_0 % 16)) and stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0
        else:
            if uint16(idx) == 1:
                if block.number < 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = gas_remaining
                _26 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                _28 = sha3(mem[_26 + 32 len mem[_26]])
                if maxNumber < minNumber:
                    revert with 'NH{q', 17
                mem[32] = 17
                stor17[stor5].field_0++
                mem[0] = sha3(roundId, 17)
                stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0 = uint16((_28 % maxNumber - minNumber) + minNumber) * 256^(2 * stor17[stor5].field_0 % 16) or !(65535 * 256^(2 * stor17[stor5].field_0 % 16)) and stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0
            else:
                if uint16(idx) == 2:
                    mem[0] = roundId
                    mem[32] = 11
                    if block.timestamp < sub_3fb21bbc[stor5]:
                        revert with 'NH{q', 17
                    if block.number < 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = block.timestamp - sub_3fb21bbc[stor5]
                    mem[mem[64] + 96] = gas_remaining
                    _32 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _34 = sha3(mem[_32 + 32 len mem[_32]])
                    if maxNumber < minNumber:
                        revert with 'NH{q', 17
                    mem[32] = 17
                    stor17[stor5].field_0++
                    mem[0] = sha3(roundId, 17)
                    stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0 = uint16((_34 % maxNumber - minNumber) + minNumber) * 256^(2 * stor17[stor5].field_0 % 16) or !(65535 * 256^(2 * stor17[stor5].field_0 % 16)) and stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0
                else:
                    if uint16(idx) != 3:
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = uint16(idx)
                        mem[mem[64] + 96] = gas_remaining
                        _29 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        _31 = sha3(mem[_29 + 32 len mem[_29]])
                        if maxNumber < minNumber:
                            revert with 'NH{q', 17
                        mem[32] = 17
                        stor17[stor5].field_0++
                        mem[0] = sha3(roundId, 17)
                        stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0 = uint16((_31 % maxNumber - minNumber) + minNumber) * 256^(2 * stor17[stor5].field_0 % 16) or !(65535 * 256^(2 * stor17[stor5].field_0 % 16)) and stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0
                    else:
                        mem[0] = roundId
                        mem[32] = 11
                        if block.timestamp > -sub_3fb21bbc[stor5] - 1:
                            revert with 'NH{q', 17
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = block.timestamp + sub_3fb21bbc[stor5]
                        mem[mem[64] + 96] = gas_remaining
                        _37 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        _39 = sha3(mem[_37 + 32 len mem[_37]])
                        if maxNumber < minNumber:
                            revert with 'NH{q', 17
                        mem[32] = 17
                        stor17[stor5].field_0++
                        mem[0] = sha3(roundId, 17)
                        stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0 = uint16((_39 % maxNumber - minNumber) + minNumber) * 256^(2 * stor17[stor5].field_0 % 16) or !(65535 * 256^(2 * stor17[stor5].field_0 % 16)) and stor17[stor5][Mask(252, 0, stor17[stor5].field_4)].field_0
        if uint16(idx) == 65535:
            revert with 'NH{q', 17
        idx = uint16(idx) + 1
        continue 
    sub_735f7b56 = 0
}

function sub_2fabac4c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if sub_735f7b56 != 1:
        revert with 0, 'Round not started yet.'
    mem[0] = roundId
    mem[32] = 12
    if block.timestamp >= sub_55f8d12f[stor5]:
        revert with 0, 'Time to submit ticket expired.'
    if ('cd', 4).length <= 0:
        revert with 0, 'No ticket submitted.'
    idx = 0
    s = 0
    while uint16(idx) < ('cd', 4).length:
        require cd[(cd[4] + (32 * uint16(idx)) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)])
        if cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)] != sub_8e071c4d:
            revert with 0, 'Invalid number of picks in ticket.'
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_9c191ee5Address)
        staticcall sub_9c191ee5Address.0xe37ef631 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _51 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_51] == mem[_51]
        if sub_9577658f[stor5][address(msg.sender)] >= mem[_51]:
            if s > -ticketPrice - 1:
                revert with 'NH{q', 17
            if ticketId > -2:
                revert with 'NH{q', 17
            ticketId++
            sub_3fb21bbc[stor5]++
            sub_3fb21bbc[stor5][sub_3fb21bbc[stor5]] = ticketId
            mem[32] = sha3(roundId, 15)
            sub_20be22fa[stor5][address(msg.sender)]++
            mem[0] = sha3(address(msg.sender), sha3(roundId, 15))
            sub_20be22fa[stor5][address(msg.sender)][sub_20be22fa[stor5][address(msg.sender)]] = ticketId
            _73 = mem[64]
            mem[64] = mem[64] + 64
            mem[_73] = msg.sender
            if uint16(idx) >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[(cd[4] + (32 * uint16(idx)) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)])
            _80 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 32
            mem[_80] = cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]
            mem[_80 + 32 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]]
            mem[_80 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 32] = 0
            mem[_73 + 32] = _80
            mem[32] = sha3(roundId, 14)
            address(sub_59845516[stor5][stor9].field_0) = msg.sender
            sub_59845516[stor5][stor9].field_256 = cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]
            mem[0] = sha3(ticketId, sha3(roundId, 14)) + 1
            if not cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]:
                t = sha3(sha3(ticketId, sha3(roundId, 14)) + 1)
                while sha3(sha3(ticketId, sha3(roundId, 14)) + 1) + (sub_59845516[stor5][stor9].field_256 + 31 / 32) > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
            else:
                t = 0
                u = _80 + 32
                while _80 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 32 > u:
                    sub_59845516[stor5][stor9][1].field_0 = mem[u + 31 len 1] * 256^t or !(255 * 256^t) and sub_59845516[stor5][stor9][1].field_0
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    u = u + 32
                    continue 
                t = Mask(251, 0, (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 31) >> 5
                u = sha3(sha3(ticketId, sha3(roundId, 14)) + 1)
                while t:
                    stor[u] = !(255 * 256^t) and stor[u]
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    u = (t + 1 / 32) + u
                    continue 
                t = sha3(sha3(ticketId, sha3(roundId, 14)) + 1) + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 31) >> 5 * None + 3 / 32)
                while sha3(sha3(ticketId, sha3(roundId, 14)) + 1) + (sub_59845516[stor5][stor9].field_256 + 31 / 32) > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = s + ticketPrice
            continue 
        if sub_9577658f[stor5][address(msg.sender)] > -2:
            revert with 'NH{q', 17
        sub_9577658f[stor5][address(msg.sender)]++
        if ticketId > -2:
            revert with 'NH{q', 17
        ticketId++
        sub_3fb21bbc[stor5]++
        sub_3fb21bbc[stor5][sub_3fb21bbc[stor5]] = ticketId
        mem[32] = sha3(roundId, 15)
        sub_20be22fa[stor5][address(msg.sender)]++
        mem[0] = sha3(address(msg.sender), sha3(roundId, 15))
        sub_20be22fa[stor5][address(msg.sender)][sub_20be22fa[stor5][address(msg.sender)]] = ticketId
        _67 = mem[64]
        mem[64] = mem[64] + 64
        mem[_67] = msg.sender
        if uint16(idx) >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * uint16(idx)) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)])
        _74 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 32
        mem[_74] = cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]
        mem[_74 + 32 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]]
        mem[_74 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 32] = 0
        mem[_67 + 32] = _74
        mem[32] = sha3(roundId, 14)
        address(sub_59845516[stor5][stor9].field_0) = msg.sender
        sub_59845516[stor5][stor9].field_256 = cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]
        mem[0] = sha3(ticketId, sha3(roundId, 14)) + 1
        if not cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]:
            t = sha3(sha3(ticketId, sha3(roundId, 14)) + 1)
            while sha3(sha3(ticketId, sha3(roundId, 14)) + 1) + (sub_59845516[stor5][stor9].field_256 + 31 / 32) > t:
                stor[t] = 0
                t = t + 1
                continue 
        else:
            t = 0
            u = _74 + 32
            while _74 + (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 32 > u:
                sub_59845516[stor5][stor9][1].field_0 = mem[u + 31 len 1] * 256^t or !(255 * 256^t) and sub_59845516[stor5][stor9][1].field_0
                t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                u = u + 32
                continue 
            t = Mask(251, 0, (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 31) >> 5
            u = sha3(sha3(ticketId, sha3(roundId, 14)) + 1)
            while t:
                stor[u] = !(255 * 256^t) and stor[u]
                t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                u = (t + 1 / 32) + u
                continue 
            t = sha3(sha3(ticketId, sha3(roundId, 14)) + 1) + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * cd[(cd[4] + cd[(cd[4] + (32 * uint16(idx)) + 36)] + 36)]) + 31) >> 5 * None + 3 / 32)
            while sha3(sha3(ticketId, sha3(roundId, 14)) + 1) + (sub_59845516[stor5][stor9].field_256 + 31 / 32) > t:
                stor[t] = 0
                t = t + 1
                continue 
        if uint16(idx) == 65535:
            revert with 'NH{q', 17
        idx = uint16(idx) + 1
        s = s
        continue 
    if s > 0:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = sub_94eaecbfAddress
        mem[mem[64] + 68] = s
        require ext_code.size(sub_2619e2d0Address)
        call sub_2619e2d0Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_94eaecbfAddress, s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _54 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_54] == bool(mem[_54])
        if not mem[_54]:
            revert with 0, 'Payment failed.'
}



}
