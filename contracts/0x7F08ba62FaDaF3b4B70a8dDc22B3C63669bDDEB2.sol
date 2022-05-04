contract main {




// =====================  Runtime code  =====================


array of struct sub_5e63ff3f;
array of address stor1;
address multiSignatureAddress;

function threshold() payable {
    return stor1.length
}

function sub_5e63ff3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5e63ff3f.length
    return address(sub_5e63ff3f[arg1].field_0)
}

function getMultiSignatureAddress() payable {
    return multiSignatureAddress
}

function getApplicationCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return applicationCount[arg1].field_0
}

function sub_cf195165(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < applicationCount[arg1].field_0
    return address(applicationCount[arg1][arg2].field_0)
}

function _fallback() payable {
    revert
}

function getValidSignature(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = arg2
    while idx < applicationCount[arg1].field_0:
        mem[0] = sha3(arg1, 2)
        if applicationCount[arg1][idx].field_256 < stor1.length:
            idx = idx + 1
            continue 
        return (idx + 1)
    return 0
}

function sub_ea09e21b(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 160] = address(arg1)
    mem[ceil32(arg4.length) + 180] = address(arg2)
    mem[ceil32(arg4.length) + 200] = arg3
    mem[ceil32(arg4.length) + 232 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 264 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[ceil32(arg4.length) + 128] = arg4.length + 72
    mem[arg4.length + ceil32(arg4.length) + 232] = sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])
    return memory
      from arg4.length + ceil32(arg4.length) + 232
       len 32
}

function getApplicationInfo(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= applicationCount[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x214d756c7469706c65205369676e6174757265203a204d65737361676520696e646578206973206f766572666c6f77,
                    mem[211 len 17]
    require arg2 < applicationCount[arg1].field_0
    if applicationCount[arg1][arg2].field_256:
        mem[256] = address(stor[sha3(('map', ('param', 'arg1'), ('name', 'applicationCount', 2)) + (2 * arg2) + 1)].field_0)
        idx = 256
        s = 0
        while (32 * applicationCount[arg1][arg2].field_256) + 224 > idx:
            mem[idx + 32] = address(stor[s + sha3(('map', ('param', 'arg1'), ('name', 'applicationCount', 2)) + (2 * arg2) + 1)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * applicationCount[arg1][arg2].field_256) + 352 len floor32(applicationCount[arg1][arg2].field_256)] = mem[256 len floor32(applicationCount[arg1][arg2].field_256)]
    return address(applicationCount[arg1][arg2].field_0), 
           Array(len=applicationCount[arg1][arg2].field_256, data=mem[256 len floor32(applicationCount[arg1][arg2].field_256)], mem[(32 * applicationCount[arg1][arg2].field_256) + floor32(applicationCount[arg1][arg2].field_256) + 352 len (32 * applicationCount[arg1][arg2].field_256) - floor32(applicationCount[arg1][arg2].field_256)])
}

function transferOwner(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if sub_5e63ff3f.length:
        mem[128] = address(sub_5e63ff3f.field_0)
        idx = 128
        s = 0
        while (32 * sub_5e63ff3f.length) + 96 > idx:
            mem[idx + 32] = address(sub_5e63ff3f[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < sub_5e63ff3f.length:
        require idx < sub_5e63ff3f.length
        if mem[(32 * idx) + 140 len 20] != msg.sender:
            idx = idx + 1
            continue 
        require ext_code.size(multiSignatureAddress)
        staticcall multiSignatureAddress.0x1ebaa166 with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
            revert with 0, 
                        32,
                        46,
                        0x216d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[(32 * sub_5e63ff3f.length) + calldata.size + 346 len 18]
        stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
        if arg1 >= sub_5e63ff3f.length:
            revert with 0, 
                        32,
                        45,
                        0x654d756c7469706c65205369676e6174757265203a204f776e657220696e646578206973206f766572666c6f77,
                        mem[(32 * sub_5e63ff3f.length) + calldata.size + 345 len 19]
        emit TransferOwner(msg.sender, address(sub_5e63ff3f[arg1].field_0), arg2);
        address(sub_5e63ff3f[arg1].field_0) = arg2
    revert with 0, 
                32,
                52,
                0xfe4d756c7469706c65205369676e6174757265203a2063616c6c6572206973206e6f7420696e20746865206f776e65724c697374,
                mem[(32 * sub_5e63ff3f.length) + 248 len 12]
}

function signApplication(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_5e63ff3f.length:
        mem[128] = address(sub_5e63ff3f.field_0)
        if (32 * sub_5e63ff3f.length) + 32 > 64:
            mem[160] = address(sub_5e63ff3f.field_256)
            idx = 160
            s = 1
            while (32 * sub_5e63ff3f.length) + 96 > idx:
                mem[idx + 32] = address(sub_5e63ff3f[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    idx = 0
    while idx < sub_5e63ff3f.length:
        require idx < sub_5e63ff3f.length
        if mem[(32 * idx) + 140 len 20] != msg.sender:
            idx = idx + 1
            continue 
        if arg2 >= applicationCount[arg1].field_0:
            revert with 0, 
                        32,
                        47,
                        0x214d756c7469706c65205369676e6174757265203a204d65737361676520696e646578206973206f766572666c6f77,
                        mem[(32 * sub_5e63ff3f.length) + 243 len 17]
        emit SignApplication(arg2, msg.sender, arg1);
        require arg2 < applicationCount[arg1].field_0
        if applicationCount[arg1][arg2].field_256:
            mem[(32 * sub_5e63ff3f.length) + 160] = address(stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'applicationCount', 2)) + 1)].field_0)
            idx = (32 * sub_5e63ff3f.length) + 160
            s = sha3((2 * arg2) + sha3(sha3(arg1, 2)) + 1)
            while (32 * sub_5e63ff3f.length) + (32 * applicationCount[arg1][arg2].field_256) + 128 > idx:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        while idx < applicationCount[arg1][arg2].field_256:
            require idx < applicationCount[arg1][arg2].field_256
            if mem[(32 * idx) + (32 * sub_5e63ff3f.length) + 172 len 20] != msg.sender:
                idx = idx + 1
                continue 
        applicationCount[arg1][arg2].field_256++
        address(stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'applicationCount', 2)) + 1) + applicationCount[arg1][arg2].field_256].field_0) = msg.sender
    revert with 0, 
                32,
                52,
                0xfe4d756c7469706c65205369676e6174757265203a2063616c6c6572206973206e6f7420696e20746865206f776e65724c697374,
                mem[(32 * sub_5e63ff3f.length) + 248 len 12]
}

function revokeSignApplication(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_5e63ff3f.length:
        mem[128] = address(sub_5e63ff3f.field_0)
        if (32 * sub_5e63ff3f.length) + 32 > 64:
            mem[160] = address(sub_5e63ff3f.field_256)
            idx = 160
            s = 1
            while (32 * sub_5e63ff3f.length) + 96 > idx:
                mem[idx + 32] = address(sub_5e63ff3f[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    idx = 0
    while idx < sub_5e63ff3f.length:
        require idx < sub_5e63ff3f.length
        if mem[(32 * idx) + 140 len 20] != msg.sender:
            idx = idx + 1
            continue 
        if arg2 >= applicationCount[arg1].field_0:
            revert with 0, 
                        32,
                        47,
                        0x214d756c7469706c65205369676e6174757265203a204d65737361676520696e646578206973206f766572666c6f77,
                        mem[(32 * sub_5e63ff3f.length) + 243 len 17]
        emit RevokeApplication(arg2, msg.sender, arg1);
        require arg2 < applicationCount[arg1].field_0
        idx = 0
        while idx < applicationCount[arg1][arg2].field_256:
            mem[0] = (2 * arg2) + sha3(sha3(arg1, 2)) + 1
            if address(stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'applicationCount', 2)) + 1) + idx].field_0) != msg.sender:
                idx = idx + 1
                continue 
            if idx < applicationCount[arg1][arg2].field_256:
                if idx != applicationCount[arg1][arg2].field_256 - 1:
                    require applicationCount[arg1][arg2].field_256 - 1 < applicationCount[arg1][arg2].field_256
                    require idx < applicationCount[arg1][arg2].field_256
                    address(stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'applicationCount', 2)) + 1) + idx].field_0) = address(stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'applicationCount', 2)) + 1) + applicationCount[arg1][arg2].field_256].field_0)
                applicationCount[arg1][arg2].field_256--
                if applicationCount[arg1][arg2].field_256 > applicationCount[arg1][arg2].field_256 - 1:
                    idx = applicationCount[arg1][arg2].field_256 + sha3((2 * arg2) + sha3(sha3(arg1, 2)) + 1) - 1
                    while sha3((2 * arg2) + sha3(sha3(arg1, 2)) + 1) + applicationCount[arg1][arg2].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
    revert with 0, 
                32,
                52,
                0xfe4d756c7469706c65205369676e6174757265203a2063616c6c6572206973206e6f7420696e20746865206f776e65724c697374,
                mem[(32 * sub_5e63ff3f.length) + 248 len 12]
}

function sub_39e2ddce(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 160] = address(msg.sender)
    mem[ceil32(arg3.length) + 180] = address(arg1)
    mem[ceil32(arg3.length) + 200] = arg2
    mem[ceil32(arg3.length) + 232 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 264 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[ceil32(arg3.length) + 128] = arg3.length + 72
    applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0++
    address(applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0].field_0) = msg.sender
    applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0].field_256 = 0
    idx = 0
    while applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0].field_256 > idx:
        address(stor[idx + sha3((2 * applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0) + ('map', ('data', ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('data', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg3')))), ('add', ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))))))))), ('name', 'applicationCount', 2)) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    emit CreateApplication(applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0, arg2, msg.sender, arg1, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]));
    return applicationCount[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0
}



}
