contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_fce7d46f;
mapping of uint256 sub_b42b3ae7;
mapping of uint8 stor3;
uint8 sub_457bfbbb;
address stor4;
address sub_2aa8481fAddress; offset 8
address sub_85adc8b0Address;
address routerAddress;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function sub_2761d156(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_2aa8481f(?) payable {
    return sub_2aa8481fAddress
}

function routerAddress() payable {
    return routerAddress
}

function sub_457bfbbb(?) payable {
    return bool(sub_457bfbbb)
}

function sub_85adc8b0(?) payable {
    return sub_85adc8b0Address
}

function owner() payable {
    return owner
}

function sub_b42b3ae7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b42b3ae7[arg1]
}

function sub_fce7d46f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fce7d46f[arg1]
}

function _fallback() payable {
    revert
}

function sub_34e5bda2(?) payable {
    sub_457bfbbb = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function sub_15889446(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1):
        sub_2aa8481fAddress = address(arg1)
    if address(arg2):
        sub_85adc8b0Address = address(arg2)
    if address(arg3):
        routerAddress = address(arg3)
}

function sub_d41cf2e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_2aa8481fAddress)
    staticcall sub_2aa8481fAddress.0x32295c84 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_b42b3ae7[address(arg1)]:
        return 0
    if block.timestamp < sub_fce7d46f[address(arg1)]:
        revert with 0, 17
    if block.timestamp - sub_fce7d46f[address(arg1)] > stor7:
        return ext_call.return_data[0]
    if ext_call.return_data[0] < sub_b42b3ae7[address(arg1)]:
        revert with 0, 17
    return (ext_call.return_data[0] - sub_b42b3ae7[address(arg1)])
}

function sub_ef28fd9c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_85adc8b0Address)
    staticcall sub_85adc8b0Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'sell amount exceeds balance'
    mem[ceil32(return_data.size) + 100] = address(arg1)
    require ext_code.size(sub_2aa8481fAddress)
    staticcall sub_2aa8481fAddress.0x32295c84 with:
            gas gas_remaining wei
           args address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < sub_fce7d46f[address(arg1)]:
        revert with 0, 17
    if block.timestamp - sub_fce7d46f[address(arg1)] <= stor7:
        if arg2 > !sub_b42b3ae7[address(arg1)]:
            revert with 0, 17
        if arg2 + sub_b42b3ae7[address(arg1)] <= ext_call.return_data[0]:
            if sub_b42b3ae7[address(arg1)] > !arg2:
                revert with 0, 17
            sub_b42b3ae7[address(arg1)] += arg2
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), stor4, arg2
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
            require ext_code.size(routerAddress)
            staticcall routerAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            sub_457bfbbb = 1
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.setApprove(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args this.address, routerAddress, arg2, mem[(6 * ceil32(return_data.size)) + 292 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = arg2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 388
            t = (4 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
        else:
            if stor3[address(arg1)]:
                stor3[address(arg1)] = 1
                if arg2 and stor8 > -1 / arg2:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if arg2 < arg2 * stor8 / stor9:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
                mem[(2 * ceil32(return_data.size)) + 164] = arg2 * stor8 / stor9
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), stor4, arg2 * stor8 / stor9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_b42b3ae7[address(arg1)] > !arg2:
                    revert with 0, 17
                sub_b42b3ae7[address(arg1)] += arg2
                mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
                mem[(4 * ceil32(return_data.size)) + 164] = arg2 - (arg2 * stor8 / stor9)
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), stor4, arg2 - (arg2 * stor8 / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
                require ext_code.size(routerAddress)
                staticcall routerAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                sub_457bfbbb = 1
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.setApprove(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, routerAddress, arg2 - (arg2 * stor8 / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 196] = arg2 - (arg2 * stor8 / stor9)
                idx = 0
                s = (7 * ceil32(return_data.size)) + 388
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 - (arg2 * stor8 / stor9), 0, 160, address(arg1), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            else:
                if arg2 + sub_b42b3ae7[address(arg1)] < ext_call.return_data[0]:
                    revert with 0, 17
                stor3[address(arg1)] = 1
                if arg2 + sub_b42b3ae7[address(arg1)] - ext_call.return_data[0] and stor8 > -1 / arg2 + sub_b42b3ae7[address(arg1)] - ext_call.return_data[0]:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if arg2 < (arg2 * stor8) + (sub_b42b3ae7[address(arg1)] * stor8) - (ext_call.return_data[0] * stor8) / stor9:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
                mem[(2 * ceil32(return_data.size)) + 164] = (arg2 * stor8) + (sub_b42b3ae7[address(arg1)] * stor8) - (ext_call.return_data[0] * stor8) / stor9
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), stor4, (arg2 * stor8) + (sub_b42b3ae7[address(arg1)] * stor8) - (ext_call.return_data[0] * stor8) / stor9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_b42b3ae7[address(arg1)] > !arg2:
                    revert with 0, 17
                sub_b42b3ae7[address(arg1)] += arg2
                mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
                mem[(4 * ceil32(return_data.size)) + 164] = arg2 - ((arg2 * stor8) + (sub_b42b3ae7[address(arg1)] * stor8) - (ext_call.return_data[0] * stor8) / stor9)
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), stor4, arg2 - ((arg2 * stor8) + (sub_b42b3ae7[address(arg1)] * stor8) - (ext_call.return_data[0] * stor8) / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
                require ext_code.size(routerAddress)
                staticcall routerAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                sub_457bfbbb = 1
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.setApprove(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, routerAddress, arg2 - ((arg2 * stor8) + (sub_b42b3ae7[address(arg1)] * stor8) - (ext_call.return_data[0] * stor8) / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 196] = arg2 - ((arg2 * stor8) + (sub_b42b3ae7[address(arg1)] * stor8) - (ext_call.return_data[0] * stor8) / stor9)
                idx = 0
                s = (7 * ceil32(return_data.size)) + 388
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 - ((arg2 * stor8) + (sub_b42b3ae7[address(arg1)] * stor8) - (ext_call.return_data[0] * stor8) / stor9), 0, 160, address(arg1), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
    else:
        sub_fce7d46f[address(arg1)] = block.timestamp
        sub_b42b3ae7[address(arg1)] = 0
        stor3[address(arg1)] = 0
        if arg2 <= ext_call.return_data[0]:
            if sub_b42b3ae7[address(arg1)] > !arg2:
                revert with 0, 17
            sub_b42b3ae7[address(arg1)] += arg2
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), stor4, arg2
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
            require ext_code.size(routerAddress)
            staticcall routerAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            sub_457bfbbb = 1
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.setApprove(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args this.address, routerAddress, arg2, mem[(6 * ceil32(return_data.size)) + 292 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = arg2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 388
            t = (4 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
        else:
            if stor3[address(arg1)]:
                stor3[address(arg1)] = 1
                if arg2 and stor8 > -1 / arg2:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if arg2 < arg2 * stor8 / stor9:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
                mem[(2 * ceil32(return_data.size)) + 164] = arg2 * stor8 / stor9
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), stor4, arg2 * stor8 / stor9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_b42b3ae7[address(arg1)] > !arg2:
                    revert with 0, 17
                sub_b42b3ae7[address(arg1)] += arg2
                mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
                mem[(4 * ceil32(return_data.size)) + 164] = arg2 - (arg2 * stor8 / stor9)
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), stor4, arg2 - (arg2 * stor8 / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
                require ext_code.size(routerAddress)
                staticcall routerAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                sub_457bfbbb = 1
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.setApprove(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, routerAddress, arg2 - (arg2 * stor8 / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 196] = arg2 - (arg2 * stor8 / stor9)
                idx = 0
                s = (7 * ceil32(return_data.size)) + 388
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 - (arg2 * stor8 / stor9), 0, 160, address(arg1), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            else:
                if arg2 < ext_call.return_data[0]:
                    revert with 0, 17
                stor3[address(arg1)] = 1
                if arg2 - ext_call.return_data[0] and stor8 > -1 / arg2 - ext_call.return_data[0]:
                    revert with 0, 17
                if not stor9:
                    revert with 0, 18
                if arg2 < (arg2 * stor8) - (ext_call.return_data[0] * stor8) / stor9:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
                mem[(2 * ceil32(return_data.size)) + 164] = (arg2 * stor8) - (ext_call.return_data[0] * stor8) / stor9
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), stor4, (arg2 * stor8) - (ext_call.return_data[0] * stor8) / stor9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_b42b3ae7[address(arg1)] > !arg2:
                    revert with 0, 17
                sub_b42b3ae7[address(arg1)] += arg2
                mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 132] = sub_2aa8481fAddress
                mem[(4 * ceil32(return_data.size)) + 164] = arg2 - ((arg2 * stor8) - (ext_call.return_data[0] * stor8) / stor9)
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), stor4, arg2 - ((arg2 * stor8) - (ext_call.return_data[0] * stor8) / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
                require ext_code.size(routerAddress)
                staticcall routerAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                sub_457bfbbb = 1
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.setApprove(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, routerAddress, arg2 - ((arg2 * stor8) - (ext_call.return_data[0] * stor8) / stor9)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 196] = arg2 - ((arg2 * stor8) - (ext_call.return_data[0] * stor8) / stor9)
                idx = 0
                s = (7 * ceil32(return_data.size)) + 388
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 - ((arg2 * stor8) - (ext_call.return_data[0] * stor8) / stor9), 0, 160, address(arg1), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
