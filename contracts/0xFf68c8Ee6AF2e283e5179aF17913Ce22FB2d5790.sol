contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;
address multiSignatureAddress;

function getMultiSignatureAddress() {
    return multiSignatureAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    if msg.sender == stor0:
        return True
    return (msg.sender == stor1.length)
}

function owner() {
    idx = 160
    s = 0
    while 224 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return stor0, mem[192]
}

function transferOwnership(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.0x1ebaa166 with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]):
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]) = ext_call.return_data[0]
    if not arg2:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[calldata.size + 306 len 26]
    if arg1 >= 2:
        revert with 0, 'Ownable: index is overflow'
    emit OwnershipTransferred(address(stor[arg1]), arg2);
    address(stor[arg1]) = arg2
}

function transferETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.0x1ebaa166 with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]):
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]) = ext_call.return_data[0]
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0x735472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                        mem[calldata.size + 352 len 12]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0x735472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                        mem[calldata.size + ceil32(return_data.size) + 353 len 12]
    ('bool', 'ext_call.success')
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.0x1ebaa166 with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]):
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]) = ext_call.return_data[0]
    mem[calldata.size + 300 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[calldata.size + 364 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        43,
                        0x655472616e7366657248656c7065723a3a73616665417070726f76653a20617070726f7665206661696c65,
                        mem[calldata.size + 411 len 21]
        if calldata.size + 72:
            require calldata.size + 72 >= 32
            if not msg.sender, Mask(96, 64, this.address) >> 64:
                revert with 0, 
                            32,
                            43,
                            0x655472616e7366657248656c7065723a3a73616665417070726f76653a20617070726f7665206661696c65,
                            mem[calldata.size + 411 len 21]
    else:
        mem[calldata.size + 332 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        43,
                        0x655472616e7366657248656c7065723a3a73616665417070726f76653a20617070726f7665206661696c65,
                        mem[calldata.size + ceil32(return_data.size) + 412 len 21]
        if return_data.size:
            require return_data.size >= 32
            if not mem[calldata.size + 332]:
                revert with 0, 
                            32,
                            43,
                            0x655472616e7366657248656c7065723a3a73616665417070726f76653a20617070726f7665206661696c65,
                            mem[calldata.size + ceil32(return_data.size) + 412 len 21]
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.0x1ebaa166 with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]):
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]) = ext_call.return_data[0]
    mem[calldata.size + 300 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[calldata.size + 364 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[calldata.size + 413 len 19]
        if calldata.size + 72:
            require calldata.size + 72 >= 32
            if not msg.sender, Mask(96, 64, this.address) >> 64:
                revert with 0, 
                            32,
                            45,
                            0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[calldata.size + 413 len 19]
    else:
        mem[calldata.size + 332 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[calldata.size + ceil32(return_data.size) + 414 len 19]
        if return_data.size:
            require return_data.size >= 32
            if not mem[calldata.size + 332]:
                revert with 0, 
                            32,
                            45,
                            0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[calldata.size + ceil32(return_data.size) + 414 len 19]
}

function sub_5be6c003(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor0 != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, 'dOwnable: caller is not the owne'
    mem[ceil32(arg2.length) + 160] = address(msg.sender)
    mem[ceil32(arg2.length) + 180] = address(this.address)
    mem[ceil32(arg2.length) + 200] = msg.value
    mem[ceil32(arg2.length) + 232 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(arg2.length) + 128] = calldata.size + 72
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.0x1ebaa166 with:
            gas gas_remaining wei
           args sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), uint256(stor[sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= uint256(stor[sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])]):
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[ceil32(arg2.length) + calldata.size + 346 len 18]
    uint256(stor[sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])]) = ext_call.return_data[0]
    if eth.balance(this.address) < arg3:
        revert with 0, 
                    32,
                    38,
                    0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(arg2.length) + calldata.size + 434 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg2.length) + calldata.size + 328 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + calldata.size + floor32(arg2.length) + -(arg2.length % 32) + 360 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    call arg1.mem[ceil32(arg2.length) + calldata.size + 328 len 4] with:
       value arg3 wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + calldata.size + 332 len arg2.length - 4]
    if return_data.size:
        if ext_call.success:
            return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    32,
                    41,
                    0x6c416464726573733a206c6f772d6c6576656c2063616c6c20776974682076616c7565206661696c65,
                    mem[ceil32(arg2.length) + calldata.size + 305 len 23],
                    mem[ceil32(arg2.length) + calldata.size + 351 len 9]
    if not ext_call.success:
        if arg2.length:
            revert with arg2[all]
        revert with 0, 
                    32,
                    41,
                    0x6c416464726573733a206c6f772d6c6576656c2063616c6c20776974682076616c7565206661696c65,
                    mem[ceil32(arg2.length) + calldata.size + 305 len 23],
                    mem[ceil32(arg2.length) + calldata.size + 351 len 9]
    mem[ceil32(arg2.length) + calldata.size + 360] = arg2.length
    mem[ceil32(arg2.length) + calldata.size + 392 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        return Array(len=mem[ceil32(arg2.length) + calldata.size + 360 len floor32(arg2.length) - (arg2.length % 32)], data=mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + calldata.size + floor32(arg2.length) + 360 len (arg2.length % 32) + 32]), 
    mem[floor32(arg2.length) + ceil32(arg2.length) + calldata.size + 392] = mem[floor32(arg2.length) + ceil32(arg2.length) + calldata.size + -(arg2.length % 32) + 424 len arg2.length % 32]
    return Array(len=mem[ceil32(arg2.length) + calldata.size + 360 len floor32(arg2.length) - (arg2.length % 32)], data=mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + calldata.size + floor32(arg2.length) + 360 len 64]), 
}

function callContract(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender == stor0:
        mem[ceil32(arg2.length) + 160] = address(msg.sender)
        mem[ceil32(arg2.length) + 180] = address(this.address)
        mem[ceil32(arg2.length) + 200] = msg.value
        mem[ceil32(arg2.length) + 232 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg2.length) + 128] = calldata.size + 72
        _9 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
        mem[ceil32(arg2.length) + calldata.size + 268] = uint256(stor[sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])])
        require ext_code.size(multiSignatureAddress)
        staticcall multiSignatureAddress.0x1ebaa166 with:
                gas gas_remaining wei
               args _9, uint256(stor[_9])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= uint256(stor[_9]):
            revert with 0, 
                        32,
                        46,
                        0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[ceil32(arg2.length) + calldata.size + 346 len 18]
        uint256(stor[_9]) = ext_call.return_data[0]
    else:
        if stor1.length != msg.sender:
            revert with 0, 'dOwnable: caller is not the owne'
        mem[ceil32(arg2.length) + 160] = address(msg.sender)
        mem[ceil32(arg2.length) + 180] = address(this.address)
        mem[ceil32(arg2.length) + 200] = msg.value
        mem[ceil32(arg2.length) + 232 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg2.length) + 128] = calldata.size + 72
        _13 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
        mem[ceil32(arg2.length) + calldata.size + 268] = uint256(stor[sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])])
        require ext_code.size(multiSignatureAddress)
        staticcall multiSignatureAddress.0x1ebaa166 with:
                gas gas_remaining wei
               args _13, uint256(stor[_13])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= uint256(stor[_13]):
            revert with 0, 
                        32,
                        46,
                        0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[ceil32(arg2.length) + calldata.size + 346 len 18]
        uint256(stor[_13]) = ext_call.return_data[0]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(arg2.length) + calldata.size + 402 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg2.length) + calldata.size + 296 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + calldata.size + floor32(arg2.length) + -(arg2.length % 32) + 328 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    call arg1.mem[ceil32(arg2.length) + calldata.size + 296 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + calldata.size + 300 len arg2.length - 4]
    if return_data.size:
        if ext_call.success:
            return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'Address: low-level call failed'
    if not ext_call.success:
        if arg2.length:
            revert with arg2[all]
        revert with 0, 'Address: low-level call failed'
    mem[ceil32(arg2.length) + calldata.size + 328] = arg2.length
    mem[ceil32(arg2.length) + calldata.size + 360 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        return Array(len=mem[ceil32(arg2.length) + calldata.size + 328 len floor32(arg2.length) - (arg2.length % 32)], data=mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + calldata.size + floor32(arg2.length) + 328 len (arg2.length % 32) + 32]), 
    mem[floor32(arg2.length) + ceil32(arg2.length) + calldata.size + 360] = mem[floor32(arg2.length) + ceil32(arg2.length) + calldata.size + -(arg2.length % 32) + 392 len arg2.length % 32]
    return Array(len=mem[ceil32(arg2.length) + calldata.size + 328 len floor32(arg2.length) - (arg2.length % 32)], data=mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + calldata.size + floor32(arg2.length) + 328 len 64]), 
}



}
