contract main {




// =====================  Runtime code  =====================


#
#  - yearn(address arg1, address arg2, uint256 arg3)
#  - sub_83c9a30b(?)
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
mapping of uint32 strategies;
mapping of uint32 converters;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 split;

function strategist() payable {
    return strategistAddress
}

function strategies(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(strategies[arg1])
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
    return address(converters[arg1][arg2])
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
    if arg2 == address(strategies[address(arg1)]):
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
    require ext_code.size(address(strategies[address(arg1)]))
    staticcall address(strategies[address(arg1)]).0x722713f7 with:
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
    require ext_code.size(address(strategies[address(arg1)]))
    call address(strategies[address(arg1)]).0x2e1a7d4d with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function inCaseStrategyTokenGetStuck(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!governance'
    require ext_code.size(arg1)
    call arg1.withdraw(address arg1) with:
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
    require ext_code.size(address(strategies[address(arg1)]))
    call address(strategies[address(arg1)]).0x853828b6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if address(strategies[address(arg1)]):
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).0x853828b6 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    address(strategies[address(arg1)]) = arg2
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
    staticcall arg1.0x1f1fcd51 with:
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
    staticcall onesplitAddress.getExpectedReturn(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
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

function earn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(address(strategies[address(arg1)]))
    staticcall address(strategies[address(arg1)]).0x1f1fcd51 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == arg1:
        mem[ceil32(return_data.size) + 132] = address(strategies[address(arg1)])
        mem[ceil32(return_data.size) + 164] = arg2
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, strategies[address(arg1)])
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), arg2, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 132] = address(converters[address(arg1)][address(ext_call.return_data[0])])
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])])
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]), uint32(converters[address(arg1)][address(ext_call.return_data[0])]), arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]), uint32(converters[address(arg1)][address(ext_call.return_data[0])]), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]), uint32(converters[address(arg1)][address(ext_call.return_data[0])]), arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = address(strategies[address(arg1)])
        require ext_code.size(address(converters[address(arg1)][address(ext_call.return_data[0])]))
        call address(converters[address(arg1)][address(ext_call.return_data[0])]).convert(address arg1) with:
             gas gas_remaining wei
            args address(strategies[address(arg1)])
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 296] = address(strategies[address(arg1)])
        mem[(2 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(strategies[address(arg1)]), ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(strategies[address(arg1)]), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(strategies[address(arg1)]), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
        if not mem[ceil32(return_data.size) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = address(strategies[address(arg1)])
    require ext_code.size(address(converters[address(arg1)][address(ext_call.return_data[0])]))
    call address(converters[address(arg1)][address(ext_call.return_data[0])]).convert(address arg1) with:
         gas gas_remaining wei
        args address(strategies[address(arg1)])
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(strategies[address(arg1)])
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(strategies[address(arg1)]), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, 0, address(strategies[address(arg1)]), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(strategies[address(arg1)]), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
