contract main {




// =====================  Runtime code  =====================


#
#  - routeValue(bytes16 arg1, string arg2, bytes arg3, bytes32 arg4, bytes arg5, bytes arg6, bytes arg7, uint256 arg8)
#
address owner;
uint256 relayTopic;
address walletAddress;
address gtonAddress;
address wnativeAddress;
address routerAddress;
mapping of uint8 stor6;

function relayTopic() {
    return relayTopic
}

function wnative() {
    return wnativeAddress
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function canRoute(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function gton() {
    return gtonAddress
}

function router() {
    return routerAddress
}

function setRelayTopic(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ACW'
    relayTopic = arg1
    emit SetRelayTopic(relayTopic, arg1);
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    walletAddress = arg1
    emit SetWallet(walletAddress, arg1);
}

function setCanRoute(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor6[address(arg1)] = uint8(arg2)
    emit SetCanRoute(msg.sender, arg1, bool(uint8(arg2)));
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if wnativeAddress != msg.sender:
            revert with 0, 1
    if unknown_0x8934ee2c(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x8934ee2c(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 == bool(arg2)
            if owner != msg.sender:
                revert with 0, 'ACW'
            stor6[address(arg1)] = uint8(bool(arg2))
            emit SetCanRoute(msg.sender, address(arg1), bool(uint8(bool(arg2))));
        else:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xc315bc48(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor6[arg1])
            if unknown_0xd370e052(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return gtonAddress
            if uint32(call.func_hash) >> 224 != unknown_0xdeaa59df(?????):
                require unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return routerAddress
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'ACW'
            walletAddress = address(arg1)
            emit SetWallet(walletAddress, address(arg1));
    if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if owner != msg.sender:
            revert with 0, 'ACW'
        owner = address(arg1)
        emit SetOwner(owner, address(arg1));
    if unknown_0x1a485fbd(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return relayTopic
    if unknown_0x2cebdeb2(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return wnativeAddress
    if unknown_0x4354d1a1(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        if owner != msg.sender:
            revert with 0, 'ACW'
        relayTopic = arg1
        emit SetRelayTopic(relayTopic, arg1);
    if unknown_0x521eb273(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return walletAddress
    require unknown_0x52d8e9ce(?????) == uint32(call.func_hash) >> 224
    require not msg.value
    require calldata.size - 4 >= 256
    require arg1 == Mask(128, 128, arg1)
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
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 130 < 129 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg2.length)) + 129] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 161 len arg3.length] = arg3[all]
    mem[ceil32(ceil32(arg2.length)) + arg3.length + 161] = 0
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 131 < 130 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 131 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 162 len arg5.length] = arg5[all]
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + arg5.length + 162] = 0
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 132 < 131 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 132 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 131] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 163 len arg6.length] = arg6[all]
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + arg6.length + 163] = 0
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    if arg7.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg7.length)) + 133 < 132 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 133 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 132] = arg7.length
    require arg7 + arg7.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 164 len arg7.length] = arg7[all]
    mem[0] = msg.sender
    mem[32] = 6
    if not stor6[msg.sender]:
        revert with 0, 'ACR'
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 165] = relayTopic
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 133] = 32
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 229] = arg4
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 197] = 32
    if sha3(arg4) != sha3(relayTopic):
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 261 len ceil32(arg7.length)] = arg7[all], Mask(8 * ceil32(arg7.length) - arg7.length, -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256, 32) >> -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256
        if ceil32(arg7.length) > arg7.length:
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + arg7.length + 261] = 0
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 261 len ceil32(arg6.length)] = arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg7.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256
        if ceil32(arg6.length) > arg6.length:
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + arg6.length + 261] = 0
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 261 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) > arg5.length:
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + arg5.length + 261] = 0
        if ceil32(arg2.length) <= arg2.length:
            emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256), ceil32(arg2.length) + 160, arg8, sha3(Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * arg5.length) - 256), sha3(Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg7.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256) << (8 * arg6.length) - 256), sha3(Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], Mask(8 * ceil32(arg7.length) - arg7.length, -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256, 32) >> -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256) << (8 * arg7.length) - 256));
        else:
            mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 421] = arg3.length
            mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 453 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
            if ceil32(arg3.length) > arg3.length:
                mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + arg3.length + 453] = 0
            emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + arg2.length + 453 len ceil32(arg3.length) - arg2.length + ceil32(arg2.length)]), ceil32(arg2.length) + 160, arg8, sha3(Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * arg5.length) - 256), sha3(Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg7.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256) << (8 * arg6.length) - 256), sha3(Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], Mask(8 * ceil32(arg7.length) - arg7.length, -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256, 32) >> -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256) << (8 * arg7.length) - 256));
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 265] = walletAddress
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 297] = this.address
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 329] = arg8
    require ext_code.size(gtonAddress)
    call gtonAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args walletAddress, this.address, arg8
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(return_data.size) + 265] = routerAddress
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(return_data.size) + 297] = arg8
    require ext_code.size(gtonAddress)
    call gtonAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg8
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (2 * ceil32(return_data.size)) + 261] = 2
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (2 * ceil32(return_data.size)) + 293] = gtonAddress
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (2 * ceil32(return_data.size)) + 325] = wnativeAddress
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (2 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (4 * ceil32(return_data.size)) + 361] = gtonAddress
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (4 * ceil32(return_data.size)) + 393] = wnativeAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (4 * ceil32(return_data.size)) + 361 len (5 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (4 * ceil32(return_data.size)) + 357] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
           args mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (4 * ceil32(return_data.size)) + 361 len 7 * ceil32(return_data.size)]
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (4 * ceil32(return_data.size)) + 357 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (8 * ceil32(return_data.size)) + 361] = arg8
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (8 * ceil32(return_data.size)) + 393] = Mask(112, 0, ext_call.return_data[0])
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (8 * ceil32(return_data.size)) + 425] = Mask(112, 0, ext_call.return_data[32])
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (8 * ceil32(return_data.size)) + 361 len (13 * ceil32(return_data.size)) + 96]
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (8 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + 357
    require return_data.size >= 32
    if 3600 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + 361] = arg8
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + 393] = ext_call.return_data[0]
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + 425] = 160
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + 521] = 2
    idx = 0
    s = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + 553
    t = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (2 * ceil32(return_data.size)) + 293
    while idx < mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (2 * ceil32(return_data.size)) + 261]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + 457] = this.address
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + 489] = block.timestamp + 3600
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (9 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + (2 * ceil32(return_data.size)) + 261]) + -mem[64] + 549]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _231 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _237 = mem[_231]
    require mem[_231] <= test266151307()
    require _231 + mem[_231] + 31 < _231 + return_data.size
    _239 = mem[_231 + mem[_231]]
    if mem[_231 + mem[_231]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_231 + mem[_231]]) + 1 < 0 or _231 + ceil32(return_data.size) + ceil32(32 * mem[_231 + mem[_231]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _231 + ceil32(return_data.size) + ceil32(32 * mem[_231 + mem[_231]]) + 1
    mem[_231 + ceil32(return_data.size)] = _239
    require return_data.size >= _237 + (32 * _239) + 32
    mem[_231 + ceil32(return_data.size) + 32 len 32 * _239] = mem[_231 + _237 + 32 len 32 * _239]
    if 1 >= _239:
        revert with 0, 50
    _377 = mem[_231 + ceil32(return_data.size) + 64]
    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _377
    require ext_code.size(wnativeAddress)
    call wnativeAddress.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args _377
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if var169002 < 20:
        if var171001 >= mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 132]:
            revert with 0, 50
        if var175002 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if var181001 > !var181002:
            revert with 0, 17
        if var187001 == -1:
            revert with 0, 17
        # nil
    else:
        if 1 >= _239:
            revert with 0, 50
        call address(var169003) with:
           value mem[_231 + ceil32(return_data.size) + 64] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 >= _239:
            revert with 0, 50
        _1182 = mem[_231 + ceil32(return_data.size) + 32]
        mem[mem[64]] = address(var169003)
        mem[mem[64] + 32] = _1182
        emit DeliverRelay(address(var169003), _1182);
        _1185 = mem[64]
        _1186 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 132]
        mem[mem[64] len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 132])] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 164 len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 132])]
        if ceil32(_1186) <= _1186:
            _1471 = sha3(mem[mem[64] len _1186])
            _1473 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 131]
            mem[mem[64] len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 131])] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 163 len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 131])]
            if ceil32(_1473) <= _1473:
                _1754 = sha3(mem[mem[64] len _1473])
                _1755 = mem[64]
                _1759 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130]
                mem[mem[64] len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130])] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 162 len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130])]
                if ceil32(_1759) <= _1759:
                    _2029 = sha3(mem[mem[64] len _1759])
                    _2030 = mem[64]
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    _2052 = mem[128]
                    mem[mem[64] + 128] = mem[128]
                    mem[mem[64] + 160 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_2052) <= _2052:
                        mem[mem[64] + 64] = ceil32(_2052) + 160
                        _2287 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2052) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2052) + mem[64] + 192 len ceil32(_2287)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2287)]
                        if ceil32(_2287) > _2287:
                            mem[ceil32(_2052) + mem[64] + _2287 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2052) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len ceil32(_2287) + ceil32(_2052) + 64],
                                        _2029,
                                        _1754,
                                        _1471,
                    else:
                        mem[mem[64] + _2052 + 160] = 0
                        mem[mem[64] + 64] = ceil32(_2052) + 160
                        _2295 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2052) + _2030 + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2052) + _2030 + 192 len ceil32(_2295)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2295)]
                        if ceil32(_2295) > _2295:
                            mem[ceil32(_2052) + _2030 + _2295 + 192] = 0
                        mem[_2030 + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[mem[64] len ceil32(_2295) + ceil32(_2052) + _2030 + -mem[64] + 192],
                                        _2029,
                                        _1754,
                                        _1471,
                else:
                    mem[mem[64] + _1759] = 0
                    _2041 = sha3(mem[mem[64] len _1759 + _1755 - mem[64]])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    _2056 = mem[128]
                    mem[mem[64] + 128] = mem[128]
                    mem[mem[64] + 160 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_2056) <= _2056:
                        mem[mem[64] + 64] = ceil32(_2056) + 160
                        _2288 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2056) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2056) + mem[64] + 192 len ceil32(_2288)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2288)]
                        if ceil32(_2288) > _2288:
                            mem[ceil32(_2056) + mem[64] + _2288 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2056) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len ceil32(_2288) + ceil32(_2056) + 64],
                                        _2041,
                                        _1754,
                                        _1471,
                    else:
                        mem[mem[64] + _2056 + 160] = 0
                        mem[mem[64] + 64] = ceil32(_2056) + 160
                        _2296 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2056) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2056) + mem[64] + 192 len ceil32(_2296)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2296)]
                        if ceil32(_2296) > _2296:
                            mem[ceil32(_2056) + mem[64] + _2296 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2056) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len _2056 + 32],
                                        0,
                                        mem[mem[64] + _2056 + 192 len ceil32(_2296) + ceil32(_2056) - _2056],
                                        _2041,
                                        _1754,
                                        _1471,
            else:
                mem[mem[64] + _1473] = 0
                _1761 = sha3(mem[mem[64] len _1473])
                _1762 = mem[64]
                _1767 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130]
                mem[mem[64] len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130])] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 162 len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130])]
                if ceil32(_1767) <= _1767:
                    _2032 = sha3(mem[mem[64] len _1767])
                    _2033 = mem[64]
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    _2053 = mem[128]
                    mem[mem[64] + 128] = mem[128]
                    mem[mem[64] + 160 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_2053) <= _2053:
                        mem[mem[64] + 64] = ceil32(_2053) + 160
                        _2289 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2053) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2053) + mem[64] + 192 len ceil32(_2289)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2289)]
                        if ceil32(_2289) > _2289:
                            mem[ceil32(_2053) + mem[64] + _2289 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2053) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len ceil32(_2289) + ceil32(_2053) + 64],
                                        _2032,
                                        _1761,
                                        _1471,
                    else:
                        mem[mem[64] + _2053 + 160] = 0
                        mem[mem[64] + 64] = ceil32(_2053) + 160
                        _2297 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2053) + _2033 + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2053) + _2033 + 192 len ceil32(_2297)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2297)]
                        if ceil32(_2297) > _2297:
                            mem[ceil32(_2053) + _2033 + _2297 + 192] = 0
                        mem[_2033 + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[mem[64] len ceil32(_2297) + ceil32(_2053) + _2033 + -mem[64] + 192],
                                        _2032,
                                        _1761,
                                        _1471,
                else:
                    mem[mem[64] + _1767] = 0
                    _2044 = sha3(mem[mem[64] len _1767 + _1762 - mem[64]])
                    _2045 = mem[64]
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    _2057 = mem[128]
                    mem[mem[64] + 128] = mem[128]
                    mem[mem[64] + 160 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_2057) <= _2057:
                        mem[mem[64] + 64] = ceil32(_2057) + 160
                        _2290 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2057) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2057) + mem[64] + 192 len ceil32(_2290)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2290)]
                        if ceil32(_2290) > _2290:
                            mem[ceil32(_2057) + mem[64] + _2290 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2057) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len ceil32(_2290) + ceil32(_2057) + 64],
                                        _2044,
                                        _1761,
                                        _1471,
                    else:
                        mem[mem[64] + _2057 + 160] = 0
                        mem[mem[64] + 64] = ceil32(_2057) + 160
                        _2298 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2057) + _2045 + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2057) + _2045 + 192 len ceil32(_2298)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2298)]
                        if ceil32(_2298) > _2298:
                            mem[ceil32(_2057) + _2045 + _2298 + 192] = 0
                        mem[_2045 + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[mem[64] len ceil32(_2298) + ceil32(_2057) + _2045 + -mem[64] + 192],
                                        _2044,
                                        _1761,
                                        _1471,
        else:
            mem[mem[64] + _1186] = 0
            _1475 = sha3(mem[mem[64] len _1186 + _1185 - mem[64]])
            _1476 = mem[64]
            _1477 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 131]
            mem[mem[64] len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 131])] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 163 len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 131])]
            if ceil32(_1477) <= _1477:
                _1757 = sha3(mem[mem[64] len _1477])
                _1763 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130]
                mem[mem[64] len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130])] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 162 len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130])]
                if ceil32(_1763) <= _1763:
                    _2035 = sha3(mem[mem[64] len _1763])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    _2054 = mem[128]
                    mem[mem[64] + 128] = mem[128]
                    mem[mem[64] + 160 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_2054) <= _2054:
                        mem[mem[64] + 64] = ceil32(_2054) + 160
                        _2291 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2054) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2054) + mem[64] + 192 len ceil32(_2291)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2291)]
                        if ceil32(_2291) > _2291:
                            mem[ceil32(_2054) + mem[64] + _2291 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2054) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len ceil32(_2291) + ceil32(_2054) + 64],
                                        _2035,
                                        _1757,
                                        _1475,
                    else:
                        mem[mem[64] + _2054 + 160] = 0
                        mem[mem[64] + 64] = ceil32(_2054) + 160
                        _2299 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2054) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2054) + mem[64] + 192 len ceil32(_2299)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2299)]
                        if ceil32(_2299) > _2299:
                            mem[ceil32(_2054) + mem[64] + _2299 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2054) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len _2054 + 32],
                                        0,
                                        mem[mem[64] + _2054 + 192 len ceil32(_2299) + ceil32(_2054) - _2054],
                                        _2035,
                                        _1757,
                                        _1475,
                else:
                    mem[mem[64] + _1763] = 0
                    _2047 = sha3(mem[mem[64] len _1763])
                    _2048 = mem[64]
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    _2058 = mem[128]
                    mem[mem[64] + 128] = mem[128]
                    mem[mem[64] + 160 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_2058) <= _2058:
                        mem[mem[64] + 64] = ceil32(_2058) + 160
                        _2292 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2058) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2058) + mem[64] + 192 len ceil32(_2292)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2292)]
                        if ceil32(_2292) > _2292:
                            mem[ceil32(_2058) + mem[64] + _2292 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2058) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len ceil32(_2292) + ceil32(_2058) + 64],
                                        _2047,
                                        _1757,
                                        _1475,
                    else:
                        mem[mem[64] + _2058 + 160] = 0
                        mem[mem[64] + 64] = ceil32(_2058) + 160
                        _2300 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2058) + _2048 + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2058) + _2048 + 192 len ceil32(_2300)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2300)]
                        if ceil32(_2300) > _2300:
                            mem[ceil32(_2058) + _2048 + _2300 + 192] = 0
                        mem[_2048 + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[mem[64] len ceil32(_2300) + ceil32(_2058) + _2048 + -mem[64] + 192],
                                        _2047,
                                        _1757,
                                        _1475,
            else:
                mem[mem[64] + _1477] = 0
                _1765 = sha3(mem[mem[64] len _1477 + _1476 - mem[64]])
                _1766 = mem[64]
                _1768 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130]
                mem[mem[64] len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130])] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 162 len ceil32(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130])]
                if ceil32(_1768) <= _1768:
                    _2038 = sha3(mem[mem[64] len _1768])
                    _2039 = mem[64]
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    _2055 = mem[128]
                    mem[mem[64] + 128] = mem[128]
                    mem[mem[64] + 160 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_2055) <= _2055:
                        mem[mem[64] + 64] = ceil32(_2055) + 160
                        _2293 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2055) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2055) + mem[64] + 192 len ceil32(_2293)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2293)]
                        if ceil32(_2293) > _2293:
                            mem[ceil32(_2055) + mem[64] + _2293 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2055) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len ceil32(_2293) + ceil32(_2055) + 64],
                                        _2038,
                                        _1765,
                                        _1475,
                    else:
                        mem[mem[64] + _2055 + 160] = 0
                        mem[mem[64] + 64] = ceil32(_2055) + 160
                        _2301 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2055) + _2039 + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2055) + _2039 + 192 len ceil32(_2301)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2301)]
                        if ceil32(_2301) > _2301:
                            mem[ceil32(_2055) + _2039 + _2301 + 192] = 0
                        mem[_2039 + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[mem[64] len ceil32(_2301) + ceil32(_2055) + _2039 + -mem[64] + 192],
                                        _2038,
                                        _1765,
                                        _1475,
                else:
                    mem[mem[64] + _1768] = 0
                    _2050 = sha3(mem[mem[64] len _1768 + _1766 - mem[64]])
                    _2051 = mem[64]
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    _2059 = mem[128]
                    mem[mem[64] + 128] = mem[128]
                    mem[mem[64] + 160 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_2059) <= _2059:
                        mem[mem[64] + 64] = ceil32(_2059) + 160
                        _2294 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2059) + mem[64] + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2059) + mem[64] + 192 len ceil32(_2294)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2294)]
                        if ceil32(_2294) > _2294:
                            mem[ceil32(_2059) + mem[64] + _2294 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        Mask(128, 128, arg1),
                                        128,
                                        ceil32(_2059) + 160,
                                        arg8,
                                        mem[mem[64] + 128 len ceil32(_2294) + ceil32(_2059) + 64],
                                        _2050,
                                        _1765,
                                        _1475,
                    else:
                        mem[mem[64] + _2059 + 160] = 0
                        mem[mem[64] + 64] = ceil32(_2059) + 160
                        _2302 = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2059) + _2051 + 160] = mem[ceil32(ceil32(arg2.length)) + 129]
                        mem[ceil32(_2059) + _2051 + 192 len ceil32(_2302)] = mem[ceil32(ceil32(arg2.length)) + 161 len ceil32(_2302)]
                        if ceil32(_2302) > _2302:
                            mem[ceil32(_2059) + _2051 + _2302 + 192] = 0
                        mem[_2051 + 96] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[mem[64] len ceil32(_2302) + ceil32(_2059) + _2051 + -mem[64] + 192],
                                        _2050,
                                        _1765,
                                        _1475,
}



}
