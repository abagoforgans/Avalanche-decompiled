contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
uint256 geUnlockTime;
mapping of uint8 stor3;
address stor5;
address stor6;
array of address stor7;
uint256 stor8;

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function geUnlockTime() payable {
    return geUnlockTime
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 0
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1.length = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function unlock() payable {
    if stor1.length != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1.length);
    owner = stor1.length
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addManyToWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdrawAllTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not stor3[address(msg.sender)]:
        revert with 0, 'Address is not whitelisted'
    mem[164] = arg4
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == stor6:
        mem[96] = 2
        mem[128 len 64] = call.data[calldata.size len 64]
        stor7.length = 2
        s = 0
        idx = 128
        while 192 > idx:
            stor7[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
        require 0 < stor7.length
        address(stor7.field_0) = arg1
        require 1 < stor7.length
        mem[0] = 7
        address(stor7.field_256) = arg2
        require arg5
        mem[192] = 11
        mem[224] = 'Portion: %s'
        mem[324] = arg4 / arg5
        mem[292] = 64
        mem[356] = 11
        mem[388] = Mask(88, 0, 'Portion: %s')
        mem[256] = 132
        mem[292 len 28] = 0
        mem[288 len 4] = 2534451664
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args 0, 64, arg4 / arg5, 11, Mask(88, 0, 'Portion: %s')
        mem[420] = 14
        mem[452] = 'msg sender: %s'
        mem[552] = msg.sender
        mem[520] = 64
        mem[584] = 14
        mem[616] = Mask(112, 0, 'msg sender: %s')
        mem[484] = 132
        mem[64] = 648
        mem[520 len 28] = 0
        mem[516 len 4] = log(string rg1, address rg2)
        staticcall 'console.log'.log(string rg1, address rg2) with:
                gas gas_remaining wei
               args 0, 64, msg.sender, 14, Mask(112, 0, 'msg sender: %s')
        idx = 0
        while idx < arg5:
            _1249 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg4 / arg5
            mem[mem[64] + 36] = 10
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = stor7.length
            if not stor7.length:
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg4 / arg5, 10, 160, address(arg3), block.timestamp, stor7.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[0] = 7
            mem[mem[64] + 196] = address(stor7.field_0)
            s = mem[64] + 196
            t = sha3(7)
            while mem[64] + (32 * stor7.length) + 196 > s + 32:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(stor5)
            call stor5.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1249 + (32 * stor7.length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = _1249 + floor32((32 * stor7.length) - 1) + 197
            continue 
    else:
        if arg2 == stor6:
            mem[96] = 2
            mem[128 len 64] = call.data[calldata.size len 64]
            stor7.length = 2
            s = 0
            idx = 128
            while 192 > idx:
                stor7[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
            require 0 < stor7.length
            address(stor7.field_0) = arg1
            require 1 < stor7.length
            mem[0] = 7
            address(stor7.field_256) = arg2
            require arg5
            mem[192] = 11
            mem[224] = 'Portion: %s'
            mem[324] = arg4 / arg5
            mem[292] = 64
            mem[356] = 11
            mem[388] = Mask(88, 0, 'Portion: %s')
            mem[256] = 132
            mem[292 len 28] = 0
            mem[288 len 4] = 2534451664
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, arg4 / arg5, 11, Mask(88, 0, 'Portion: %s')
            mem[420] = 14
            mem[452] = 'msg sender: %s'
            mem[552] = msg.sender
            mem[520] = 64
            mem[584] = 14
            mem[616] = Mask(112, 0, 'msg sender: %s')
            mem[484] = 132
            mem[64] = 648
            mem[520 len 28] = 0
            mem[516 len 4] = log(string rg1, address rg2)
            staticcall 'console.log'.log(string rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0, 64, msg.sender, 14, Mask(112, 0, 'msg sender: %s')
            idx = 0
            while idx < arg5:
                _1257 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4 / arg5
                mem[mem[64] + 36] = 10
                mem[mem[64] + 100] = arg3
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor7.length
                if not stor7.length:
                    require ext_code.size(stor5)
                    call stor5.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg4 / arg5, 10, 160, address(arg3), block.timestamp, stor7.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[0] = 7
                mem[mem[64] + 196] = address(stor7.field_0)
                s = mem[64] + 196
                t = sha3(7)
                while mem[64] + (32 * stor7.length) + 196 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1257 + (32 * stor7.length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = _1257 + floor32((32 * stor7.length) - 1) + 197
                continue 
        else:
            mem[96] = 3
            mem[128 len 96] = call.data[calldata.size len 96]
            stor7.length = 3
            s = 0
            idx = 128
            while 224 > idx:
                stor7[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 3
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
            require 0 < stor7.length
            address(stor7.field_0) = arg1
            require 1 < stor7.length
            address(stor7.field_256) = stor6
            require 2 < stor7.length
            mem[0] = 7
            address(stor7.field_512) = arg2
            require arg5
            mem[224] = 11
            mem[256] = 'Portion: %s'
            mem[356] = arg4 / arg5
            mem[324] = 64
            mem[388] = 11
            mem[420] = Mask(88, 0, 'Portion: %s')
            mem[288] = 132
            mem[324 len 28] = 0
            mem[320 len 4] = 2534451664
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, arg4 / arg5, 11, Mask(88, 0, 'Portion: %s')
            mem[452] = 14
            mem[484] = 'msg sender: %s'
            mem[584] = msg.sender
            mem[552] = 64
            mem[616] = 14
            mem[648] = Mask(112, 0, 'msg sender: %s')
            mem[516] = 132
            mem[64] = 680
            mem[552 len 28] = 0
            mem[548 len 4] = log(string rg1, address rg2)
            staticcall 'console.log'.log(string rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0, 64, msg.sender, 14, Mask(112, 0, 'msg sender: %s')
            idx = 0
            while idx < arg5:
                _1253 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4 / arg5
                mem[mem[64] + 36] = 10
                mem[mem[64] + 100] = arg3
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor7.length
                if not stor7.length:
                    require ext_code.size(stor5)
                    call stor5.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg4 / arg5, 10, 160, address(arg3), block.timestamp, stor7.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[0] = 7
                mem[mem[64] + 196] = address(stor7.field_0)
                s = mem[64] + 196
                t = sha3(7)
                while mem[64] + (32 * stor7.length) + 196 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1253 + (32 * stor7.length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = _1253 + floor32((32 * stor7.length) - 1) + 197
                continue 
}

function sellInPortions(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor5, stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == stor6:
        mem[96] = 2
        mem[64] = 192
        mem[128 len 64] = call.data[calldata.size len 64]
        stor7.length = 2
        s = 0
        idx = 128
        while 192 > idx:
            stor7[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
        require 0 < stor7.length
        address(stor7.field_0) = arg1
        require 1 < stor7.length
        mem[0] = 7
        address(stor7.field_256) = arg2
        mem[196] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg5
        if arg4 >= 100:
            idx = 0
            while idx < arg5:
                _225 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] / arg5
                mem[mem[64] + 36] = 10
                mem[mem[64] + 100] = arg3
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor7.length
                if not stor7.length:
                    require ext_code.size(stor5)
                    call stor5.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] / arg5, 10, 160, address(arg3), block.timestamp, stor7.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[0] = 7
                mem[mem[64] + 196] = address(stor7.field_0)
                s = mem[64] + 196
                t = sha3(7)
                while mem[64] + (32 * stor7.length) + 196 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _225 + (32 * stor7.length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = _225 + floor32((32 * stor7.length) - 1) + 197
                continue 
        else:
            idx = 0
            while idx < arg5:
                _226 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] * arg4 / 100 / arg5
                mem[mem[64] + 36] = 10
                mem[mem[64] + 100] = arg3
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor7.length
                if not stor7.length:
                    require ext_code.size(stor5)
                    call stor5.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * arg4 / 100 / arg5, 10, 160, address(arg3), block.timestamp, stor7.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[0] = 7
                mem[mem[64] + 196] = address(stor7.field_0)
                s = mem[64] + 196
                t = sha3(7)
                while mem[64] + (32 * stor7.length) + 196 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _226 + (32 * stor7.length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = _226 + floor32((32 * stor7.length) - 1) + 197
                continue 
    else:
        if arg2 == stor6:
            mem[96] = 2
            mem[64] = 192
            mem[128 len 64] = call.data[calldata.size len 64]
            stor7.length = 2
            s = 0
            idx = 128
            while 192 > idx:
                stor7[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
            require 0 < stor7.length
            address(stor7.field_0) = arg1
            require 1 < stor7.length
            mem[0] = 7
            address(stor7.field_256) = arg2
            mem[196] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg5
            if arg4 >= 100:
                idx = 0
                while idx < arg5:
                    _229 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] / arg5
                    mem[mem[64] + 36] = 10
                    mem[mem[64] + 100] = arg3
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor7.length
                    if not stor7.length:
                        require ext_code.size(stor5)
                        call stor5.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / arg5, 10, 160, address(arg3), block.timestamp, stor7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[0] = 7
                    mem[mem[64] + 196] = address(stor7.field_0)
                    s = mem[64] + 196
                    t = sha3(7)
                    while mem[64] + (32 * stor7.length) + 196 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _229 + (32 * stor7.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = _229 + floor32((32 * stor7.length) - 1) + 197
                    continue 
            else:
                idx = 0
                while idx < arg5:
                    _230 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] * arg4 / 100 / arg5
                    mem[mem[64] + 36] = 10
                    mem[mem[64] + 100] = arg3
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor7.length
                    if not stor7.length:
                        require ext_code.size(stor5)
                        call stor5.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * arg4 / 100 / arg5, 10, 160, address(arg3), block.timestamp, stor7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[0] = 7
                    mem[mem[64] + 196] = address(stor7.field_0)
                    s = mem[64] + 196
                    t = sha3(7)
                    while mem[64] + (32 * stor7.length) + 196 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _230 + (32 * stor7.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = _230 + floor32((32 * stor7.length) - 1) + 197
                    continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128 len 96] = call.data[calldata.size len 96]
            stor7.length = 3
            s = 0
            idx = 128
            while 224 > idx:
                stor7[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 3
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
            require 0 < stor7.length
            address(stor7.field_0) = arg1
            require 1 < stor7.length
            address(stor7.field_256) = stor6
            require 2 < stor7.length
            mem[0] = 7
            address(stor7.field_512) = arg2
            mem[228] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg5
            if arg4 >= 100:
                idx = 0
                while idx < arg5:
                    _227 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] / arg5
                    mem[mem[64] + 36] = 10
                    mem[mem[64] + 100] = arg3
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor7.length
                    if not stor7.length:
                        require ext_code.size(stor5)
                        call stor5.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / arg5, 10, 160, address(arg3), block.timestamp, stor7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[0] = 7
                    mem[mem[64] + 196] = address(stor7.field_0)
                    s = mem[64] + 196
                    t = sha3(7)
                    while mem[64] + (32 * stor7.length) + 196 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _227 + (32 * stor7.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = _227 + floor32((32 * stor7.length) - 1) + 197
                    continue 
            else:
                idx = 0
                while idx < arg5:
                    _228 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] * arg4 / 100 / arg5
                    mem[mem[64] + 36] = 10
                    mem[mem[64] + 100] = arg3
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor7.length
                    if not stor7.length:
                        require ext_code.size(stor5)
                        call stor5.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * arg4 / 100 / arg5, 10, 160, address(arg3), block.timestamp, stor7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[0] = 7
                    mem[mem[64] + 196] = address(stor7.field_0)
                    s = mem[64] + 196
                    t = sha3(7)
                    while mem[64] + (32 * stor7.length) + 196 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _228 + (32 * stor7.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = _228 + floor32((32 * stor7.length) - 1) + 197
                    continue 
}



}
