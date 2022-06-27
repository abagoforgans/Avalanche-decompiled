contract main {




// =====================  Runtime code  =====================


address stor0;
address token0Address;
address token1Address;

function token0() payable {
    return token0Address
}

function token1() payable {
    return token1Address
}

function _fallback() payable {
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return 1
}

function removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require tx.origin == stor0
    require ext_code.size(0x1a877b68bda77d78eea607443ccde667b31b0cdf)
    staticcall 0x1a877b68bda77d78eea607443ccde667b31b0cdf.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= ext_call.return_data[0]:
        revert with 'NH{q', 50
    mem[128] = ext_call.return_data[0]
    if 1 >= ext_call.return_data[0]:
        revert with 'NH{q', 50
    mem[160] = 0
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 160 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
    return Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 160 len 32 * ext_call.return_data[0]])
}



}
