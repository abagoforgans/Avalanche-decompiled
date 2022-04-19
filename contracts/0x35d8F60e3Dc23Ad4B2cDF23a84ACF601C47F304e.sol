contract main {




// =====================  Runtime code  =====================


#
#  - yearn(address arg1, address arg2, uint256 arg3)
#
const max = 10000


address governanceAddress;
address strategistAddress;
address onesplitAddress;
address rewardsAddress;
mapping of address vaults;
mapping of uint32 strategies;
mapping of uint32 converters;
mapping of uint8 stor7;
uint256 split;

function strategist() payable {
    return strategistAddress
}

function strategies(address arg1) payable {
    require calldata.size - 4 >= 32
    return address(strategies[arg1])
}

function governance() payable {
    return governanceAddress
}

function rewards() payable {
    return rewardsAddress
}

function approvedStrategies(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor7[arg1][arg2])
}

function vaults(address arg1) payable {
    require calldata.size - 4 >= 32
    return vaults[arg1]
}

function converters(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return address(converters[arg1][arg2])
}

function onesplit() payable {
    return onesplitAddress
}

function split() payable {
    return split
}

function _fallback() payable {
    revert
}

function setSplit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    split = arg1
}

function setRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    rewardsAddress = arg1
}

function setOneSplit(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    onesplitAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function revokeStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor7[address(arg1)][address(arg2)] = 0
}

function approveStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor7[address(arg1)][address(arg2)] = 1
}

function setConverter(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!strategist'
    address(converters[address(arg1)][address(arg2)]) = arg3
}

function setVault(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!strategist'
    if vaults[address(arg1)]:
        revert with 0, 'vault'
    vaults[address(arg1)] = arg2
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(strategies[address(arg1)]))
    staticcall address(strategies[address(arg1)]).0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getStrategyWant(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(strategies[address(arg1)]))
    staticcall address(strategies[address(arg1)]).0x1f1fcd51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if vaults[address(arg1)] != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(strategies[address(arg1)]))
    call address(strategies[address(arg1)]).0x2e1a7d4d with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function inCaseStrategyTokenGetStuck(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
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

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!strategist'
    require ext_code.size(address(strategies[address(arg1)]))
    call address(strategies[address(arg1)]).withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!strategist'
    if bool(stor7[address(arg1)][address(arg2)]) != 1:
        revert with 0, '!approved'
    if address(strategies[address(arg1)]):
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).withdrawAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    address(strategies[address(arg1)]) = arg2
}

function getExpectedReturn(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x1f1fcd51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = address(ext_call.return_data[0])
    mem[164] = ext_call.return_data[0]
    mem[196] = arg3
    mem[228] = 0
    require ext_code.size(onesplitAddress)
    staticcall onesplitAddress.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
            gas gas_remaining wei
           args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[0], arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require 0, address(ext_call.return_data[0]) << 64 <= 4294967296
    require 0, address(ext_call.return_data[0]) << 64 + 32 <= return_data.size
    require mem[0, address(ext_call.return_data[0]) << 64 + 96] <= 4294967296 and 0, address(ext_call.return_data[0]) << 64 + (32 * mem[0, address(ext_call.return_data[0]) << 64 + 96]) + 32 <= return_data.size
    return mem[96 len 4], address(arg2) << 64
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == strategistAddress:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    else:
        if governanceAddress != msg.sender:
            revert with 0, '!governance'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function earn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(strategies[address(arg1)]))
    staticcall address(strategies[address(arg1)]).0x1f1fcd51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    if ext_call.return_data[12 len 20] == arg1:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), Mask(224, 32, arg2) >> 32
        call arg1 with:
           funct uint32(strategies[address(arg1)])
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), arg2
            if not unknown_0xa9059cbb(?????), Mask(224, 0, strategies[address(arg1)]):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).0xd0e30db0 with:
             gas gas_remaining wei
    else:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]), uint32(converters[address(arg1)][address(ext_call.return_data[0])]), Mask(224, 32, arg2) >> 32
        call arg1 with:
           funct uint32(converters[address(arg1)][address(ext_call.return_data[0])])
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), 
                            Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]),
                            uint32(converters[address(arg1)][address(ext_call.return_data[0])]),
                            arg2
            if not unknown_0xa9059cbb(?????), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(address(converters[address(arg1)][address(ext_call.return_data[0])]))
            call address(converters[address(arg1)][address(ext_call.return_data[0])]).convert(address rg1) with:
                 gas gas_remaining wei
                args address(strategies[address(arg1)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(address(ext_call.return_data[0])) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(strategies[address(arg1)])
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), 
                                Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]),
                                uint32(converters[address(arg1)][address(ext_call.return_data[0])]),
                                arg2
                if not unknown_0xa9059cbb(?????), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(address(strategies[address(arg1)]))
            call address(strategies[address(arg1)]).0xd0e30db0 with:
                 gas gas_remaining wei
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                require ext_code.size(address(converters[address(arg1)][address(ext_call.return_data[0])]))
                call address(converters[address(arg1)][address(ext_call.return_data[0])]).convert(address rg1) with:
                     gas gas_remaining wei
                    args address(strategies[address(arg1)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(address(ext_call.return_data[0])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), ext_call.return_data[0 len 28]
                call address(ext_call.return_data[0]) with:
                   funct uint32(strategies[address(arg1)])
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]),
                                    uint32(converters[address(arg1)][address(ext_call.return_data[0])]),
                                    arg2
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(address(strategies[address(arg1)]))
                    call address(strategies[address(arg1)]).0xd0e30db0 with:
                         gas gas_remaining wei
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(strategies[address(arg1)]))
                    call address(strategies[address(arg1)]).0xd0e30db0 with:
                         gas gas_remaining wei
                        args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(address(converters[address(arg1)][address(ext_call.return_data[0])]))
                call address(converters[address(arg1)][address(ext_call.return_data[0])]).convert(address rg1) with:
                     gas gas_remaining wei
                    args address(strategies[address(arg1)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(address(ext_call.return_data[0])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 489 len 0] = 0
                call address(ext_call.return_data[0]) with:
                   funct uint32(strategies[address(arg1)])
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]),
                                    uint32(converters[address(arg1)][address(ext_call.return_data[0])]),
                                    arg2
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                require ext_code.size(address(strategies[address(arg1)]))
                call address(strategies[address(arg1)]).0xd0e30db0 with:
                     gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
