contract main {




// =====================  Runtime code  =====================


#
#  - sub_6b901135(?)
#  - vote(uint256 arg1, uint256 arg2)
#  - sub_f523a8f8(?)
#
const sub_c6dcc9aa(?) = 0

const sub_e7f5aad9(?) = 30 * 10^18

const STAKING_PERIOD = (120 * 24 * 3600)


uint8 initialized;
address stor0;
address owner; offset 8
address factoryAddress;
uint256 currentRound;
uint256 startTime;
uint256 endTime;
uint8 sub_c9d74e2c;
address stor5; offset 8
uint256 sub_48ceaeb3;
uint256 votingPower;
uint256 stor8;
mapping of struct stor9;
array of struct stor10;
uint256 sub_41887610;
uint256 sub_342d3930;
uint256 stor13;
mapping of uint8 stor15;
mapping of uint256 sub_1f405b4d;
uint8 roundEnd;
uint8 stor17; offset 8
uint256 stor17; offset 8
uint256 sub_50ed06fc;
mapping of address voter;
mapping of uint256 sub_50a6491a;
uint256 votingTime;

function initialized() {
    return bool(initialized)
}

function votingTime() {
    return votingTime
}

function sub_1f405b4d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_1f405b4d[arg1][address(arg2)]
}

function endTime() {
    return endTime
}

function sub_342d3930(?) {
    return sub_342d3930
}

function sub_41887610(?) {
    return sub_41887610
}

function sub_48ceaeb3(?) {
    return sub_48ceaeb3
}

function sub_50a6491a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_50a6491a[arg1]
}

function sub_50ed06fc(?) {
    return sub_50ed06fc
}

function ban(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function votingPower() {
    return votingPower
}

function startTime() {
    return startTime
}

function currentRound() {
    return currentRound
}

function owner() {
    return owner
}

function roundEnd() {
    return bool(roundEnd)
}

function factory() {
    return factoryAddress
}

function sub_c9d74e2c(?) {
    return bool(sub_c9d74e2c)
}

function voter(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return voter[arg1][arg2]
}

function _fallback() payable {
    revert
}

function roundOver() {
    require msg.sender == owner
    require block.timestamp > endTime
    require endTime > 0
    roundEnd = 1
}

function sub_24d7cfb1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    sub_50ed06fc = arg1
}

function roundInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return startTime, endTime, sub_41887610, sub_342d3930
}

function setVotingTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    votingTime = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_773ce4bd(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    require not roundEnd
    require arg1 < arg2
    startTime = arg1
    endTime = arg2
}

function sub_e0997a62(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require block.timestamp > startTime
    require block.timestamp < endTime
    require address(arg1) == msg.sender
    require not stor9[arg1].field_256
    stor9[arg1].field_0 = currentRound
    stor9[arg1].field_256 = block.timestamp
    stor10.length++
    stor10[stor10.length].field_0 = arg1
}

function projectOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor15[arg1]:
        return stor9[arg1].field_0, stor9[arg1].field_256, stor9[arg1].field_768, stor9[arg1].field_1024, 0, stor9[arg1].field_1536
    return stor9[arg1].field_0, 
           stor9[arg1].field_256,
           stor9[arg1].field_768,
           stor9[arg1].field_1024,
           stor9[arg1].field_1280,
           stor9[arg1].field_1536
}

function sub_9e184960(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    require not roundEnd
    require not stor15[arg1]
    if stor13 > -arg2 - 1:
        revert with 'NH{q', 17
    if stor13 + arg2 < stor13:
        revert with 'NH{q', 1
    if stor13 + arg2 < stor9[arg1].field_1280:
        revert with 'NH{q', 17
    stor13 = stor13 + arg2 - stor9[arg1].field_1280
    stor9[arg1].field_1280 = arg2
}

function sub_25758149(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if endTime > -432001:
        revert with 'NH{q', 17
    return votingPower > 10000, 30 * 10^18, endTime + (120 * 24 * 3600)
}

function sub_06c72063(?) {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == bool(arg8)
    require not initialized
    require address(arg2)
    initialized = 1
    factoryAddress = address(arg1)
    owner = address(arg2)
    startTime = arg3
    endTime = arg4
    stor5 = address(arg5)
    sub_48ceaeb3 = arg6
    votingPower = arg7
    sub_c9d74e2c = uint8(bool(arg8))
    sub_50ed06fc = 500
}

function sub_efb50e77(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    require msg.sender == owner
    require not roundEnd
    require bool(stor15[arg1]) != bool(arg2)
    stor15[arg1] = uint8(bool(arg2))
    if arg2:
        if stor13 < stor9[arg1].field_1280:
            revert with 'NH{q', 17
        stor13 -= stor9[arg1].field_1280
    else:
        if stor9[arg1].field_1280 > -stor13 - 1:
            revert with 'NH{q', 17
        if stor9[arg1].field_1280 + stor13 < stor9[arg1].field_1280:
            revert with 'NH{q', 1
        stor13 += stor9[arg1].field_1280
    emit 0x179cab6c: bool(arg2), arg1
}

function sub_53b3194c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10.length:
        mem[128] = uint256(stor10.field_0)
        idx = 128
        s = 0
        while (32 * stor10.length) + 96 > idx:
            mem[idx + 32] = stor10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor10.length, data=mem[128 len 32 * stor10.length])
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    mem[(32 * stor10.length) + 192 len 32 * stor10.length] = mem[128 len 32 * stor10.length]
    return memory
      from (32 * stor10.length) + 128
       len (96 * stor10.length) + 64
}

function withdraw() {
    require not uint8(stor17.field_8)
    Mask(248, 0, stor17.field_8) = 1
    require msg.sender == owner
    stor8 = 0
    if not stor5:
        call owner with:
           value stor8 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor5)
        call stor5.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    Mask(248, 0, stor17.field_8) = 0
}

function sub_0386aa15(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(0)
    staticcall 0x0.statusOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    if ext_call.return_data[32] < 30 * 10^18:
        return ext_call.return_data[32] >= 30 * 10^18
    if endTime > -432001:
        revert with 'NH{q', 17
    return ext_call.return_data[64] >= endTime + (120 * 24 * 3600)
}

function donate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint8(stor17.field_8)
    Mask(248, 0, stor17.field_8) = 1
    require not roundEnd
    if not stor5:
        require arg1 == msg.value
    else:
        require ext_code.size(stor5)
        call stor5.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    if not sub_50ed06fc:
        if arg1 < 0:
            revert with 'NH{q', 17
        if stor8 > -1:
            revert with 'NH{q', 17
        if sub_41887610 > -arg1 - 1:
            revert with 'NH{q', 17
        sub_41887610 += arg1
    else:
        if arg1 and sub_50ed06fc > -1 / arg1:
            revert with 'NH{q', 17
        if not sub_50ed06fc:
            revert with 'NH{q', 18
        if arg1 * sub_50ed06fc / sub_50ed06fc != arg1:
            revert with 'NH{q', 1
        if arg1 < arg1 * sub_50ed06fc / 10000:
            revert with 'NH{q', 17
        if stor8 > -(arg1 * sub_50ed06fc / 10000) - 1:
            revert with 'NH{q', 17
        stor8 += arg1 * sub_50ed06fc / 10000
        if sub_41887610 > -arg1 + (arg1 * sub_50ed06fc / 10000) - 1:
            revert with 'NH{q', 17
        sub_41887610 = sub_41887610 + arg1 - (arg1 * sub_50ed06fc / 10000)
    if sub_342d3930 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_342d3930 += arg1
    Mask(248, 0, stor17.field_8) = 0
}

function sub_85418513(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roundEnd:
        return 0
    if stor15[arg1]:
        require stor9[arg1].field_1024 >= stor9[arg1].field_1536
        return stor9[arg1].field_1024 - stor9[arg1].field_1536, stor9[arg1].field_1024
    if not stor13:
        require stor9[arg1].field_1024 >= stor9[arg1].field_1536
        return stor9[arg1].field_1024 - stor9[arg1].field_1536, stor9[arg1].field_1024
    if not sub_41887610:
        if not stor13:
            revert with 'NH{q', 18
        if stor9[arg1].field_1024 > -(0 / stor13) - 1:
            revert with 'NH{q', 17
        if stor9[arg1].field_1024 + (0 / stor13) < stor9[arg1].field_1024:
            revert with 'NH{q', 1
        require stor9[arg1].field_1024 + (0 / stor13) >= stor9[arg1].field_1536
        return stor9[arg1].field_1024 + (0 / stor13) - stor9[arg1].field_1536, stor9[arg1].field_1024 + (0 / stor13)
    if stor9[arg1].field_1280 and sub_41887610 > -1 / stor9[arg1].field_1280:
        revert with 'NH{q', 17
    if not sub_41887610:
        revert with 'NH{q', 18
    if stor9[arg1].field_1280 * sub_41887610 / sub_41887610 != stor9[arg1].field_1280:
        revert with 'NH{q', 1
    if not stor13:
        revert with 'NH{q', 18
    if stor9[arg1].field_1024 > -(stor9[arg1].field_1280 * sub_41887610 / stor13) - 1:
        revert with 'NH{q', 17
    if stor9[arg1].field_1024 + (stor9[arg1].field_1280 * sub_41887610 / stor13) < stor9[arg1].field_1024:
        revert with 'NH{q', 1
    require stor9[arg1].field_1024 + (stor9[arg1].field_1280 * sub_41887610 / stor13) >= stor9[arg1].field_1536
    return stor9[arg1].field_1024 + (stor9[arg1].field_1280 * sub_41887610 / stor13) - stor9[arg1].field_1536, 
           stor9[arg1].field_1024 + (stor9[arg1].field_1280 * sub_41887610 / stor13)
}

function sub_474a1ec8(?) {
    require stor5
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor5)
    staticcall stor5.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require ext_code.size(stor5)
        staticcall stor5.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _33 = mem[_31]
        require mem[_31] == mem[_31 + 31 len 1]
        _35 = mem[64]
        mem[mem[64]] = stor5
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = _5
        mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[mem[64] + _5 + 128] = 0
        mem[mem[64] + 64] = uint8(_33)
        return memory
          from mem[64]
           len _35 + ceil32(_5) + -mem[64] + 128
    mem[ceil32(return_data.size) + _5 + 128] = 0
    require ext_code.size(stor5)
    staticcall stor5.decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _32 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _34 = mem[_32]
    require mem[_32] == mem[_32 + 31 len 1]
    _36 = mem[64]
    mem[mem[64]] = stor5
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = _5
    mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 128] = 0
    mem[mem[64] + 64] = uint8(_34)
    return memory
      from mem[64]
       len _36 + ceil32(_5) + -mem[64] + 128
}

function sub_f9d1016f(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not uint8(stor17.field_8)
    Mask(248, 0, stor17.field_8) = 1
    require address(arg1) == msg.sender
    if not roundEnd:
        require 0 >= arg2
    else:
        if stor15[arg1]:
            require stor9[arg1].field_1024 >= stor9[arg1].field_1536
            require stor9[arg1].field_1024 - stor9[arg1].field_1536 >= arg2
        else:
            if not stor13:
                require stor9[arg1].field_1024 >= stor9[arg1].field_1536
                require stor9[arg1].field_1024 - stor9[arg1].field_1536 >= arg2
            else:
                if not sub_41887610:
                    if not stor13:
                        revert with 'NH{q', 18
                    if stor9[arg1].field_1024 > -(0 / stor13) - 1:
                        revert with 'NH{q', 17
                    if stor9[arg1].field_1024 + (0 / stor13) < stor9[arg1].field_1024:
                        revert with 'NH{q', 1
                    require stor9[arg1].field_1024 + (0 / stor13) >= stor9[arg1].field_1536
                    require stor9[arg1].field_1024 + (0 / stor13) - stor9[arg1].field_1536 >= arg2
                else:
                    if stor9[arg1].field_1280 and sub_41887610 > -1 / stor9[arg1].field_1280:
                        revert with 'NH{q', 17
                    if not sub_41887610:
                        revert with 'NH{q', 18
                    if stor9[arg1].field_1280 * sub_41887610 / sub_41887610 != stor9[arg1].field_1280:
                        revert with 'NH{q', 1
                    if not stor13:
                        revert with 'NH{q', 18
                    if stor9[arg1].field_1024 > -(stor9[arg1].field_1280 * sub_41887610 / stor13) - 1:
                        revert with 'NH{q', 17
                    if stor9[arg1].field_1024 + (stor9[arg1].field_1280 * sub_41887610 / stor13) < stor9[arg1].field_1024:
                        revert with 'NH{q', 1
                    require stor9[arg1].field_1024 + (stor9[arg1].field_1280 * sub_41887610 / stor13) >= stor9[arg1].field_1536
                    require stor9[arg1].field_1024 + (stor9[arg1].field_1280 * sub_41887610 / stor13) - stor9[arg1].field_1536 >= arg2
    if stor9[arg1].field_1536 > -arg2 - 1:
        revert with 'NH{q', 17
    stor9[arg1].field_1536 += arg2
    if not stor5:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor5)
        call stor5.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    Mask(248, 0, stor17.field_8) = 0
}

function sub_34dc50e1(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg3 > -2:
        revert with 'NH{q', 17
    if arg3 + 1 < arg3:
        revert with 'NH{q', 1
    if stor9[arg2].field_0 != currentRound:
        if not arg3 + 1:
            if not stor9[arg2][2][address(arg1)].field_0:
                if sub_48ceaeb3:
                    if False and sub_48ceaeb3 > 0:
                        revert with 'NH{q', 17
                    if not sub_48ceaeb3:
                        revert with 'NH{q', 18
                    if 0 / sub_48ceaeb3:
                        revert with 'NH{q', 1
                return 0, stor9[arg2].field_0 == currentRound
            if arg3 and stor9[arg2][2][address(arg1)].field_0 > -1 / arg3:
                revert with 'NH{q', 17
            if not stor9[arg2][2][address(arg1)].field_0:
                revert with 'NH{q', 18
            if arg3 * stor9[arg2][2][address(arg1)].field_0 / stor9[arg2][2][address(arg1)].field_0 != arg3:
                revert with 'NH{q', 1
            if 0 > (-1 * arg3 * stor9[arg2][2][address(arg1)].field_0) - 1:
                revert with 'NH{q', 17
            if arg3 * stor9[arg2][2][address(arg1)].field_0 < 0:
                revert with 'NH{q', 1
            if not sub_48ceaeb3:
                return 0, stor9[arg2].field_0 == currentRound
            if arg3 * stor9[arg2][2][address(arg1)].field_0 and sub_48ceaeb3 > -1 / arg3 * stor9[arg2][2][address(arg1)].field_0:
                revert with 'NH{q', 17
            if not sub_48ceaeb3:
                revert with 'NH{q', 18
            if arg3 * stor9[arg2][2][address(arg1)].field_0 * sub_48ceaeb3 / sub_48ceaeb3 != arg3 * stor9[arg2][2][address(arg1)].field_0:
                revert with 'NH{q', 1
            return arg3 * stor9[arg2][2][address(arg1)].field_0 * sub_48ceaeb3, stor9[arg2].field_0 == currentRound
        if arg3 and arg3 + 1 > -1 / arg3:
            revert with 'NH{q', 17
        if not arg3 + 1:
            revert with 'NH{q', 18
        if arg3 + (arg3 * arg3) / arg3 + 1 != arg3:
            revert with 'NH{q', 1
        if not stor9[arg2][2][address(arg1)].field_0:
            if arg3 + (arg3 * arg3) / 2 > -1:
                revert with 'NH{q', 17
            if arg3 + (arg3 * arg3) / 2 < arg3 + (arg3 * arg3) / 2:
                revert with 'NH{q', 1
            if not sub_48ceaeb3:
                return 0, stor9[arg2].field_0 == currentRound
            if Mask(255, 1, arg3 + (arg3 * arg3)) and sub_48ceaeb3 > -1 / arg3 + (arg3 * arg3) / 2:
                revert with 'NH{q', 17
            if not sub_48ceaeb3:
                revert with 'NH{q', 18
            if arg3 + (arg3 * arg3) / 2 * sub_48ceaeb3 / sub_48ceaeb3 != arg3 + (arg3 * arg3) / 2:
                revert with 'NH{q', 1
            return arg3 + (arg3 * arg3) / 2 * sub_48ceaeb3, stor9[arg2].field_0 == currentRound
        if arg3 and stor9[arg2][2][address(arg1)].field_0 > -1 / arg3:
            revert with 'NH{q', 17
        if not stor9[arg2][2][address(arg1)].field_0:
            revert with 'NH{q', 18
        if arg3 * stor9[arg2][2][address(arg1)].field_0 / stor9[arg2][2][address(arg1)].field_0 != arg3:
            revert with 'NH{q', 1
        if arg3 + (arg3 * arg3) / 2 > (-1 * arg3 * stor9[arg2][2][address(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if (arg3 + (arg3 * arg3) / 2) + (arg3 * stor9[arg2][2][address(arg1)].field_0) < arg3 + (arg3 * arg3) / 2:
            revert with 'NH{q', 1
        if not sub_48ceaeb3:
            return 0, stor9[arg2].field_0 == currentRound
        if (arg3 + (arg3 * arg3) / 2) + (arg3 * stor9[arg2][2][address(arg1)].field_0) and sub_48ceaeb3 > -1 / (arg3 + (arg3 * arg3) / 2) + (arg3 * stor9[arg2][2][address(arg1)].field_0):
            revert with 'NH{q', 17
        if not sub_48ceaeb3:
            revert with 'NH{q', 18
        if (arg3 + (arg3 * arg3) / 2 * sub_48ceaeb3) + (arg3 * stor9[arg2][2][address(arg1)].field_0 * sub_48ceaeb3) / sub_48ceaeb3 != (arg3 + (arg3 * arg3) / 2) + (arg3 * stor9[arg2][2][address(arg1)].field_0):
            revert with 'NH{q', 1
        return (arg3 + (arg3 * arg3) / 2 * sub_48ceaeb3) + (arg3 * stor9[arg2][2][address(arg1)].field_0 * sub_48ceaeb3), 
               stor9[arg2].field_0 == currentRound
    if not arg3 + 1:
        if not stor9[arg2][2][address(arg1)].field_0:
            if sub_48ceaeb3:
                if False and sub_48ceaeb3 > 0:
                    revert with 'NH{q', 17
                if not sub_48ceaeb3:
                    revert with 'NH{q', 18
                if 0 / sub_48ceaeb3:
                    revert with 'NH{q', 1
            return 0, block.timestamp < endTime
        if arg3 and stor9[arg2][2][address(arg1)].field_0 > -1 / arg3:
            revert with 'NH{q', 17
        if not stor9[arg2][2][address(arg1)].field_0:
            revert with 'NH{q', 18
        if arg3 * stor9[arg2][2][address(arg1)].field_0 / stor9[arg2][2][address(arg1)].field_0 != arg3:
            revert with 'NH{q', 1
        if 0 > (-1 * arg3 * stor9[arg2][2][address(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if arg3 * stor9[arg2][2][address(arg1)].field_0 < 0:
            revert with 'NH{q', 1
        if not sub_48ceaeb3:
            return 0, block.timestamp < endTime
        if arg3 * stor9[arg2][2][address(arg1)].field_0 and sub_48ceaeb3 > -1 / arg3 * stor9[arg2][2][address(arg1)].field_0:
            revert with 'NH{q', 17
        if not sub_48ceaeb3:
            revert with 'NH{q', 18
        if arg3 * stor9[arg2][2][address(arg1)].field_0 * sub_48ceaeb3 / sub_48ceaeb3 != arg3 * stor9[arg2][2][address(arg1)].field_0:
            revert with 'NH{q', 1
        return arg3 * stor9[arg2][2][address(arg1)].field_0 * sub_48ceaeb3, block.timestamp < endTime
    if arg3 and arg3 + 1 > -1 / arg3:
        revert with 'NH{q', 17
    if not arg3 + 1:
        revert with 'NH{q', 18
    if arg3 + (arg3 * arg3) / arg3 + 1 != arg3:
        revert with 'NH{q', 1
    if not stor9[arg2][2][address(arg1)].field_0:
        if arg3 + (arg3 * arg3) / 2 > -1:
            revert with 'NH{q', 17
        if arg3 + (arg3 * arg3) / 2 < arg3 + (arg3 * arg3) / 2:
            revert with 'NH{q', 1
        if not sub_48ceaeb3:
            return 0, block.timestamp < endTime
        if Mask(255, 1, arg3 + (arg3 * arg3)) and sub_48ceaeb3 > -1 / arg3 + (arg3 * arg3) / 2:
            revert with 'NH{q', 17
        if not sub_48ceaeb3:
            revert with 'NH{q', 18
        if arg3 + (arg3 * arg3) / 2 * sub_48ceaeb3 / sub_48ceaeb3 != arg3 + (arg3 * arg3) / 2:
            revert with 'NH{q', 1
        return arg3 + (arg3 * arg3) / 2 * sub_48ceaeb3, block.timestamp < endTime
    if arg3 and stor9[arg2][2][address(arg1)].field_0 > -1 / arg3:
        revert with 'NH{q', 17
    if not stor9[arg2][2][address(arg1)].field_0:
        revert with 'NH{q', 18
    if arg3 * stor9[arg2][2][address(arg1)].field_0 / stor9[arg2][2][address(arg1)].field_0 != arg3:
        revert with 'NH{q', 1
    if arg3 + (arg3 * arg3) / 2 > (-1 * arg3 * stor9[arg2][2][address(arg1)].field_0) - 1:
        revert with 'NH{q', 17
    if (arg3 + (arg3 * arg3) / 2) + (arg3 * stor9[arg2][2][address(arg1)].field_0) < arg3 + (arg3 * arg3) / 2:
        revert with 'NH{q', 1
    if not sub_48ceaeb3:
        return 0, block.timestamp < endTime
    if (arg3 + (arg3 * arg3) / 2) + (arg3 * stor9[arg2][2][address(arg1)].field_0) and sub_48ceaeb3 > -1 / (arg3 + (arg3 * arg3) / 2) + (arg3 * stor9[arg2][2][address(arg1)].field_0):
        revert with 'NH{q', 17
    if not sub_48ceaeb3:
        revert with 'NH{q', 18
    if (arg3 + (arg3 * arg3) / 2 * sub_48ceaeb3) + (arg3 * stor9[arg2][2][address(arg1)].field_0 * sub_48ceaeb3) / sub_48ceaeb3 != (arg3 + (arg3 * arg3) / 2) + (arg3 * stor9[arg2][2][address(arg1)].field_0):
        revert with 'NH{q', 1
    return (arg3 + (arg3 * arg3) / 2 * sub_48ceaeb3) + (arg3 * stor9[arg2][2][address(arg1)].field_0 * sub_48ceaeb3), 
           block.timestamp < endTime
}



}
