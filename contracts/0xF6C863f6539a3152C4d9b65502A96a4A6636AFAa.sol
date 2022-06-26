contract main {




// =====================  Runtime code  =====================


#
#  - beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4)
#
address owner;
address sub_82b9b95bAddress;
address liquidityPoolManagerImplementationAddress;
address sub_8a3142fbAddress;
mapping of uint256 boughtTokensOf;
mapping of uint256 _inTokens;
mapping of uint256 _outTokens;
mapping of uint8 stor154;
mapping of uint8 stor155;
uint256 timeframeCurrent;
uint256 timeframeExpiresAfter;
uint256 stor159;
uint256 stor160;
uint8 stor161;
uint8 maxTokenPerWalletPercent; offset 8
mapping of uint8 stor162;
mapping of uint8 stor163;

function getTimeframeExpiresAfter() payable {
    return timeframeExpiresAfter
}

function _isExcludedFromObserver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor155[arg1])
}

function getBoughtTokensOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return boughtTokensOf[address(arg1)]
}

function sub_6a61ba69(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor163[arg1])
}

function sub_82b9b95b(?) payable {
    return sub_82b9b95bAddress
}

function sub_8a3142fb(?) payable {
    return sub_8a3142fbAddress
}

function owner() payable {
    return owner
}

function getTimeframeCurrent() payable {
    return timeframeCurrent
}

function _isDenied(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor154[arg1])
}

function _boughtTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return boughtTokensOf[arg1]
}

function _inTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return _inTokens[arg1][arg2]
}

function sub_be6df262(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor162[arg1])
}

function getLiquidityPoolManagerImplementation() payable {
    return liquidityPoolManagerImplementationAddress
}

function _outTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return _outTokens[arg1][arg2]
}

function maxTokenPerWalletPercent() payable {
    return maxTokenPerWalletPercent
}

function _fallback() payable {
    revert
}

function _decode_call_771274418637067024507() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor161 = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_33614062(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor163[address(arg1)] = uint8(bool(arg2))
}

function sub_4047b8de(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor162[address(arg1)] = uint8(bool(arg2))
}

function denyMalicious(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor154[address(arg1)] = uint8(arg2)
}

function excludeFromObserver(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor155[address(arg1)] = uint8(arg2)
}

function sub_87b97dd5(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTimeframeExpiresAfter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WalletObserver: Timeframe expiration cannot be 0'
    timeframeExpiresAfter = arg1
}

function setTimeframeQuotaIn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserver: Timeframe token quota in cannot be 0'
    stor159 = arg1
}

function setTimeframeQuotaOut(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserver: Timeframe token quota out cannot be 0'
    stor160 = arg1
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

function getMaxTokenPerWallet() payable {
    staticcall sub_82b9b95bAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and maxTokenPerWalletPercent > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * maxTokenPerWalletPercent / 200)
}

function recoverLostTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1bd61e10(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FactionsManager: You can only set 0x0 or a contract address as a new implementation'
    sub_8a3142fbAddress = address(arg1)
    emit 0x44f98368: sub_8a3142fbAddress, address(arg1)
}

function changeLiquidityPoolManagerImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'LiquidityPoolManager: You can only set 0x0 or a contract address as a new implementation'
    liquidityPoolManagerImplementationAddress = arg1
    emit UpdateLiquidityPoolManager(liquidityPoolManagerImplementationAddress, arg1);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor155[address(arg1)] = 1
}

function isWalletFull(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_82b9b95bAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and maxTokenPerWalletPercent > -1 / ext_call.return_data[0]:
        revert with 0, 17
    staticcall sub_82b9b95bAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= ext_call.return_data[0] * maxTokenPerWalletPercent / 200
}

function setMaxTokenPerWalletPercent(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserver: Max token per wallet percentage cannot be 0'
    maxTokenPerWalletPercent = arg1
    staticcall sub_82b9b95bAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and maxTokenPerWalletPercent > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * maxTokenPerWalletPercent / 200 < stor159:
        revert with 0, 'WalletObserver: Max token per wallet must be above or equal to timeframeQuotaIn'
}

function sub_de2dcedf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'SpookyVerse: You can only set 0x0 or a contract address as a new implementation'
    sub_82b9b95bAddress = address(arg1)
    emit 0x94524bf8: sub_82b9b95bAddress, address(arg1)
    staticcall sub_82b9b95bAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor155[ext_call.return_data[12 len 20]] = 1
}

function isExcludedFromObserver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor155[address(arg1)]:
        return bool(stor155[address(arg1)])
    staticcall liquidityPoolManagerImplementationAddress.isRouter(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        staticcall liquidityPoolManagerImplementationAddress.isPair(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            staticcall liquidityPoolManagerImplementationAddress.0xb278110f with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getOverviewOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timeframeCurrent > !timeframeExpiresAfter:
        revert with 0, 17
    if stor159 < _inTokens[stor156][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and _inTokens[stor156][address(arg1)] >= 0:
        revert with 0, 17
    if _inTokens[stor156][address(arg1)] < 0 and stor159 > _inTokens[stor156][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor160 < _outTokens[stor156][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and _outTokens[stor156][address(arg1)] >= 0:
        revert with 0, 17
    if _outTokens[stor156][address(arg1)] < 0 and stor160 > _outTokens[stor156][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if boughtTokensOf[address(arg1)] > -stor160 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor160 >= 0:
        revert with 0, 17
    if stor160 < 0 and boughtTokensOf[address(arg1)] < -stor160 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor160 + boughtTokensOf[address(arg1)] < _outTokens[stor156][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and _outTokens[stor156][address(arg1)] >= 0:
        revert with 0, 17
    if _outTokens[stor156][address(arg1)] < 0 and stor160 + boughtTokensOf[address(arg1)] > _outTokens[stor156][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return timeframeCurrent + timeframeExpiresAfter, 
           stor159,
           stor160,
           stor159 - _inTokens[stor156][address(arg1)],
           stor160 - _outTokens[stor156][address(arg1)],
           stor160 + boughtTokensOf[address(arg1)] - _outTokens[stor156][address(arg1)]
}



}
