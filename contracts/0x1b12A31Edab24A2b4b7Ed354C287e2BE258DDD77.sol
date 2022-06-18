contract main {




// =====================  Runtime code  =====================


mapping of address emergencyStop;
address owner;
mapping of uint256 parameter;

function getEmergencyStop() payable {
    return emergencyStop[0x454d455247454e43595f53544f50000000000000000000000000000000000000]
}

function getPriceProvider() payable {
    return emergencyStop[0x50524943455f50524f5649444552000000000000000000000000000000000000]
}

function getIVGuesser() payable {
    return emergencyStop[0x49565f4755455353455200000000000000000000000000000000000000000000]
}

function getParameter(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return parameter[arg1]
}

function getCapProvider() payable {
    return emergencyStop[0x4341505f50524f56494445520000000000000000000000000000000000000000]
}

function getIVProvider() payable {
    return emergencyStop[0x49565f50524f5649444552000000000000000000000000000000000000000000]
}

function getModule(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return emergencyStop[arg1]
}

function owner() payable {
    return owner
}

function getAMMFactory() payable {
    return emergencyStop['AMM_FACTORY']
}

function getPricingMethod() payable {
    return emergencyStop[0x50524943494e475f4d4554484f44000000000000000000000000000000000000]
}

function getOptionFactory() payable {
    return emergencyStop['OPTION_FACTORY']
}

function getOptionHelper() payable {
    return emergencyStop[0x4f5054494f4e5f48454c50455200000000000000000000000000000000000000]
}

function getOptionPoolRegistry() payable {
    return emergencyStop['OPTION_POOL_REGISTRY']
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setParameter(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    parameter[arg1] = arg2
    emit ParameterSet(arg1, arg2);
}

function setAMMFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop['AMM_FACTORY'] = arg1
    emit ModuleSet('AMM_FACTORY' << 168, arg1);
}

function setOptionFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop['OPTION_FACTORY'] = arg1
    emit ModuleSet('OPTION_FACTORY' << 144, arg1);
}

function setOptionPoolRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop['OPTION_POOL_REGISTRY'] = arg1
    emit ModuleSet('OPTION_POOL_REGISTRY' << 96, arg1);
}

function setIVGuesser(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop[0x49565f4755455353455200000000000000000000000000000000000000000000] = arg1
    emit ModuleSet(0x49565f4755455353455200000000000000000000000000000000000000000000, arg1);
}

function setIVProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop[0x49565f50524f5649444552000000000000000000000000000000000000000000] = arg1
    emit ModuleSet(0x49565f50524f5649444552000000000000000000000000000000000000000000, arg1);
}

function setCapProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop[0x4341505f50524f56494445520000000000000000000000000000000000000000] = arg1
    emit ModuleSet(0x4341505f50524f56494445520000000000000000000000000000000000000000, arg1);
}

function setOptionHelper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop[0x4f5054494f4e5f48454c50455200000000000000000000000000000000000000] = arg1
    emit ModuleSet(0x4f5054494f4e5f48454c50455200000000000000000000000000000000000000, arg1);
}

function setPriceProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop[0x50524943455f50524f5649444552000000000000000000000000000000000000] = arg1
    emit ModuleSet(0x50524943455f50524f5649444552000000000000000000000000000000000000, arg1);
}

function setEmergencyStop(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop[0x454d455247454e43595f53544f50000000000000000000000000000000000000] = arg1
    emit ModuleSet(0x454d455247454e43595f53544f50000000000000000000000000000000000000, arg1);
}

function setPricingMethod(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ModuleStorage: Invalid module'
    emergencyStop[0x50524943494e475f4d4554484f44000000000000000000000000000000000000] = arg1
    emit ModuleSet(0x50524943494e475f4d4554484f44000000000000000000000000000000000000, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
