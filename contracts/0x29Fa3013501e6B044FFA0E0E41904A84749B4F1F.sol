contract main {




// =====================  Runtime code  =====================


address govAddress;
address wethAddress;
address vaultAddress;
uint32 stor3;
address traderAddress;
uint256 stor3;

function gov() {
    return govAddress
}

function trader() {
    return address(traderAddress)
}

function weth() {
    return wethAddress
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function setGov(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    govAddress = arg1
}

function sub_7b514399(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[128] = arg2
    require arg3 == arg3
    mem[160] = arg3
    require arg4 == arg4
    mem[192] = arg4
    require arg5 == arg5
    mem[224] = arg5
    require arg6 == arg6
    mem[256] = arg6
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    if arg6 < block.timestamp:
        revert with 0, 'My: EXPIRED'
    mem[292] = address(arg1)
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getMinPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 292] = address(arg1)
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getMaxPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
            gas gas_remaining wei
           args address(traderAddress), address(arg1), address(arg1), 1
    mem[(2 * ceil32(return_data.size)) + 288 len 256] = ext_call.return_data[0 len 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == bool(ext_call.return_data[192])
    require ext_call.return_data[224] == ext_call.return_data[224]
    if ext_call.return_data[0] >= arg4:
        if ext_call.return_data[0] > arg5:
            if ext_call.return_data[32] + 1000000000000 * 10^18 < arg3:
                require ext_code.size(wethAddress)
                staticcall wethAddress.0x313ce567 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                mem[(6 * ceil32(return_data.size)) + 288] = 30
                mem[(6 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] > arg3:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not arg3 - ext_call.return_data[32]:
                    mem[(6 * ceil32(return_data.size)) + 352] = 26
                    mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 452] = address(traderAddress)
                    mem[(6 * ceil32(return_data.size)) + 484] = vaultAddress
                    mem[(6 * ceil32(return_data.size)) + 516] = 0 / ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 416] = 100
                    mem[(6 * ceil32(return_data.size)) + 452 len 28] = Mask(224, 0, stor3)
                    mem[(6 * ceil32(return_data.size)) + 448 len 4] = unknown_0x23b872dd(?????)
                    mem[(6 * ceil32(return_data.size)) + 548] = 32
                    mem[(6 * ceil32(return_data.size)) + 580] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 612 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, 0 / ext_call.return_data[0], 0
                    mem[(6 * ceil32(return_data.size)) + 712] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, 0 / ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, 0 / ext_call.return_data[0], 0) << 544)
                else:
                    require arg3 - ext_call.return_data[32]
                    if (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / arg3 - ext_call.return_data[32] != 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(6 * ceil32(return_data.size)) + 352] = 26
                    mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 452] = address(traderAddress)
                    mem[(6 * ceil32(return_data.size)) + 484] = vaultAddress
                    mem[(6 * ceil32(return_data.size)) + 516] = (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 416] = 100
                    mem[(6 * ceil32(return_data.size)) + 452 len 28] = Mask(224, 0, stor3)
                    mem[(6 * ceil32(return_data.size)) + 448 len 4] = unknown_0x23b872dd(?????)
                    mem[(6 * ceil32(return_data.size)) + 548] = 32
                    mem[(6 * ceil32(return_data.size)) + 580] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 612 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 0
                    mem[(6 * ceil32(return_data.size)) + 712] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1 > 0:
                            revert with memory
                              from 128
                               len arg1
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1 > 0:
                        require arg1 >= 32
                        require arg2 == bool(arg2)
                        if not arg2:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 644] == bool(mem[(6 * ceil32(return_data.size)) + 644])
                        if not mem[(6 * ceil32(return_data.size)) + 644]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(vaultAddress)
                call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                     gas gas_remaining wei
                    args address(traderAddress), address(arg1), address(arg1), 0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[32] - 1000000000000 * 10^18 > arg2:
            if arg2 > ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            call vaultAddress.decreasePosition(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7) with:
                 gas gas_remaining wei
                args address(traderAddress), address(arg1), address(arg1), ext_call.return_data[32] - arg2, 0, 1, address(traderAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if ext_call.return_data[0] > arg5:
                if ext_call.return_data[32] + 1000000000000 * 10^18 < arg3:
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.0x313ce567 with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[(6 * ceil32(return_data.size)) + 288] = 30
                    mem[(6 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not arg3 - ext_call.return_data[32]:
                        mem[(6 * ceil32(return_data.size)) + 352] = 26
                        mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 452] = address(traderAddress)
                        mem[(6 * ceil32(return_data.size)) + 484] = vaultAddress
                        mem[(6 * ceil32(return_data.size)) + 516] = 0 / ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 416] = 100
                        mem[(6 * ceil32(return_data.size)) + 452 len 28] = Mask(224, 0, stor3)
                        mem[(6 * ceil32(return_data.size)) + 448 len 4] = unknown_0x23b872dd(?????)
                        mem[(6 * ceil32(return_data.size)) + 548] = 32
                        mem[(6 * ceil32(return_data.size)) + 580] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 612 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, 0 / ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 712] = 0
                        call address(arg1) with:
                           funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, 0 / ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, 0 / ext_call.return_data[0], 0) << 544)
                    else:
                        require arg3 - ext_call.return_data[32]
                        if (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / arg3 - ext_call.return_data[32] != 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(6 * ceil32(return_data.size)) + 352] = 26
                        mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 452] = address(traderAddress)
                        mem[(6 * ceil32(return_data.size)) + 484] = vaultAddress
                        mem[(6 * ceil32(return_data.size)) + 516] = (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 416] = 100
                        mem[(6 * ceil32(return_data.size)) + 452 len 28] = Mask(224, 0, stor3)
                        mem[(6 * ceil32(return_data.size)) + 448 len 4] = unknown_0x23b872dd(?????)
                        mem[(6 * ceil32(return_data.size)) + 548] = 32
                        mem[(6 * ceil32(return_data.size)) + 580] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 612 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 712] = 0
                        call address(arg1) with:
                           funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), vaultAddress, (arg3 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[32] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1 > 0:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1 > 0:
                            require arg1 >= 32
                            require arg2 == bool(arg2)
                            if not arg2:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 644] == bool(mem[(6 * ceil32(return_data.size)) + 644])
                            if not mem[(6 * ceil32(return_data.size)) + 644]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(vaultAddress)
                    call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                         gas gas_remaining wei
                        args address(traderAddress), address(arg1), address(arg1), 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
