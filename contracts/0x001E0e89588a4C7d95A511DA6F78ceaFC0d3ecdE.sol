contract main {




// =====================  Runtime code  =====================


address adminAddress;
address tokenAddress;
mapping of uint8 stor2;

function processedNonces(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(stor2[arg1][arg2])
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

function burn(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor2[msg.sender][arg3]:
        revert with 0, 'transfer already processed'
    stor2[msg.sender][arg3] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xce5a9b86: address(msg.sender), address(arg1), arg2, block.timestamp, arg3, Array(len=arg4.length, data=arg4[all])
    emit 0x0: address(msg.sender), address(arg1), arg2, block.timestamp, arg3, Array(len=arg4.length, data=arg4[all])
}

function mint(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[356 len arg5.length] = arg5[all]
    mem[arg5.length + 356] = 0
    require 65 == arg5.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2, arg3, arg4)), 0, mem[356], mem[388]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        revert with 0, 'wrong signature'
    if stor2[address(arg1)][arg4]:
        revert with 0, 'transfer already processed'
    stor2[address(arg1)][arg4] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xce5a9b86: address(arg1), address(arg2), arg3, block.timestamp, arg4, Array(len=arg5.length, data=arg5[all])
    emit 0x1: address(arg1), address(arg2), arg3, block.timestamp, arg4, Array(len=arg5.length, data=arg5[all])
}



}
