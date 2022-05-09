contract main {




// =====================  Runtime code  =====================


address stor0;
address owner;
address adminAddress;
address WAVAXAddress;
array of address path;
uint256 stor5;
uint256 stor6;

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < path.length
    return path[arg1]
}

function admin() {
    return adminAddress
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner.'
    require arg1
    stor0 = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner.'
    require arg1
    adminAddress = arg1
}

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner.'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setToken(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner.'
    require arg1
    stor5 = arg2
    stor6 = arg3
    path.length++
    path[path.length] = WAVAXAddress
    path.length++
    path[path.length] = arg1
}

function updatePath(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner.'
    require arg1
    if not path.length:
        revert with 0, 49
    path[path.length] = 0
    path.length--
    path[path.length] = 0
    path.length--
    path.length++
    path[path.length] = WAVAXAddress
    path.length++
    path[path.length] = arg1
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f3d7b4f2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not return_data.size:
        require mem[128 len 20]
        if eth.balance(this.address) >= stor5:
            if 15 > !block.timestamp:
                revert with 0, 17
            idx = 0
            s = ceil32(ceil32(arg2.length)) + 261
            t = 0
            while idx < path.length:
                mem[s] = path[t]
                idx = idx + 1
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(stor0)
            call stor0.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value stor5 wei
                 gas gas_remaining wei
                args stor6, Array(len=path.length, data=mem[ceil32(ceil32(arg2.length)) + 261 len 32 * path.length]), adminAddress, block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[ceil32(ceil32(arg2.length)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require mem[ceil32(ceil32(arg2.length)) + 129 len 20]
        if eth.balance(this.address) >= stor5:
            if 15 > !block.timestamp:
                revert with 0, 17
            idx = 0
            s = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262
            t = 0
            while idx < path.length:
                mem[s] = path[t]
                idx = idx + 1
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(stor0)
            call stor0.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value stor5 wei
                 gas gas_remaining wei
                args stor6, Array(len=path.length, data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 32 * path.length]), adminAddress, block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xaf6d1fe4(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x39cd523d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Caller is not the owner.'
                require address(arg1)
                if not path.length:
                    revert with 0, 49
                path[path.length] = 0
                path.length--
                path[path.length] = 0
                path.length--
                path.length++
                path[path.length] = WAVAXAddress
                path.length++
                path[path.length] = address(arg1)
            else:
                if unknown_0x704b6c02(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Caller is not the owner.'
                    require address(arg1)
                    adminAddress = address(arg1)
                else:
                    if unknown_0x73b295c2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return WAVAXAddress
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0xa7311f53(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Caller is not the owner.'
                    require address(arg1)
                    stor5 = arg2
                    stor6 = arg3
                    path.length++
                    path[path.length] = WAVAXAddress
                    path.length++
                    path[path.length] = address(arg1)
        else:
            if unknown_0xaf6d1fe4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 < path.length
                return path[arg1]
            if unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Caller is not the owner.'
                require address(arg1)
                stor0 = address(arg1)
            else:
                if unknown_0xe086e5ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Caller is not the owner.'
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xf3d7b4f2(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xf4f3b200(?????):
                            require unknown_0xf851a440(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return adminAddress
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Caller is not the owner.'
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(arg1))
                        call address(arg1).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 <= test266151307()
                        require arg2 + 35 < calldata.size
                        if arg2.length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = arg2.length
                        require arg2 + arg2.length + 36 <= calldata.size
                        mem[160 len arg2.length] = arg2[all]
                        mem[arg2.length + 160] = 0
                        mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[ceil32(ceil32(arg2.length)) + arg2.length + 129] = 0
                        call address(arg1).mem[ceil32(ceil32(arg2.length)) + 129 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg2.length)) + 133 len arg2.length - 4]
                        if not return_data.size:
                            require Mask(160, 96, arg2.length) >> 96
                            if eth.balance(this.address) >= stor5:
                                if 15 > !block.timestamp:
                                    revert with 0, 17
                                idx = 0
                                s = ceil32(ceil32(arg2.length)) + 293
                                t = 0
                                while idx < path.length:
                                    mem[s] = path[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor0)
                                call stor0.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor5 wei
                                     gas gas_remaining wei
                                    args stor6, Array(len=path.length, data=mem[ceil32(ceil32(arg2.length)) + 293 len 32 * path.length]), adminAddress, block.timestamp + 15
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[ceil32(ceil32(arg2.length)) + 161 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(ceil32(arg2.length)) + 161 len 20]
                            if eth.balance(this.address) >= stor5:
                                if 15 > !block.timestamp:
                                    revert with 0, 17
                                idx = 0
                                s = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 294
                                t = 0
                                while idx < path.length:
                                    mem[s] = path[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor0)
                                call stor0.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor5 wei
                                     gas gas_remaining wei
                                    args stor6, Array(len=path.length, data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 294 len 32 * path.length]), adminAddress, block.timestamp + 15
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}



}
