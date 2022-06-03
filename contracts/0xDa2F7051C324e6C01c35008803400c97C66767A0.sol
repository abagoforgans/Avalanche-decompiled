contract main {




// =====================  Runtime code  =====================


const getProxyId = Mask(32, 224, sha3(0xfe4552433131353541737365747328616464726573732c75696e743235365b5d2c75696e743235365b5d2c6279746573))


address owner;
mapping of uint8 stor1;
array of struct authorities;

function authorities(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < authorities.length
    return address(authorities[arg1].field_0)
}

function owner() payable {
    return owner
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if arg1:
        owner = arg1
}

function addAuthorizedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if stor1[address(arg1)]:
        revert with 0, 'TARGET_ALREADY_AUTHORIZED'
    stor1[address(arg1)] = 1
    authorities.length++
    address(authorities[authorities.length].field_0) = arg1
    emit AuthorizedAddressAdded(arg1, msg.sender);
}

function removeAuthorizedAddressAtIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if not stor1[address(arg1)]:
        revert with 0, 'TARGET_NOT_AUTHORIZED'
    if arg2 >= authorities.length:
        revert with 0, 'INDEX_OUT_OF_BOUNDS'
    if address(authorities[arg2].field_0) != arg1:
        revert with 0, 'AUTHORIZED_ADDRESS_MISMATCH'
    stor1[address(arg1)] = 0
    require authorities.length - 1 < authorities.length
    require arg2 < authorities.length
    address(authorities[arg2].field_0) = address(authorities[authorities.length].field_0)
    authorities.length--
    if authorities.length > authorities.length - 1:
        idx = authorities.length - 1
        while authorities.length > idx:
            authorities[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit AuthorizedAddressRemoved(arg1, msg.sender);
}

function getAuthorizedAddresses() payable {
    if not authorities.length:
        mem[(32 * authorities.length) + 128] = 32
        mem[(32 * authorities.length) + 160] = authorities.length
        mem[(32 * authorities.length) + 192 len floor32(authorities.length)] = mem[128 len floor32(authorities.length)]
        return memory
          from (32 * authorities.length) + 128
           len (96 * authorities.length) + 64
    mem[128] = address(authorities.field_0)
    idx = 128
    s = 0
    while (32 * authorities.length) + 96 > idx:
        mem[idx + 32] = address(authorities[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * authorities.length) + 192 len floor32(authorities.length)] = mem[128 len floor32(authorities.length)]
    return Array(len=authorities.length, data=mem[128 len floor32(authorities.length)], mem[(32 * authorities.length) + floor32(authorities.length) + 192 len (32 * authorities.length) - floor32(authorities.length)]), 
}

function removeAuthorizedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if not stor1[address(arg1)]:
        revert with 0, 'TARGET_NOT_AUTHORIZED'
    stor1[address(arg1)] = 0
    idx = 0
    while idx < authorities.length:
        mem[0] = 2
        if address(authorities[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require authorities.length - 1 < authorities.length
        require idx < authorities.length
        address(authorities[idx].field_0) = address(authorities[authorities.length].field_0)
        authorities.length--
        if authorities.length > authorities.length - 1:
            idx = authorities.length + sha3(2) - 1
            while sha3(2) + authorities.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit AuthorizedAddressRemoved(arg1, msg.sender);
    emit AuthorizedAddressRemoved(arg1, msg.sender);
}

function transferFrom(bytes arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'SENDER_NOT_AUTHORIZED'
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if 4 > arg1.length:
        revert with 0, 'FROM_LESS_THAN_TO_REQUIRED'
    if arg1.length > arg1.length:
        revert with 0, 'TO_LESS_THAN_LENGTH_REQUIRED'
    mem[100] = arg1.length - 4
    require arg1.length - 4 >= 128
    _11 = mem[132]
    _12 = mem[164]
    require mem[164] <= 4294967296
    require mem[164] + 68 <= arg1.length + 32
    require mem[mem[164] + 132] <= 4294967296 and mem[164] + (32 * mem[mem[164] + 132]) + 68 <= arg1.length + 32
    _14 = mem[196]
    require mem[196] <= 4294967296
    require mem[196] + 68 <= arg1.length + 32
    require mem[mem[196] + 132] <= 4294967296 and mem[196] + (32 * mem[mem[196] + 132]) + 68 <= arg1.length + 32
    _16 = mem[228]
    require mem[228] <= 4294967296
    require mem[228] + 68 <= arg1.length + 32
    require arg1.length + 32 >= mem[mem[228] + 132] + mem[228] + 68 and mem[mem[228] + 132] <= 4294967296
    _18 = mem[mem[196] + 132]
    mem[ceil32(arg1.length) + 128] = mem[mem[196] + 132]
    mem[64] = ceil32(arg1.length) + (32 * _18) + 160
    if not _18:
        idx = 0
        while idx != _18:
            require idx < mem[_14 + 132]
            if not mem[(32 * idx) + _14 + 164]:
                require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[(32 * idx) + ceil32(arg1.length) + 160] = 0
            else:
                if arg4 * mem[(32 * idx) + _14 + 164] / mem[(32 * idx) + _14 + 164] != arg4:
                    revert with 0, 'UINT256_OVERFLOW'
                require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[(32 * idx) + ceil32(arg1.length) + 160] = arg4 * mem[(32 * idx) + _14 + 164]
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + (32 * _18) + 160] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + (32 * _18) + 164] = arg2
        mem[ceil32(arg1.length) + (32 * _18) + 196] = arg3
        mem[ceil32(arg1.length) + (32 * _18) + 228] = 160
        mem[ceil32(arg1.length) + (32 * _18) + 324] = mem[_12 + 132]
        _60 = mem[_12 + 132]
        mem[ceil32(arg1.length) + (32 * _18) + 356 len floor32(mem[_12 + 132])] = mem[_12 + 164 len floor32(mem[_12 + 132])]
        mem[ceil32(arg1.length) + (32 * _18) + 260] = (32 * _60) + 192
        mem[(32 * _60) + ceil32(arg1.length) + (32 * _18) + 356] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[(32 * _60) + ceil32(arg1.length) + (32 * _18) + 388 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + (32 * _18) + 292] = (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _60) + 224
        mem[(32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _60) + ceil32(arg1.length) + (32 * _18) + 388] = mem[_16 + 132]
        _117 = mem[_16 + 132]
        mem[(32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _60) + ceil32(arg1.length) + (32 * _18) + 420 len ceil32(mem[_16 + 132])] = mem[_16 + 164 len ceil32(mem[_16 + 132])]
        if not _117 % 32:
            require ext_code.size(address(_11))
            call address(_11).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + (32 * _18) + 164 len _117 + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _60) + 256]
        else:
            mem[floor32(_117) + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _60) + ceil32(arg1.length) + (32 * _18) + 420] = mem[floor32(_117) + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _60) + ceil32(arg1.length) + (32 * _18) + -(_117 % 32) + 452 len _117 % 32]
            require ext_code.size(address(_11))
            call address(_11).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + (32 * _18) + 164 len floor32(_117) + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _60) + 288]
    else:
        mem[ceil32(arg1.length) + 160 len 32 * _18] = code.data[5141 len 32 * _18]
        idx = 0
        while idx != _18:
            require idx < mem[_14 + 132]
            if not mem[(32 * idx) + _14 + 164]:
                require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[(32 * idx) + ceil32(arg1.length) + 160] = 0
            else:
                if arg4 * mem[(32 * idx) + _14 + 164] / mem[(32 * idx) + _14 + 164] != arg4:
                    revert with 0, 'UINT256_OVERFLOW'
                require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[(32 * idx) + ceil32(arg1.length) + 160] = arg4 * mem[(32 * idx) + _14 + 164]
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + (32 * _18) + 160] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + (32 * _18) + 164] = arg2
        mem[ceil32(arg1.length) + (32 * _18) + 196] = arg3
        mem[ceil32(arg1.length) + (32 * _18) + 228] = 160
        mem[ceil32(arg1.length) + (32 * _18) + 324] = mem[_12 + 132]
        _64 = mem[_12 + 132]
        mem[ceil32(arg1.length) + (32 * _18) + 356 len floor32(mem[_12 + 132])] = mem[_12 + 164 len floor32(mem[_12 + 132])]
        mem[ceil32(arg1.length) + (32 * _18) + 260] = (32 * _64) + 192
        mem[(32 * _64) + ceil32(arg1.length) + (32 * _18) + 356] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[(32 * _64) + ceil32(arg1.length) + (32 * _18) + 388 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + (32 * _18) + 292] = (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _64) + 224
        mem[(32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _64) + ceil32(arg1.length) + (32 * _18) + 388] = mem[_16 + 132]
        _120 = mem[_16 + 132]
        mem[(32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _64) + ceil32(arg1.length) + (32 * _18) + 420 len ceil32(mem[_16 + 132])] = mem[_16 + 164 len ceil32(mem[_16 + 132])]
        if not _120 % 32:
            require ext_code.size(address(_11))
            call address(_11).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + (32 * _18) + 164 len _120 + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _64) + 256]
        else:
            mem[floor32(_120) + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _64) + ceil32(arg1.length) + (32 * _18) + 420] = mem[floor32(_120) + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _64) + ceil32(arg1.length) + (32 * _18) + -(_120 % 32) + 452 len _120 % 32]
            require ext_code.size(address(_11))
            call address(_11).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + (32 * _18) + 164 len floor32(_120) + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (32 * _64) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
