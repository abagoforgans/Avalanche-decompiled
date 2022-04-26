contract main {




// =====================  Runtime code  =====================


#
#  - yearn(address arg1, address arg2, uint256 arg3)
#  - sub_83c9a30b(?)
#  - earn(address arg1, uint256 arg2)
#  - inCaseTokensGetStuck(address arg1, uint256 arg2)
#
const burn = 57005

const max = 10000

const sub_9bcdff1f(?) = 100000


address onesplitAddress;
address governanceAddress;
address strategistAddress;
address devfundAddress;
address treasuryAddress;
address timelockAddress;
uint256 sub_fbe8b5ce;
mapping of address sub_6d1b4bde;
mapping of address strategies;
mapping of address converters;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 split;

function strategist() payable {
    return strategistAddress
}

function strategies(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return strategies[arg1]
}

function governance() payable {
    return governanceAddress
}

function treasury() payable {
    return treasuryAddress
}

function sub_6d1b4bde(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6d1b4bde[arg1]
}

function sub_6f8bec30(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function devfund() payable {
    return devfundAddress
}

function approvedStrategies(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor10[arg1][arg2])
}

function timelock() payable {
    return timelockAddress
}

function converters(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return converters[arg1][arg2]
}

function onesplit() payable {
    return onesplitAddress
}

function split() payable {
    return split
}

function sub_fbe8b5ce(?) payable {
    return sub_fbe8b5ce
}

function _fallback() payable {
    revert
}

function setConvenienceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    sub_fbe8b5ce = arg1
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    timelockAddress = arg1
}

function setDevFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    devfundAddress = arg1
}

function setOneSplit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    onesplitAddress = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    treasuryAddress = arg1
}

function sub_00b26753(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor11[address(arg1)] = 0
}

function sub_f89c44a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor11[address(arg1)] = 1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function approveStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    stor10[address(arg1)][address(arg2)] = 1
}

function setSplit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'numerator cannot be greater than denominator'
    split = arg1
}

function revokeStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    if arg2 == strategies[address(arg1)]:
        revert with 0, 'cannot revoke active strategy'
    stor10[address(arg1)][address(arg2)] = 0
}

function sub_30ed9dff(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!strategist'
    if sub_6d1b4bde[address(arg1)]:
        revert with 0, 'globe'
    sub_6d1b4bde[address(arg1)] = address(arg2)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(strategies[address(arg1)])
    staticcall strategies[address(arg1)].balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_6d1b4bde[address(arg1)] != msg.sender:
        revert with 0, '!globe'
    require ext_code.size(strategies[address(arg1)])
    call strategies[address(arg1)].withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!strategist'
    require ext_code.size(strategies[address(arg1)])
    call strategies[address(arg1)].withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function inCaseStrategyTokenGetStuck(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!governance'
    require ext_code.size(arg1)
    call arg1.withdraw(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!strategist'
    if bool(stor10[address(arg1)][address(arg2)]) != 1:
        revert with 0, '!approved'
    if strategies[address(arg1)]:
        require ext_code.size(strategies[address(arg1)])
        call strategies[address(arg1)].withdrawAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    strategies[address(arg1)] = arg2
}

function getExpectedReturn(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg1
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.want() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg2
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    require ext_code.size(onesplitAddress)
    staticcall onesplitAddress.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
            gas gas_remaining wei
           args address(arg2), address(ext_call.return_data[0]), ext_call.return_data[0], arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 64
    require 0, address(ext_call.return_data[0]) << 64 <= test266151307()
    require (2 * ceil32(return_data.size)) + 0, address(ext_call.return_data[0]) << 64 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    require mem[(2 * ceil32(return_data.size)) + 0, address(ext_call.return_data[0]) << 64 + 96] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + 0, address(ext_call.return_data[0]) << 64 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 0, address(ext_call.return_data[0]) << 64 + 96]) + 128 <= test266151307()
    require return_data.size >= 0, address(ext_call.return_data[0]) << 64 + (32 * mem[(2 * ceil32(return_data.size)) + 0, address(ext_call.return_data[0]) << 64 + 96]) + 32
    return mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg2) << 64
}



}
