contract main {




// =====================  Runtime code  =====================


address WAVAXAddress;
address token0Address;
address token1Address;
address stor3;

function token0() payable {
    return token0Address
}

function WAVAX() payable {
    return WAVAXAddress
}

function token1() payable {
    return token1Address
}

function close() payable {
    selfdestruct(stor3)
}

function _fallback() payable {
    revert
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 100000
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function removeLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg5 == arg5
    return 1, eth.balance(msg.sender)
}

function swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    return Array(len=2, data=1, 1)
}

function sub_78508b80(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor3
    require ext_code.size(address(arg1))
    call address(arg1).0x5cc7647c with:
         gas gas_remaining wei
        args 0, uint32(this.address), 1, this.address, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg6 == arg6
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 0
}

function sub_f81b2a4f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == stor3
    token0Address = address(arg2)
    token1Address = address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).0x1b71afbd with:
         gas gas_remaining wei
        args 0, uint32(this.address), 1, address(arg2), this.address, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    token0Address = WAVAXAddress
    token1Address = WAVAXAddress
}



}
