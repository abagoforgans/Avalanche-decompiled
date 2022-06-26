contract main {




// =====================  Runtime code  =====================


#
#  - beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_4d1c3621Address;
address liquidityPoolManagerImplementationAddress;
address sub_2cfbfde4Address;
mapping of uint256 boughtTokensOf;
mapping of uint256 _inTokens;
mapping of uint256 _outTokens;
mapping of uint8 stor304;
mapping of uint8 stor305;
address sub_9544c616Address;
address sub_21d0f856Address;
uint256 timeframeCurrent;
uint256 timeframeExpiresAfter;
uint256 stor310;
uint256 stor311;
uint256 stor312;
uint256 stor313;
uint256 stor314;
uint8 stor315;
uint32 maxTokenPerWalletPercent; offset 8

function getTimeframeExpiresAfter() payable {
    return timeframeExpiresAfter
}

function sub_21d0f856(?) payable {
    return sub_21d0f856Address
}

function _isExcludedFromObserver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor305[arg1])
}

function sub_2cfbfde4(?) payable {
    return sub_2cfbfde4Address
}

function getBoughtTokensOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return boughtTokensOf[address(arg1)]
}

function sub_4d1c3621(?) payable {
    return sub_4d1c3621Address
}

function owner() payable {
    return owner
}

function getTimeframeCurrent() payable {
    return timeframeCurrent
}

function sub_9544c616(?) payable {
    return sub_9544c616Address
}

function _isDenied(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor304[arg1])
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

function sub_59a945e9(?) payable {
    stor310 = block.timestamp
    stor311 = stor313
    stor312 = stor314
}

function _decode_call_771274418637067024507() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor315 = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_93c95637(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9544c616Address = address(arg1)
}

function sub_f46a69e4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_21d0f856Address = address(arg1)
}

function denyMalicious(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor304[address(arg1)] = uint8(arg2)
}

function excludeFromObserver(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor305[address(arg1)] = uint8(arg2)
}

function recoverLostAVAX() payable {
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserverUpgradeable: Timeframe expiration cannot be 0'
    timeframeExpiresAfter = arg1
}

function setTimeframeQuotaIn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserverUpgradeable: Timeframe token quota in cannot be 0'
    stor313 = arg1
    stor310 = 0
}

function setTimeframeQuotaOut(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserverUpgradeable: Timeframe token quota out cannot be 0'
    stor314 = arg1
    stor310 = 0
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

function sub_9d67f4dd(?) payable {
    staticcall sub_4d1c3621Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor313 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * stor313 / 10000)
}

function sub_9ee9aaae(?) payable {
    staticcall sub_4d1c3621Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor314 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * stor314 / 10000)
}

function getMaxTokenPerWallet() payable {
    staticcall sub_4d1c3621Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and maxTokenPerWalletPercent > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * maxTokenPerWalletPercent / 10000)
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

function sub_abb47cf0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TroopsManager: You can only set 0x0 or a contract address as a new implementation'
    sub_2cfbfde4Address = address(arg1)
    emit 0x2997fe9e: sub_2cfbfde4Address, address(arg1)
}

function sub_31bb88c4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint32(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserverUpgradeable: Max token per wallet percentage cannot be 0'
    maxTokenPerWalletPercent = uint32(arg1)
    if uint32(arg1) < stor313:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserverUpgradeable: Max token per wallet must be above or equal to timeframeQuotaIn'
}

function changeLiquidityPoolManagerImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'LiquidityPoolManagerUpgradeable: You can only set 0x0 or a contract address as a new implementation'
    liquidityPoolManagerImplementationAddress = arg1
    emit UpdateLiquidityPoolManager(liquidityPoolManagerImplementationAddress, arg1);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor305[address(arg1)] = 1
}

function isWalletFull(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_4d1c3621Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and maxTokenPerWalletPercent > -1 / ext_call.return_data[0]:
        revert with 0, 17
    staticcall sub_4d1c3621Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= ext_call.return_data[0] * maxTokenPerWalletPercent / 10000
}

function sub_9ebf906a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Army: You can only set 0x0 or a contract address as a new implementation'
    sub_4d1c3621Address = address(arg1)
    emit 0xa3e8afe8: sub_4d1c3621Address, address(arg1)
    staticcall sub_4d1c3621Address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor305[ext_call.return_data[12 len 20]] = 1
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor315 = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    timeframeExpiresAfter = 24 * 3600
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor313 = 10
    stor310 = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor314 = 10
    stor310 = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor305[stor51] = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function isExcludedFromObserver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor305[address(arg1)]:
        return bool(stor305[address(arg1)])
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
    staticcall sub_4d1c3621Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor313 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * stor313 / 10000 < _inTokens[stor308][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and _inTokens[stor308][address(arg1)] >= 0:
        revert with 0, 17
    if _inTokens[stor308][address(arg1)] < 0 and ext_call.return_data[0] * stor313 / 10000 > _inTokens[stor308][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    staticcall sub_4d1c3621Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor314 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * stor314 / 10000 < _outTokens[stor308][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and _outTokens[stor308][address(arg1)] >= 0:
        revert with 0, 17
    if _outTokens[stor308][address(arg1)] < 0 and ext_call.return_data[0] * stor314 / 10000 > _outTokens[stor308][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    staticcall sub_4d1c3621Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor314 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if boughtTokensOf[address(arg1)] > -(ext_call.return_data[0] * stor314 / 10000) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0] * stor314 / 10000 >= 0:
        revert with 0, 17
    if ext_call.return_data[0] * stor314 / 10000 < 0 and boughtTokensOf[address(arg1)] < -(ext_call.return_data[0] * stor314 / 10000) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if (ext_call.return_data[0] * stor314 / 10000) + boughtTokensOf[address(arg1)] < _outTokens[stor308][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and _outTokens[stor308][address(arg1)] >= 0:
        revert with 0, 17
    if _outTokens[stor308][address(arg1)] < 0 and (ext_call.return_data[0] * stor314 / 10000) + boughtTokensOf[address(arg1)] > _outTokens[stor308][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return timeframeCurrent + timeframeExpiresAfter, 
           stor313,
           stor314,
           (ext_call.return_data[0] * stor313 / 10000) - _inTokens[stor308][address(arg1)],
           (ext_call.return_data[0] * stor314 / 10000) - _outTokens[stor308][address(arg1)],
           (ext_call.return_data[0] * stor314 / 10000) + boughtTokensOf[address(arg1)] - _outTokens[stor308][address(arg1)]
}



}
