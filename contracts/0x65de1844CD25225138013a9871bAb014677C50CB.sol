contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_fce7d46f;
mapping of uint256 sub_b42b3ae7;
mapping of uint8 stor3;
uint8 stor4;
address sub_2aa8481fAddress; offset 8
address sub_85adc8b0Address;
address routerAddress;
uint256 sub_83f2430d;
uint256 tax;
uint256 rate;

function sub_2761d156(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_2aa8481f(?) payable {
    return sub_2aa8481fAddress
}

function rate() payable {
    return rate
}

function routerAddress() payable {
    return routerAddress
}

function sub_457bfbbb(?) payable {
    return bool(stor4)
}

function sub_83f2430d(?) payable {
    return sub_83f2430d
}

function sub_85adc8b0(?) payable {
    return sub_85adc8b0Address
}

function owner() payable {
    return owner
}

function tax() payable {
    return tax
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
    stor4 = 0
}

function setTax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tax = arg1
}

function setRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rate = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSellInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_83f2430d = arg1
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
    if block.timestamp - sub_fce7d46f[address(arg1)] > sub_83f2430d:
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
    if block.timestamp - sub_fce7d46f[address(arg1)] <= sub_83f2430d:
        if arg2 > !sub_b42b3ae7[address(arg1)]:
            revert with 0, 17
        if arg2 + sub_b42b3ae7[address(arg1)] <= ext_call.return_data[0]:
            if sub_b42b3ae7[address(arg1)] > !arg2:
                revert with 0, 17
            sub_b42b3ae7[address(arg1)] += arg2
            mem[(2 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
            require ext_code.size(routerAddress)
            staticcall routerAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            stor4 = 1
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            mem[(4 * ceil32(return_data.size)) + 228] = routerAddress
            mem[(4 * ceil32(return_data.size)) + 260] = arg2
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0x91ef14b4 with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 388
            t = (2 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        else:
            if stor3[address(arg1)]:
                stor3[address(arg1)] = 1
                if arg2 and tax > -1 / arg2:
                    revert with 0, 17
                if not rate:
                    revert with 0, 18
                if arg2 < arg2 * tax / rate:
                    revert with 0, 17
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x91ef14b4 with:
                     gas gas_remaining wei
                    args address(arg1), owner, arg2 * tax / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x1257afca with:
                     gas gas_remaining wei
                    args address(arg1), owner, arg2 * tax / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_b42b3ae7[address(arg1)] > !arg2:
                    revert with 0, 17
                sub_b42b3ae7[address(arg1)] += arg2
                mem[(2 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
                require ext_code.size(routerAddress)
                staticcall routerAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                stor4 = 1
                mem[(4 * ceil32(return_data.size)) + 196] = this.address
                mem[(4 * ceil32(return_data.size)) + 228] = routerAddress
                mem[(4 * ceil32(return_data.size)) + 260] = arg2 - (arg2 * tax / rate)
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x91ef14b4 with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2 - (arg2 * tax / rate)
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 - (arg2 * tax / rate), 0, 160, address(arg1), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            else:
                if arg2 + sub_b42b3ae7[address(arg1)] < ext_call.return_data[0]:
                    revert with 0, 17
                stor3[address(arg1)] = 1
                if arg2 + sub_b42b3ae7[address(arg1)] - ext_call.return_data[0] and tax > -1 / arg2 + sub_b42b3ae7[address(arg1)] - ext_call.return_data[0]:
                    revert with 0, 17
                if not rate:
                    revert with 0, 18
                if arg2 < (arg2 * tax) + (sub_b42b3ae7[address(arg1)] * tax) - (ext_call.return_data[0] * tax) / rate:
                    revert with 0, 17
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x91ef14b4 with:
                     gas gas_remaining wei
                    args address(arg1), owner, (arg2 * tax) + (sub_b42b3ae7[address(arg1)] * tax) - (ext_call.return_data[0] * tax) / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x1257afca with:
                     gas gas_remaining wei
                    args address(arg1), owner, (arg2 * tax) + (sub_b42b3ae7[address(arg1)] * tax) - (ext_call.return_data[0] * tax) / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_b42b3ae7[address(arg1)] > !arg2:
                    revert with 0, 17
                sub_b42b3ae7[address(arg1)] += arg2
                mem[(2 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
                require ext_code.size(routerAddress)
                staticcall routerAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                stor4 = 1
                mem[(4 * ceil32(return_data.size)) + 196] = this.address
                mem[(4 * ceil32(return_data.size)) + 228] = routerAddress
                mem[(4 * ceil32(return_data.size)) + 260] = arg2 - ((arg2 * tax) + (sub_b42b3ae7[address(arg1)] * tax) - (ext_call.return_data[0] * tax) / rate)
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x91ef14b4 with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2 - ((arg2 * tax) + (sub_b42b3ae7[address(arg1)] * tax) - (ext_call.return_data[0] * tax) / rate)
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 - ((arg2 * tax) + (sub_b42b3ae7[address(arg1)] * tax) - (ext_call.return_data[0] * tax) / rate), 0, 160, address(arg1), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    else:
        sub_fce7d46f[address(arg1)] = block.timestamp
        sub_b42b3ae7[address(arg1)] = 0
        stor3[address(arg1)] = 0
        if arg2 <= ext_call.return_data[0]:
            if sub_b42b3ae7[address(arg1)] > !arg2:
                revert with 0, 17
            sub_b42b3ae7[address(arg1)] += arg2
            mem[(2 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
            require ext_code.size(routerAddress)
            staticcall routerAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            stor4 = 1
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            mem[(4 * ceil32(return_data.size)) + 228] = routerAddress
            mem[(4 * ceil32(return_data.size)) + 260] = arg2
            require ext_code.size(sub_85adc8b0Address)
            call sub_85adc8b0Address.0x91ef14b4 with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 388
            t = (2 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        else:
            if stor3[address(arg1)]:
                stor3[address(arg1)] = 1
                if arg2 and tax > -1 / arg2:
                    revert with 0, 17
                if not rate:
                    revert with 0, 18
                if arg2 < arg2 * tax / rate:
                    revert with 0, 17
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x91ef14b4 with:
                     gas gas_remaining wei
                    args address(arg1), owner, arg2 * tax / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x1257afca with:
                     gas gas_remaining wei
                    args address(arg1), owner, arg2 * tax / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_b42b3ae7[address(arg1)] > !arg2:
                    revert with 0, 17
                sub_b42b3ae7[address(arg1)] += arg2
                mem[(2 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
                require ext_code.size(routerAddress)
                staticcall routerAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                stor4 = 1
                mem[(4 * ceil32(return_data.size)) + 196] = this.address
                mem[(4 * ceil32(return_data.size)) + 228] = routerAddress
                mem[(4 * ceil32(return_data.size)) + 260] = arg2 - (arg2 * tax / rate)
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x91ef14b4 with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2 - (arg2 * tax / rate)
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 - (arg2 * tax / rate), 0, 160, address(arg1), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            else:
                if arg2 < ext_call.return_data[0]:
                    revert with 0, 17
                stor3[address(arg1)] = 1
                if arg2 - ext_call.return_data[0] and tax > -1 / arg2 - ext_call.return_data[0]:
                    revert with 0, 17
                if not rate:
                    revert with 0, 18
                if arg2 < (arg2 * tax) - (ext_call.return_data[0] * tax) / rate:
                    revert with 0, 17
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x91ef14b4 with:
                     gas gas_remaining wei
                    args address(arg1), owner, (arg2 * tax) - (ext_call.return_data[0] * tax) / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x1257afca with:
                     gas gas_remaining wei
                    args address(arg1), owner, (arg2 * tax) - (ext_call.return_data[0] * tax) / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_b42b3ae7[address(arg1)] > !arg2:
                    revert with 0, 17
                sub_b42b3ae7[address(arg1)] += arg2
                mem[(2 * ceil32(return_data.size)) + 128] = sub_85adc8b0Address
                require ext_code.size(routerAddress)
                staticcall routerAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                stor4 = 1
                mem[(4 * ceil32(return_data.size)) + 196] = this.address
                mem[(4 * ceil32(return_data.size)) + 228] = routerAddress
                mem[(4 * ceil32(return_data.size)) + 260] = arg2 - ((arg2 * tax) - (ext_call.return_data[0] * tax) / rate)
                require ext_code.size(sub_85adc8b0Address)
                call sub_85adc8b0Address.0x91ef14b4 with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2 - ((arg2 * tax) - (ext_call.return_data[0] * tax) / rate)
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 - ((arg2 * tax) - (ext_call.return_data[0] * tax) / rate), 0, 160, address(arg1), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
