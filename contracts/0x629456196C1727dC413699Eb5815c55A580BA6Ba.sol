contract main {




// =====================  Runtime code  =====================


#
#  - sub_2b333e32(?)
#  - initialize(address arg1, address arg2)
#
address owner;
uint256 blockNumber;
uint8 paused;
mapping of uint256 sub_e14c9a15;
array of uint256 sub_290d190c;
mapping of uint8 stor255;
address sub_79b7b6baAddress;
address validatorRegistryAddress;

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

function sub_64f73d92(?) {
    require calldata.size - 4 >= 32
    return bool(stor255[0][arg1])
}

function sub_79b7b6ba(?) {
    return sub_79b7b6baAddress
}

function owner() {
    return owner
}

function getSignature(bytes32 arg1) {
    return sub_290d190c['signatures'][arg1][0 len sub_290d190c['signatures'][arg1].length]
}

function sub_e14c9a15(?) {
    require calldata.size - 4 >= 32
    return sub_e14c9a15['numOfMsgSigs'][arg1]
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
    if sub_79b7b6baAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x72556e6c6f636b526571756573743a73656e646572206973206e6f74207468652042455032,
                    mem[201 len 27]
    require ext_code.size(sub_79b7b6baAddress)
    call sub_79b7b6baAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8743533c: arg2, arg1
    return 1
}

function sub_1f1d76d3(?) {
    require calldata.size - 4 >= 64
    if paused:
        return 0, 0xee35723ac350a69d2a92d3703f17439cbaadf2f093a21ba5bf5f1a53eb2a14d9
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
    if paused:
        return 0, 0xee35723ac350a69d2a92d3703f17439cbaadf2f093a21ba5bf5f1a53eb2a14d9
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
        revert with 0, 'HomeRequest: only validator'
    if stor255[0][sha3(arg1, arg2, arg3, arg4)]:
        revert with 0, 32, 38, 0xfe4d696e74526571756573743a7265717565737420686173206265656e2070726f6365737365, mem[426 len 26]
    if stor255['requestExists'][('map', ('mask_shl', 160, 96, -96, 'msg.sender'), ('sha3', ('param', 'arg1'), ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4')))]:
        revert with 0, 'MintRequest:request exists'
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
        require ext_code.size(sub_79b7b6baAddress)
        call sub_79b7b6baAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor255[0][sha3(arg1, arg2, arg3, arg4)] = 1
        emit 0x3d865025: arg2, arg3, arg4, arg1
}



}
