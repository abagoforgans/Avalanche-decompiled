contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address ethCrossChainManagerAddress;

function paused() payable {
    return bool(stor0)
}

function getEthCrossChainManager() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    return ethCrossChainManagerAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if stor0:
        stor0 = 0
        emit Unpaused(msg.sender);
    return 1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not stor0:
        stor0 = 1
        emit Paused(msg.sender);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x214f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pauseEthCrossChainManager() payable {
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if stor0:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not stor0:
        stor0 = 1
        emit Paused(msg.sender);
    require ext_code.size(ethCrossChainManagerAddress)
    call ethCrossChainManagerAddress.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7270617573652045746843726f7373436861696e4d616e6167657220636f6e7472616374206661696c6564,
                    mem[207 len 21]
    else:
        return 0
}

function unpauseEthCrossChainManager() payable {
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    require ext_code.size(ethCrossChainManagerAddress)
    call ethCrossChainManagerAddress.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x21756e70617573652045746843726f7373436861696e4d616e6167657220636f6e7472616374206661696c6564,
                    mem[209 len 19]
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if stor0:
        stor0 = 0
        emit Unpaused(msg.sender);
        return 0
    else:
        return 0
}

function changeManagerChainID(uint64 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    require ext_code.size(ethCrossChainManagerAddress)
    staticcall ethCrossChainManagerAddress.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ethCrossChainManagerAddress)
    if not ext_call.return_data[0]:
        call ethCrossChainManagerAddress.0x8456cb59 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x215061757365206f6c642045746843726f7373436861696e4d616e6167657220636f6e7472616374206661696c6564,
                        mem[211 len 17]
    call ethCrossChainManagerAddress.0x6f31031d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'set chain ID failed. '
}

function upgradeEthCrossChainManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    require ext_code.size(ethCrossChainManagerAddress)
    staticcall ethCrossChainManagerAddress.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ethCrossChainManagerAddress)
    if not ext_call.return_data[0]:
        call ethCrossChainManagerAddress.0x8456cb59 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x215061757365206f6c642045746843726f7373436861696e4d616e6167657220636f6e7472616374206661696c6564,
                        mem[211 len 17]
    call ethCrossChainManagerAddress.0x7e724ff3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7445746843726f7373436861696e4d616e616765722075706772616465546f4e6577206661696c6564,
                    mem[205 len 23]
    require ext_code.size(arg1)
    staticcall arg1.0x8f32d59b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    75,
                    0xfe45746843726f7373436861696e4d616e6167657250726f7879206973206e6f74206f776e6572206f66206e65772045746843726f7373436861696e4d616e6167657220636f6e74726163,
                    mem[239 len 21]
    ethCrossChainManagerAddress = arg1
    return 0
}



}
