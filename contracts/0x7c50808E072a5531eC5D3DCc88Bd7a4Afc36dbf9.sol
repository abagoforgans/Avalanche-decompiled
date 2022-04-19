contract main {




// =====================  Runtime code  =====================


address owner;
uint256 chainId;
uint32 stor3;
address bridgeAddress;
uint256 networkConfirmations;
mapping of struct fees;
mapping of struct remotes;

function fees(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return fees[arg1].field_0, fees[arg1].field_256
}

function remotes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return remotes[arg1].field_0, remotes[arg1].field_256
}

function networkConfirmations() payable {
    return networkConfirmations
}

function owner() payable {
    return owner
}

function chainId() payable {
    return chainId
}

function bridge() payable {
    return address(bridgeAddress)
}

function _fallback() payable {
    revert
}

function construct(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require not chainId
    chainId = arg1
    address(bridgeAddress) = arg2
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBridge(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid bridge'
    address(bridgeAddress) = arg1
    emit BridgeChange(address(bridgeAddress), arg1);
}

function setRemoteOperator(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'invalid operator'
    remotes[arg1].field_256 = arg2
    emit RemoteOperatorChange(remotes[arg1].field_256, arg2, arg1);
}

function setNetworkConfirmations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 8:
        revert with 0, 'invalid network confirmations'
    networkConfirmations = arg1
    emit NetworkConfirmationsChange(networkConfirmations, arg1);
}

function setRemoteBridge(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if chainId == arg1:
        revert with 0, 'invalid chain'
    if not arg2:
        revert with 0, 'invalid bridge'
    remotes[arg1].field_0 = arg2
    emit RemoteBridgeChange(remotes[arg1].field_0, arg2, arg1);
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if chainId == arg1:
        revert with 0, 'invalid chain'
    if arg2 > 10^18:
        revert with 0, 'invalid fee rate'
    fees[arg1].field_0 = arg2
    fees[arg1].field_256 = arg3
    emit FeeChange(fees[arg1].field_0, fees[arg1].field_256, arg2, arg3, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calcNetAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        if fees[arg2].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 < fees[arg2].field_256:
            revert with 0, 'insufficient amount'
        if fees[arg2].field_256 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg1 - fees[arg2].field_256)
    require arg1
    if arg1 * fees[arg2].field_0 / arg1 != fees[arg2].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (arg1 * fees[arg2].field_0 / 10^18) + fees[arg2].field_256 < arg1 * fees[arg2].field_0 / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 < (arg1 * fees[arg2].field_0 / 10^18) + fees[arg2].field_256:
        revert with 0, 'insufficient amount'
    if (arg1 * fees[arg2].field_0 / 10^18) + fees[arg2].field_256 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 - (arg1 * fees[arg2].field_0 / 10^18) - fees[arg2].field_256)
}

function calcDepositParams(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if chainId == arg3:
        revert with 0, 'invalid chain'
    if not arg2:
        if fees[arg3].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 < fees[arg3].field_256:
            revert with 0, 'insufficient amount'
        if fees[arg3].field_256 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(bridgeAddress))
        staticcall address(bridgeAddress).calcTransferId(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7, uint256 rg8, uint256 rg9) with:
                gas gas_remaining wei
               args 0, uint32(stor3), remotes[arg3].field_0, chainId, arg3, address(arg1), remotes[arg3].field_256, arg2, arg2 - fees[arg3].field_256, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return remotes[arg3].field_0, 
               arg3,
               remotes[arg3].field_256,
               arg2,
               arg2 - fees[arg3].field_256,
               block.timestamp,
               ext_call.return_data[0]
    require arg2
    if arg2 * fees[arg3].field_0 / arg2 != fees[arg3].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (arg2 * fees[arg3].field_0 / 10^18) + fees[arg3].field_256 < arg2 * fees[arg3].field_0 / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 < (arg2 * fees[arg3].field_0 / 10^18) + fees[arg3].field_256:
        revert with 0, 'insufficient amount'
    if (arg2 * fees[arg3].field_0 / 10^18) + fees[arg3].field_256 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(bridgeAddress))
    staticcall address(bridgeAddress).calcTransferId(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7, uint256 rg8, uint256 rg9) with:
            gas gas_remaining wei
           args 0, uint32(stor3), remotes[arg3].field_0, chainId, arg3, address(arg1), remotes[arg3].field_256, arg2, arg2 - (arg2 * fees[arg3].field_0 / 10^18) - fees[arg3].field_256, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return remotes[arg3].field_0, 
           arg3,
           remotes[arg3].field_256,
           arg2,
           arg2 - (arg2 * fees[arg3].field_0 / 10^18) - fees[arg3].field_256,
           block.timestamp,
           ext_call.return_data[0]
}



}
