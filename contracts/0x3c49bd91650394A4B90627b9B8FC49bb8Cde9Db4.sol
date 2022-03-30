contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 marketId;
mapping of address lendingPool;

function getLendingPool() payable {
    return lendingPool['LENDING_POOL']
}

function getAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return lendingPool[arg1]
}

function getLendingRateOracle() payable {
    return lendingPool['LENDING_RATE_ORACLE']
}

function getMarketId() payable {
    return marketId[0 len marketId.length]
}

function getLendingPoolCollateralManager() payable {
    return lendingPool['COLLATERAL_MANAGER']
}

function getLendingPoolConfigurator() payable {
    return lendingPool['LENDING_POOL_CONFIGURATOR']
}

function owner() payable {
    return owner
}

function getPoolAdmin() payable {
    return lendingPool['POOL_ADMIN']
}

function getFlashLoanFeeVault() payable {
    return lendingPool['FLASH_LOAN_FEE_VAULT']
}

function getEmergencyAdmin() payable {
    return lendingPool['EMERGENCY_ADMIN']
}

function getPriceOracle() payable {
    return lendingPool['PRICE_ORACLE']
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPriceOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lendingPool['PRICE_ORACLE'] = arg1
    emit PriceOracleUpdated(arg1);
}

function setAddress(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lendingPool[arg1] = arg2
    emit AddressSet(arg1, 0, arg2);
}

function setPoolAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lendingPool['POOL_ADMIN'] = arg1
    emit ConfigurationAdminUpdated(arg1);
}

function setEmergencyAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lendingPool['EMERGENCY_ADMIN'] = arg1
    emit EmergencyAdminUpdated(arg1);
}

function setLendingRateOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lendingPool['LENDING_RATE_ORACLE'] = arg1
    emit LendingRateOracleUpdated(arg1);
}

function setFlashLoanFeeVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lendingPool['FLASH_LOAN_FEE_VAULT'] = arg1
    emit FlashLoanFeeVaultUpdated(arg1);
}

function setLendingPoolCollateralManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lendingPool['COLLATERAL_MANAGER'] = arg1
    emit LendingPoolCollateralManagerUpdated(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[11324 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAddressAsProxy(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lendingPool[arg1]:
        require ext_code.size(lendingPool[arg1])
        call lendingPool[arg1].upgradeToAndCall(address rg1, bytes rg2) with:
             gas gas_remaining wei
            args address(arg2), 64, 36, initialize(address rg1), address(this.address) << 64, 0, 0, address(arg2) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        create contract with 0 wei
                        code: code.data[8748 len 2576], this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address rg1, bytes rg2) with:
             gas gas_remaining wei
            args address(arg2), 64, 36, initialize(address rg1), address(this.address) << 64, 0, 0, address(arg2) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        lendingPool[arg1] = address(create.new_address)
        emit ProxyCreated(arg1, address(create.new_address));
    emit AddressSet(arg1, 1, arg2);
}

function setLendingPoolImpl(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lendingPool['LENDING_POOL']:
        require ext_code.size(lendingPool['LENDING_POOL'])
        call lendingPool['LENDING_POOL'].upgradeToAndCall(address rg1, bytes rg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address rg1), address(this.address) << 64, 0, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        create contract with 0 wei
                        code: code.data[8748 len 2576], this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address rg1, bytes rg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address rg1), address(this.address) << 64, 0, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        lendingPool['LENDING_POOL'] = address(create.new_address)
        emit ProxyCreated('LENDING_POOL', address(create.new_address));
    emit LendingPoolUpdated(arg1);
}

function setLendingPoolConfiguratorImpl(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lendingPool['LENDING_POOL_CONFIGURATOR']:
        require ext_code.size(lendingPool['LENDING_POOL_CONFIGURATOR'])
        call lendingPool['LENDING_POOL_CONFIGURATOR'].upgradeToAndCall(address rg1, bytes rg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address rg1), address(this.address) << 64, 0, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        create contract with 0 wei
                        code: code.data[8748 len 2576], this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address rg1, bytes rg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address rg1), address(this.address) << 64, 0, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        lendingPool['LENDING_POOL_CONFIGURATOR'] = address(create.new_address)
        emit ProxyCreated('LENDING_POOL_CONFIGURATOR', address(create.new_address));
    emit LendingPoolConfiguratorUpdated(arg1);
}

function setMarketId(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketId[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit MarketIdSet(string rg1):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit MarketIdSet(string rg1):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                         mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
}



}
