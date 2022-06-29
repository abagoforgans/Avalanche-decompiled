contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address governanceAddress;
address tokenAddress;
address verifierAddress;
uint256 chainId;
address vaultAddress;
mapping of uint8 stor7;
mapping of uint8 stor8;

function verifier() payable {
    return verifierAddress
}

function sub_31fca166(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function depositIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function governance() payable {
    return governanceAddress
}

function owner() payable {
    return owner
}

function chainId() payable {
    return chainId
}

function vault() payable {
    return vaultAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function updateVerifier(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NitroSwapOut:: Unauthorized Access'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NitroSwapOut :: setVerifyAddress :: Invalid _newVerifierAddress'
    emit 0x187d712d: verifierAddress, address(arg1), block.timestamp
    verifierAddress = arg1
}

function updateGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NitroSwapOut:: Unauthorized Access'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NitroSwapOut :: updateGovernance :: Invalid _newGovernance'
    emit 0x6dbc0551: governanceAddress, address(arg1), block.timestamp
    governanceAddress = arg1
}

function sub_4250a6f3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if verifierAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NitroSwapOut:: Unauthorized Access'
    if stor7[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NitroSwapOut:: Withdraw :: Already Withdrawn Index!'
    if stor8[arg4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NitroSwapOut:: Withdraw :: Already Withdrawn TxHash!'
    stor7[arg3] = 1
    stor8[arg4] = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.release(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x73832052: address(arg1), arg2, arg3, arg4, chainId, tokenAddress
    stor1 = 1
}



}
