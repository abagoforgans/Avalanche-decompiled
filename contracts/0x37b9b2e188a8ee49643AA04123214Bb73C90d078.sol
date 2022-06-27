contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address adminAddress;
address tokenAddress;
mapping of uint8 stor3;
mapping of uint256 nonces;

function processedNonces(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor3[arg1][arg2])
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function admin() payable {
    return adminAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Admin can perform this operation.'
    tokenAddress = arg1
}

function sub_125fe753(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if sha3(address(arg1), address(arg2), arg3, stor0, arg4, arg5) != arg6:
        revert with 0, 'wrong signature'
    if stor3[address(arg1)][arg5]:
        revert with 0, 'transfer already processed'
    stor3[address(arg1)][arg5] = 1
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args adminAddress, address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x3183db6b: address(arg1), address(arg2), stor0, arg4, block.timestamp, arg5, arg6
    emit 0x1: address(arg1), address(arg2), stor0, arg4, block.timestamp, arg5, arg6
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Admin can perform this operation.'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args adminAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'not sufficient fund'
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args adminAddress, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if nonces[address(msg.sender)] != arg4:
        revert with 0, 'transfer already processed'
    if nonces[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    nonces[address(msg.sender)]++
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, adminAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x3183db6b: msg.sender, address(arg1), arg2, arg3, block.timestamp, arg4, sha3(msg.sender, arg1, stor0, arg2, arg3, arg4)
    emit 0x0: msg.sender, address(arg1), arg2, arg3, block.timestamp, arg4, sha3(msg.sender, arg1, stor0, arg2, arg3, arg4)
}



}
