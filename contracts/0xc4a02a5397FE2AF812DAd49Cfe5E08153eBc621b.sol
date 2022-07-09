contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
function _fallback() payable {
    revert
}

function start(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0xfdac0425ff611711433318dcc6171b7862fbf9ac != msg.sender:
        revert with 0, 'not authorized'
    require ext_code.size(0xc4b7121b4fc065decd26c33fb32e42c543e8850d)
    call 0xc4b7121b4fc065decd26c33fb32e42c543e8850d.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, 0, arg1, address(this.address), 128, 10, 'flash loan'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
