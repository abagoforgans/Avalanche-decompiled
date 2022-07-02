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
address stor12;
uint256 sub_e17ba213;
address stor14;
mapping of uint256 tokenBalance;
mapping of uint256 sub_6df423c9;

function getTokenBalance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return tokenBalance[address(arg1)][arg2]
}

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

function sub_4409559a(?) {
    return sub_4409559aAddress
}

function sub_49d71f05(?) {
    return nonce
}

function sub_66844402(?) {
    return sub_66844402
}

function sub_6df423c9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_6df423c9[arg1][arg2]
}

function sub_aea2b8d1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_6df423c9[address(arg1)][arg2]
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

function sub_e17ba213(?) {
    return sub_e17ba213
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

function sub_497eeb7f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_6df423c9[address(arg1)][arg2] > !sub_e17ba213:
        revert with 0, 17
    return (sub_6df423c9[address(arg1)][arg2] + sub_e17ba213)
}

function sub_f7a80fe9(?) {
    require calldata.size - 4 >= 32
    if sub_4409559aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the admin may set the price.'
    sub_66844402 = arg1
}

function setBaseCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_4409559aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only BEN's administrator may changed his base pet cost.'
    sub_e17ba213 = arg1
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

function sub_b25d8a24(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    staticcall address(arg1).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You aren't the boss of BEN!'
    sub_6df423c9[address(arg1)][arg2] = arg3
    stor0 = 1
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

function sub_52910362(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if msg.value < sub_6df423c9[address(arg1)][arg3]:
        revert with 0, 'It costs more to pet BEN here. BEN says: Meor?'
    if msg.value < sub_e17ba213:
        revert with 0, 'It costs more to pet BEN here. BEN says: Meor?'
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
            revert with 0, 'Sorry, but this BEN unit is offline.'
        if idx + 1 == -1:
            revert with 0, 17
        idx = idx + 2
        continue 
    call stor12.0xa795e193 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x56323908: address(arg1), Array(len=arg2.length, data=arg2[all]), arg3, msg.value, ext_call.return_data[0]
    if tokenBalance[address(arg1)][arg3] > !msg.value:
        revert with 0, 17
    tokenBalance[address(arg1)][arg3] += msg.value
    if msg.value < msg.value / 2:
        revert with 0, 17
    call stor14.0x935418fc with:
       value msg.value / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor14.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor14.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if msg.value - (msg.value / 2) < msg.value - (msg.value / 2) / 2:
        revert with 0, 17
    staticcall address(arg1).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value msg.value - (msg.value / 2) - (msg.value - (msg.value / 2) / 2) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_4409559aAddress with:
       value msg.value - (msg.value / 2) / 2 wei
         gas 2300 * is_zero(value) wei
    stor0 = 1
    return ext_call.return_data[0]
}



}
