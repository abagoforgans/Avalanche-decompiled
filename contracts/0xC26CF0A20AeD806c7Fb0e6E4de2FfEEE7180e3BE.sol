contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint256 nonce;
mapping of struct swaps;

function nonce() {
    return nonce
}

function swaps(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return swaps[arg1].field_0, swaps[arg1].field_256, swaps[arg1].field_512, swaps[arg1].field_768, bool(swaps[arg1].field_1024)
}

function _fallback() payable {
    revert
}

function cancelSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0:
        revert with 0, 'No re-entrancy'
    stor0 = 1
    require swaps[arg1].field_1024
    require swaps[arg1].field_512 > 0
    require swaps[arg1].field_0 == msg.sender
    require ext_code.size(swaps[arg1].field_256)
    call swaps[arg1].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, swaps[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x89ae47ce: swaps[arg1].field_256, 0, 0, 1, arg1, 0
    stor0 = 0
}

function swap(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if nonce == -1:
        revert with 'NH{q', 17
    nonce++
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    swaps[stor1].field_0 = msg.sender
    swaps[stor1].field_256 = arg1
    swaps[stor1].field_512 = arg2
    swaps[stor1].field_768 = arg3
    swaps[stor1].field_1024 = 1
    emit 0x89ae47ce: address(arg1), arg2, arg3, 0, nonce, 1
}

function fill(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0:
        revert with 0, 'No re-entrancy'
    stor0 = 1
    if arg2 and swaps[arg1].field_768 > -1 / arg2:
        revert with 'NH{q', 17
    if not swaps[arg1].field_512:
        revert with 'NH{q', 18
    require swaps[arg1].field_1024
    require swaps[arg1].field_512 > 0
    require msg.value == arg2 * swaps[arg1].field_768 / swaps[arg1].field_512
    if swaps[arg1].field_768 < arg2 * swaps[arg1].field_768 / swaps[arg1].field_512:
        revert with 'NH{q', 17
    swaps[arg1].field_768 -= arg2 * swaps[arg1].field_768 / swaps[arg1].field_512
    if swaps[arg1].field_512 < arg2:
        revert with 'NH{q', 17
    swaps[arg1].field_512 -= arg2
    if not swaps[arg1].field_512:
        swaps[arg1].field_1024 = 0
    else:
        if not swaps[arg1].field_768:
            swaps[arg1].field_1024 = 0
    require ext_code.size(swaps[arg1].field_256)
    call swaps[arg1].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call swaps[arg1].field_0 with:
       value arg2 * swaps[arg1].field_768 / swaps[arg1].field_512 wei
         gas gas_remaining wei
    if not swaps[arg1].field_1024:
        emit 0x89ae47ce: swaps[arg1].field_256, 0, 0, 2, arg1, 0
    emit 0x89ae47ce: swaps[arg1].field_256, swaps[arg1].field_512, swaps[arg1].field_768, 2, arg1, 1
    stor0 = 0
    return swaps[arg1].field_256
}



}
