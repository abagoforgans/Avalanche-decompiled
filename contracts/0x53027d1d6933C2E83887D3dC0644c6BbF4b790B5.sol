contract main {




// =====================  Runtime code  =====================


#
#  - sub_18978e82(?)
#  - sub_9395525c(?)
#
address owner;
address stor2;

function owner() {
    return owner
}

function _fallback() payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DEFAULT_FUNCTION_WETH_CONTRACT_ONLY'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if arg1:
        owner = arg1
}

function withdrawAsset(bytes arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length < 4:
        revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
    _4 = mem[128]
    mem[ceil32(arg1.length) + 128] = 'ERC20Token(address)' << 104
    if Mask(32, 224, _4) != Mask(32, 224, sha3(Mask(152, -(8 * ceil32(arg1.length) + -arg1.length + 19) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 19) + 256)):
        mem[ceil32(arg1.length) + 128] = 'ERC721Token(address,uint256)'
        if Mask(32, 224, _4) != Mask(32, 224, sha3(Mask(224, -(8 * ceil32(arg1.length) + -arg1.length + 28) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 28) + 256)):
            revert with 0, 'UNSUPPORTED_ASSET_PROXY'
        if arg2 != 1:
            revert with 0, 'INVALID_AMOUNT'
        if arg1.length < 36:
            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
        if arg1.length < 68:
            revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
        require ext_code.size(mem[144 len 20])
        call mem[144 len 20].0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, mem[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1.length < 36:
            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
        _13 = mem[132]
        mem[ceil32(arg1.length) + 164] = msg.sender
        mem[ceil32(arg1.length) + 196] = arg2
        mem[ceil32(arg1.length) + 128] = 68
        mem[ceil32(arg1.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg1.length) + 160 len 4] = Mask(32, 224, sha3(Mask(200, -(8 * ceil32(arg1.length) + -arg1.length + 25) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 25) + 256)) >> 224
        mem[ceil32(arg1.length) + 228 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 228] = 0
        call address(_13).mem[ceil32(arg1.length) + 228 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 232 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
        else:
            if return_data.size != 32:
                revert with 0, 'TRANSFER_FAILED'
            if not ext_call.return_data[0]:
                revert with 0, 'TRANSFER_FAILED'
}



}
