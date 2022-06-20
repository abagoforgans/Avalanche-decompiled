contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2)
#
address owner;
uint256 blockNumber;
uint8 paused;
mapping of uint256 sub_e14c9a15;
array of uint256 sub_290d190c;
mapping of uint8 stor255;
address sub_e1dbbcd1Address;
address validatorRegistryAddress;
uint256 stor458;

function requestExists(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor255['requestExists'][arg1])
}

function sub_290d190c(?) {
    return sub_290d190c['messages'][arg1][0 len sub_290d190c['messages'][arg1].length]
}

function blockNumber() {
    return blockNumber
}

function paused() {
    return bool(paused)
}

function sub_61594200(?) {
    require calldata.size - 4 >= 32
    return bool(stor255[0][arg1])
}

function owner() {
    return owner
}

function getSignature(bytes32 arg1) {
    return sub_290d190c['signatures'][arg1][0 len sub_290d190c['signatures'][arg1].length]
}

function sub_d98710ff(?) {
    require calldata.size - 4 >= 32
    return bool(stor255[1970170991][arg1])
}

function sub_e14c9a15(?) {
    require calldata.size - 4 >= 32
    return sub_e14c9a15['numOfMsgSigs'][arg1]
}

function sub_e1dbbcd1(?) {
    return sub_e1dbbcd1Address
}

function validatorRegistry() {
    return validatorRegistryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_de207035(?) {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_e1dbbcd1Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73556e6c6f636b65723a73656e646572206973206e6f7420746865206572633637,
                    mem[197 len 31]
    require ext_code.size(sub_e1dbbcd1Address)
    call sub_e1dbbcd1Address.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor458++
    emit 0xf532fb39: arg2, stor458 + 1, arg1
    return 1
}

function sub_1f1d76d3(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(validatorRegistryAddress)
    staticcall validatorRegistryAddress.0xfacd743b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0, 0xda37010e25a338f4730633798446de9753ef9a59919c83ad33d2a91fc02e7de1
    if stor255[0][arg1]:
        return 0, 0x9ae1192921b6af72e24c2bfb075ddaf612877064b1f4fda2b68ba4a7bc44d336
    if not stor255['requestExists'][arg2]:
        return 0x100000000000000000000000000000000000000000000000000000000000000, 0
    return 0, 0x1c0e838bc1b48720a4c775585cc5654c3554a95fd7935cfd518d9b6160a51392
}

function sub_8c14afd0(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(validatorRegistryAddress)
    staticcall validatorRegistryAddress.0xfacd743b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0, 0xda37010e25a338f4730633798446de9753ef9a59919c83ad33d2a91fc02e7de1
    if stor255[1970170991][arg1]:
        return 0, 0x9ae1192921b6af72e24c2bfb075ddaf612877064b1f4fda2b68ba4a7bc44d336
    if not stor255['requestExists'][arg2]:
        return 0x100000000000000000000000000000000000000000000000000000000000000, 0
    return 0, 0x1c0e838bc1b48720a4c775585cc5654c3554a95fd7935cfd518d9b6160a51392
}

function sub_845d0fa1(?) {
    require calldata.size - 4 >= 128
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(validatorRegistryAddress)
    staticcall validatorRegistryAddress.0xfacd743b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'BaseProcessor:only validator'
    if stor255[0][sha3(arg1, arg2, arg3, arg4)]:
        revert with 0, 32, 33, 0x734d696e7465723a7265717565737420686173206265656e2070726f6365737365, mem[425 len 31]
    if stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('sha3', ('param', 'arg1'), ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4')))]:
        revert with 0, 'Minter:request exists'
    stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('sha3', ('param', 'arg1'), ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4')))] = 1
    sub_e14c9a15['numOfMsgSigs'][sha3(arg1, arg2, arg3, arg4)]++
    emit 0xfa9fc52a: sha3(arg1, arg2, arg3, arg4), msg.sender
    require ext_code.size(validatorRegistryAddress)
    staticcall validatorRegistryAddress.0x1703a018 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_e14c9a15['numOfMsgSigs'][sha3(arg1, arg2, arg3, arg4)] + 1 >= ext_call.return_data[0]:
        require ext_code.size(sub_e1dbbcd1Address)
        call sub_e1dbbcd1Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor255[0][sha3(arg1, arg2, arg3, arg4)] = 1
        emit 0x3d865025: arg2, arg3, arg4, arg1
}

function sub_2b333e32(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(validatorRegistryAddress)
    staticcall validatorRegistryAddress.0xfacd743b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'BaseProcessor:only validator'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(0xca8e4679f5e244189335c408700ec0d2e094d3c)
    delegate 0xca8e4679f5e244189335c408700ec0d2e094d3c.0x0 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Unlocker:invalid message'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0xbbbb23c200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length + 96
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 260] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(0xca8e4679f5e244189335c408700ec0d2e094d3c)
            delegate 0xca8e4679f5e244189335c408700ec0d2e094d3c.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 128]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(delegate.return_data[0]) != msg.sender:
                revert with 0, 'Unlocker:signature mismatch'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg1.length
            _12922 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 0, Mask(224, 0, arg1.length)])
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0x756e6c6f636b4d736750726f6365737365640000000000000000000000000000
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 242] = _12922
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 50
            if stor255[1970170991][_12922]:
                revert with 0, 
                            32,
                            35,
                            0x48556e6c6f636b65723a7265717565737420686173206265656e2070726f6365737365,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 377 len 29]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 306] = msg.sender << 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 326] = _12922
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 274] = 52
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 390] = 'requestExists' << 152
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 403] = sha3(Mask(160, 96, msg.sender) >> 96, _12922)
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 358] = 45
            if stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('var', '_12922'))]:
                revert with 0, 'Unlocker:request exists'
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 467] = 'requestExists' << 152
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = sha3(Mask(160, 96, msg.sender) >> 96, _12922)
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 435] = 45
            stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('var', '_12922'))] = 1
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 544] = 'numOfMsgSigs' << 160
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 556] = _12922
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 512] = 44
            if sub_e14c9a15['numOfMsgSigs'][_12922] + 1 != 1:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 620] = 'numOfMsgSigs' << 160
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 632] = _12922
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 588] = 44
                sub_e14c9a15['numOfMsgSigs'][_12922]++
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 696] = _12922
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 728] = sub_e14c9a15['numOfMsgSigs'][_12922]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 664] = 64
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 792] = 'signatures' << 176
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 802] = sha3(_12922, sub_e14c9a15['numOfMsgSigs'][_12922])
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 760] = 42
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 620] = 'messages' << 192
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 628] = _12922
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 588] = 40
                if arg1.length:
                    sub_290d190c['messages'][_12922][] = Array(len=arg1.length, data=arg1[all])
                else:
                    sub_290d190c['messages'][_12922] = 0
                    idx = 0
                    while sub_290d190c['messages'][_12922].length + 31 / 32 > idx:
                        sub_290d190c['messages'][_12922][idx] = 0
                        idx = idx + 1
                        continue 
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 692] = 'numOfMsgSigs' << 160
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = _12922
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 660] = 44
                sub_e14c9a15['numOfMsgSigs'][_12922]++
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 768] = _12922
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 800] = sub_e14c9a15['numOfMsgSigs'][_12922]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 64
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 864] = 'signatures' << 176
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 874] = sha3(_12922, sub_e14c9a15['numOfMsgSigs'][_12922])
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 832] = 42
            if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                sub_290d190c['signatures'][('map', ('var', '_12922'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12922')), ('name', 'stor252', 252))))][] = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            else:
                sub_290d190c['signatures'][('map', ('var', '_12922'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12922')), ('name', 'stor252', 252))))] = 0
                idx = 0
                while sub_290d190c['signatures'][('map', ('var', '_12922'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12922')), ('name', 'stor252', 252))))].length + 31 / 32 > idx:
                    sub_290d190c['signatures'][('map', ('var', '_12922'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12922')), ('name', 'stor252', 252))))][idx] = 0
                    idx = idx + 1
                    continue 
            emit 0x1d3cdd40: _12922, msg.sender
            require ext_code.size(validatorRegistryAddress)
            staticcall validatorRegistryAddress.0x1703a018 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_e14c9a15['numOfMsgSigs'][_12922] + 1 >= ext_call.return_data[0]:
                stor255[1970170991][_12922] = 1
                emit 0x2a7c3b02: _12922, sub_e14c9a15['numOfMsgSigs'][_12922] + 1
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 324 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0xca8e4679f5e244189335c408700ec0d2e094d3c)
            delegate 0xca8e4679f5e244189335c408700ec0d2e094d3c.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 160]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(delegate.return_data[0]) != msg.sender:
                revert with 0, 'Unlocker:signature mismatch'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg1.length
            _12928 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 0, Mask(224, 0, arg1.length)])
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0x756e6c6f636b4d736750726f6365737365640000000000000000000000000000
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 242] = _12928
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 50
            if stor255[1970170991][_12928]:
                revert with 0, 
                            32,
                            35,
                            0x48556e6c6f636b65723a7265717565737420686173206265656e2070726f6365737365,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 377 len 29]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 306] = msg.sender << 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 326] = _12928
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 274] = 52
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 390] = 'requestExists' << 152
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 403] = sha3(Mask(160, 96, msg.sender) >> 96, _12928)
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 358] = 45
            if stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('var', '_12928'))]:
                revert with 0, 'Unlocker:request exists'
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 467] = 'requestExists' << 152
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = sha3(Mask(160, 96, msg.sender) >> 96, _12928)
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 435] = 45
            stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('var', '_12928'))] = 1
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 544] = 'numOfMsgSigs' << 160
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 556] = _12928
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 512] = 44
            if sub_e14c9a15['numOfMsgSigs'][_12928] + 1 != 1:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 620] = 'numOfMsgSigs' << 160
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 632] = _12928
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 588] = 44
                sub_e14c9a15['numOfMsgSigs'][_12928]++
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 696] = _12928
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 728] = sub_e14c9a15['numOfMsgSigs'][_12928]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 664] = 64
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 792] = 'signatures' << 176
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 802] = sha3(_12928, sub_e14c9a15['numOfMsgSigs'][_12928])
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 760] = 42
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 620] = 'messages' << 192
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 628] = _12928
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 588] = 40
                if arg1.length:
                    sub_290d190c['messages'][_12928][] = Array(len=arg1.length, data=arg1[all])
                else:
                    sub_290d190c['messages'][_12928] = 0
                    idx = 0
                    while sub_290d190c['messages'][_12928].length + 31 / 32 > idx:
                        sub_290d190c['messages'][_12928][idx] = 0
                        idx = idx + 1
                        continue 
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 692] = 'numOfMsgSigs' << 160
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = _12928
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 660] = 44
                sub_e14c9a15['numOfMsgSigs'][_12928]++
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 768] = _12928
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 800] = sub_e14c9a15['numOfMsgSigs'][_12928]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 64
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 864] = 'signatures' << 176
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 874] = sha3(_12928, sub_e14c9a15['numOfMsgSigs'][_12928])
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 832] = 42
            if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                sub_290d190c['signatures'][('map', ('var', '_12928'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12928')), ('name', 'stor252', 252))))][] = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            else:
                sub_290d190c['signatures'][('map', ('var', '_12928'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12928')), ('name', 'stor252', 252))))] = 0
                idx = 0
                while sub_290d190c['signatures'][('map', ('var', '_12928'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12928')), ('name', 'stor252', 252))))].length + 31 / 32 > idx:
                    sub_290d190c['signatures'][('map', ('var', '_12928'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12928')), ('name', 'stor252', 252))))][idx] = 0
                    idx = idx + 1
                    continue 
            emit 0x1d3cdd40: _12928, msg.sender
            require ext_code.size(validatorRegistryAddress)
            staticcall validatorRegistryAddress.0x1703a018 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_e14c9a15['numOfMsgSigs'][_12928] + 1 >= ext_call.return_data[0]:
                stor255[1970170991][_12928] = 1
                emit 0x2a7c3b02: _12928, sub_e14c9a15['numOfMsgSigs'][_12928] + 1
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 260] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 292 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = floor32(arg1.length) + 128
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 324 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(0xca8e4679f5e244189335c408700ec0d2e094d3c)
            delegate 0xca8e4679f5e244189335c408700ec0d2e094d3c.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 160]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(delegate.return_data[0]) != msg.sender:
                revert with 0, 'Unlocker:signature mismatch'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg1.length
            _12934 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 0, Mask(224, 0, arg1.length)])
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0x756e6c6f636b4d736750726f6365737365640000000000000000000000000000
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 242] = _12934
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 50
            if stor255[1970170991][_12934]:
                revert with 0, 
                            32,
                            35,
                            0x48556e6c6f636b65723a7265717565737420686173206265656e2070726f6365737365,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 377 len 29]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 306] = msg.sender << 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 326] = _12934
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 274] = 52
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 390] = 'requestExists' << 152
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 403] = sha3(Mask(160, 96, msg.sender) >> 96, _12934)
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 358] = 45
            if stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('var', '_12934'))]:
                revert with 0, 'Unlocker:request exists'
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 467] = 'requestExists' << 152
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = sha3(Mask(160, 96, msg.sender) >> 96, _12934)
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 435] = 45
            stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('var', '_12934'))] = 1
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 544] = 'numOfMsgSigs' << 160
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 556] = _12934
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 512] = 44
            if sub_e14c9a15['numOfMsgSigs'][_12934] + 1 != 1:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 620] = 'numOfMsgSigs' << 160
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 632] = _12934
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 588] = 44
                sub_e14c9a15['numOfMsgSigs'][_12934]++
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 696] = _12934
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 728] = sub_e14c9a15['numOfMsgSigs'][_12934]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 664] = 64
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 792] = 'signatures' << 176
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 802] = sha3(_12934, sub_e14c9a15['numOfMsgSigs'][_12934])
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 760] = 42
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 620] = 'messages' << 192
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 628] = _12934
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 588] = 40
                if arg1.length:
                    sub_290d190c['messages'][_12934][] = Array(len=arg1.length, data=arg1[all])
                else:
                    sub_290d190c['messages'][_12934] = 0
                    idx = 0
                    while sub_290d190c['messages'][_12934].length + 31 / 32 > idx:
                        sub_290d190c['messages'][_12934][idx] = 0
                        idx = idx + 1
                        continue 
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 692] = 'numOfMsgSigs' << 160
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = _12934
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 660] = 44
                sub_e14c9a15['numOfMsgSigs'][_12934]++
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 768] = _12934
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 800] = sub_e14c9a15['numOfMsgSigs'][_12934]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 64
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 864] = 'signatures' << 176
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 874] = sha3(_12934, sub_e14c9a15['numOfMsgSigs'][_12934])
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 832] = 42
            if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                sub_290d190c['signatures'][('map', ('var', '_12934'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12934')), ('name', 'stor252', 252))))][] = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            else:
                sub_290d190c['signatures'][('map', ('var', '_12934'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12934')), ('name', 'stor252', 252))))] = 0
                idx = 0
                while sub_290d190c['signatures'][('map', ('var', '_12934'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12934')), ('name', 'stor252', 252))))].length + 31 / 32 > idx:
                    sub_290d190c['signatures'][('map', ('var', '_12934'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12934')), ('name', 'stor252', 252))))][idx] = 0
                    idx = idx + 1
                    continue 
            emit 0x1d3cdd40: _12934, msg.sender
            require ext_code.size(validatorRegistryAddress)
            staticcall validatorRegistryAddress.0x1703a018 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_e14c9a15['numOfMsgSigs'][_12934] + 1 >= ext_call.return_data[0]:
                stor255[1970170991][_12934] = 1
                emit 0x2a7c3b02: _12934, sub_e14c9a15['numOfMsgSigs'][_12934] + 1
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 356 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0xca8e4679f5e244189335c408700ec0d2e094d3c)
            delegate 0xca8e4679f5e244189335c408700ec0d2e094d3c.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 192]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(delegate.return_data[0]) != msg.sender:
                revert with 0, 'Unlocker:signature mismatch'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg1.length
            _12940 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 0, Mask(224, 0, arg1.length)])
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0x756e6c6f636b4d736750726f6365737365640000000000000000000000000000
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 242] = _12940
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 50
            if stor255[1970170991][_12940]:
                revert with 0, 
                            32,
                            35,
                            0x48556e6c6f636b65723a7265717565737420686173206265656e2070726f6365737365,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 377 len 29]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 306] = msg.sender << 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 326] = _12940
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 274] = 52
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 390] = 'requestExists' << 152
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 403] = sha3(Mask(160, 96, msg.sender) >> 96, _12940)
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 358] = 45
            if stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('var', '_12940'))]:
                revert with 0, 'Unlocker:request exists'
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 467] = 'requestExists' << 152
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = sha3(Mask(160, 96, msg.sender) >> 96, _12940)
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 435] = 45
            stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('var', '_12940'))] = 1
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 544] = 'numOfMsgSigs' << 160
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 556] = _12940
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 512] = 44
            if sub_e14c9a15['numOfMsgSigs'][_12940] + 1 != 1:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 620] = 'numOfMsgSigs' << 160
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 632] = _12940
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 588] = 44
                sub_e14c9a15['numOfMsgSigs'][_12940]++
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 696] = _12940
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 728] = sub_e14c9a15['numOfMsgSigs'][_12940]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 664] = 64
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 792] = 'signatures' << 176
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 802] = sha3(_12940, sub_e14c9a15['numOfMsgSigs'][_12940])
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 760] = 42
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 620] = 'messages' << 192
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 628] = _12940
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 588] = 40
                if arg1.length:
                    sub_290d190c['messages'][_12940][] = Array(len=arg1.length, data=arg1[all])
                else:
                    sub_290d190c['messages'][_12940] = 0
                    idx = 0
                    while sub_290d190c['messages'][_12940].length + 31 / 32 > idx:
                        sub_290d190c['messages'][_12940][idx] = 0
                        idx = idx + 1
                        continue 
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 692] = 'numOfMsgSigs' << 160
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = _12940
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 660] = 44
                sub_e14c9a15['numOfMsgSigs'][_12940]++
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 768] = _12940
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 800] = sub_e14c9a15['numOfMsgSigs'][_12940]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 64
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 864] = 'signatures' << 176
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 874] = sha3(_12940, sub_e14c9a15['numOfMsgSigs'][_12940])
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 832] = 42
            if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                sub_290d190c['signatures'][('map', ('var', '_12940'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12940')), ('name', 'stor252', 252))))][] = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            else:
                sub_290d190c['signatures'][('map', ('var', '_12940'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12940')), ('name', 'stor252', 252))))] = 0
                idx = 0
                while sub_290d190c['signatures'][('map', ('var', '_12940'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12940')), ('name', 'stor252', 252))))].length + 31 / 32 > idx:
                    sub_290d190c['signatures'][('map', ('var', '_12940'), ('stor', ('map', ('data', "'numOfMsgSigs'", ('var', '_12940')), ('name', 'stor252', 252))))][idx] = 0
                    idx = idx + 1
                    continue 
            emit 0x1d3cdd40: _12940, msg.sender
            require ext_code.size(validatorRegistryAddress)
            staticcall validatorRegistryAddress.0x1703a018 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_e14c9a15['numOfMsgSigs'][_12940] + 1 >= ext_call.return_data[0]:
                stor255[1970170991][_12940] = 1
                emit 0x2a7c3b02: _12940, sub_e14c9a15['numOfMsgSigs'][_12940] + 1
}



}
