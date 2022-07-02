contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 b;
address sub_c4935250Address;
address sub_4409559aAddress;
address sub_115d997dAddress;
uint256 maxToken;
uint256 sub_400f4544;
uint256 stor9;
uint256 nonce;
uint256 sub_66844402;
address logAddress;
mapping of uint256 timeLock;
mapping of uint8 stor14;
mapping of uint256 stor15;

function sub_115d997d(?) {
    return sub_115d997dAddress
}

function sub_3c2cdeb8(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_400f4544(?) {
    return sub_400f4544
}

function timeLock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return timeLock[arg1]
}

function sub_4409559a(?) {
    return sub_4409559aAddress
}

function sub_49d71f05(?) {
    return nonce
}

function getBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 1
    while idx <= maxToken:
        mem[0] = idx
        mem[32] = 1
        if idx == -1:
            revert with 0, 17
        if not stor1[idx]:
            idx = idx + 1
            continue 
        if idx + 1 >= sub_400f4544:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This method is no longer approved.'
        if idx + 1 == -1:
            revert with 0, 17
        idx = idx + 2
        continue 
    return bool(stor14[address(arg1)])
}

function sub_66844402(?) {
    return sub_66844402
}

function sub_748f7098(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return timeLock[address(arg1)]
}

function getLog() {
    return logAddress
}

function sub_c4935250(?) {
    return sub_c4935250Address
}

function maxToken() {
    return maxToken
}

function b(uint256 arg1) {
    require calldata.size - 4 >= 32
    return b[arg1]
}

function getNonce() {
    return nonce
}

function sub_e4b83521(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function recover() {
    stor9 = 0
    call sub_4409559aAddress with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setLog(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_4409559aAddress != msg.sender:
        revert with 0, 'Not admin.'
    logAddress = arg1
}

function sub_f7a80fe9(?) {
    require calldata.size - 4 >= 32
    if sub_4409559aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the admin may set the price.'
    sub_66844402 = arg1
}

function setTimeLock(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_4409559aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins may change the time lock.'
    timeLock[address(arg1)] = arg2
}

function sub_f0f66498(?) {
    idx = 1
    while idx <= maxToken:
        mem[0] = idx
        mem[32] = 1
        if idx == -1:
            revert with 0, 17
        if not stor1[idx]:
            idx = idx + 1
            continue 
        if idx + 1 >= sub_400f4544:
            return 1
        if idx + 1 == -1:
            revert with 0, 17
        idx = idx + 2
        continue 
    return 0
}

function getTokenOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    staticcall sub_c4935250Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_e44867a4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    staticcall address(arg1).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_991ca383(?) {
    require calldata.size - 4 >= 32
    if sub_4409559aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the administratyor my recover left over Culture Coin.'
    call sub_115d997dAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_4409559aAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d1c4a3ab(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    staticcall sub_c4935250Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value b[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    b[arg1] = 0
    stor0 = 1
}

function sub_8ab0310f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    staticcall sub_c4935250Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Own token first.'
    if stor2[arg1]:
        revert with 0, 'Already counted.'
    if b[arg1] > !msg.value:
        revert with 0, 17
    b[arg1] += msg.value
    stor2[arg1] = 1
    stor1[arg1] = uint8(bool(arg2))
    emit 0x9e3972d9: arg1, bool(arg2), msg.value
}

function sub_68aa3f86(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    staticcall address(arg1).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'But you don't own it.'
    call logAddress.0xa795e193 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x74674d7e: address(arg1), arg2
}

function setBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 1
    while idx <= maxToken:
        mem[0] = idx
        mem[32] = 1
        if idx == -1:
            revert with 0, 17
        if not stor1[idx]:
            idx = idx + 1
            continue 
        if idx + 1 >= sub_400f4544:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This method is no longer approved.'
        if idx + 1 == -1:
            revert with 0, 17
        idx = idx + 2
        continue 
    if sub_4409559aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins may change the time lock.'
    stor14[address(arg1)] = uint8(arg2)
}

function sub_692f85f6(?) payable {
    require calldata.size - 4 >= 32
    staticcall sub_c4935250Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You are not in the class of token holders who can frob this dial.'
    if sub_66844402:
        if msg.value < sub_66844402:
            revert with 0, 'Costs more to frob this dial now.'
    if nonce == -1:
        revert with 0, 17
    nonce++
    if stor9 > !msg.value:
        revert with 0, 17
    stor9 += msg.value
    emit 0xe335c04c: nonce
}

function sub_7f5dc33d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 16
    mem[ceil32(ceil32(arg1.length)) + 97] = bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_bce7a8c0(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == bool(arg2)
    if sub_4409559aAddress != msg.sender:
        revert with 0, 'Only the admin may change the blacklist.'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 16
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = uint8(bool(arg2))
}

function sub_b54b6b16(?) payable {
    mem[64] = 96
    require not msg.value
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 1
    while idx <= maxToken:
        mem[mem[64] + 4] = idx
        staticcall sub_c4935250Address.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_12] == mem[_12 + 12 len 20]
        call mem[_12 + 12 len 20] with:
           value b[idx] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = idx
        mem[32] = 3
        b[idx] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor0 = 1
}

function sub_dc7452f3(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    idx = 1
    while idx <= maxToken:
        mem[0] = idx
        mem[32] = 1
        if idx == -1:
            revert with 0, 17
        if not stor1[idx]:
            idx = idx + 1
            continue 
        if idx + 1 >= sub_400f4544:
            revert with 0, 'This method is no longer approved.'
        if idx + 1 == -1:
            revert with 0, 17
        idx = idx + 2
        continue 
    staticcall address(arg1).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Whoops. That's someone else's.'
    stor[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15))))][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256][arg4] = arg4
}

function sub_d0efa01a(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    idx = 1
    while idx <= maxToken:
        mem[0] = idx
        mem[32] = 1
        if idx == -1:
            revert with 0, 17
        if not stor1[idx]:
            idx = idx + 1
            continue 
        if idx + 1 >= sub_400f4544:
            revert with 0, 'This method is no longer approved.'
        if idx + 1 == -1:
            revert with 0, 17
        idx = idx + 2
        continue 
    staticcall address(arg1).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        return True
    if sub_4409559aAddress != msg.sender:
        return (msg.sender == sub_4409559aAddress)
    idx = 1
    while idx <= maxToken:
        mem[0] = idx
        mem[32] = 1
        if idx == -1:
            revert with 0, 17
        if not stor1[idx]:
            idx = idx + 1
            continue 
        if idx + 1 >= sub_400f4544:
            return 0
        if idx + 1 == -1:
            revert with 0, 17
        idx = idx + 2
        continue 
    if arg4 != stor[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15))))][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256][arg4]:
        return 0
    return 1
}



}
