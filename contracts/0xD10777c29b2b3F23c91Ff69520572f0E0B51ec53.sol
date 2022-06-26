contract main {




// =====================  Runtime code  =====================


#
#  - beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_31ad0068Address;
address liquidityPoolManagerImplementationAddress;
address sub_5cd3947aAddress;
mapping of uint256 boughtTokensOf;
mapping of uint256 _inTokens;
mapping of uint256 _outTokens;
mapping of uint8 stor304;
mapping of uint8 stor305;
uint256 timeframeCurrent;
uint256 timeframeExpiresAfter;
uint256 stor309;
uint256 stor310;
uint8 stor311;
uint8 maxTokenPerWalletPercent; offset 8

function sub_00704a1a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor304[arg1])
}

function getTimeframeExpiresAfter() payable {
    return timeframeExpiresAfter
}

function _isExcludedFromObserver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor305[arg1])
}

function sub_31ad0068(?) payable {
    return sub_31ad0068Address
}

function getBoughtTokensOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return boughtTokensOf[address(arg1)]
}

function sub_5cd3947a(?) payable {
    return sub_5cd3947aAddress
}

function owner() payable {
    return owner
}

function getTimeframeCurrent() payable {
    return timeframeCurrent
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

function sub_bea5348b(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor311 = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function setTimeframeQuotaIn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserverUpgradeable: Timeframe token quota in cannot be 0'
    stor309 = arg1
}

function setTimeframeQuotaOut(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserverUpgradeable: Timeframe token quota out cannot be 0'
    stor310 = arg1
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
    staticcall sub_31ad0068Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and maxTokenPerWalletPercent > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * maxTokenPerWalletPercent / 100)
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

function sub_c6489efc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CometsManager: You can only set 0x0 or a contract address as a new implementation'
    sub_5cd3947aAddress = address(arg1)
    emit 0x969d477c: sub_5cd3947aAddress, address(arg1)
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
    stor305[address(arg1)] = 1
}

function isWalletFull(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_31ad0068Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and maxTokenPerWalletPercent > -1 / ext_call.return_data[0]:
        revert with 0, 17
    staticcall sub_31ad0068Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= ext_call.return_data[0] * maxTokenPerWalletPercent / 100
}

function sub_bd733514(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Comet: You can only set 0x0 or a contract address as a new implementation'
    sub_31ad0068Address = address(arg1)
    emit 0x78b84586: sub_31ad0068Address, address(arg1)
    staticcall sub_31ad0068Address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor305[ext_call.return_data[12 len 20]] = 1
}

function setMaxTokenPerWalletPercent(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WalletObserverUpgradeable: Max token per wallet percentage cannot be 0'
    maxTokenPerWalletPercent = arg1
    staticcall sub_31ad0068Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and maxTokenPerWalletPercent > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * maxTokenPerWalletPercent / 100 < stor309:
        revert with 0, 'WalletObserverUpgradeable: Max token per wallet must be above or equal to timeframeQuotaIn'
}

function sub_82c8028b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 304
        stor304[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    stor311 = 1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    timeframeExpiresAfter = 4 * 3600
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor309 = 3000000 * 10^18
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor310 = 150000000 * 10^18
    maxTokenPerWalletPercent = 1
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
    if stor309 < _inTokens[stor306][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and _inTokens[stor306][address(arg1)] >= 0:
        revert with 0, 17
    if _inTokens[stor306][address(arg1)] < 0 and stor309 > _inTokens[stor306][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor310 < _outTokens[stor306][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and _outTokens[stor306][address(arg1)] >= 0:
        revert with 0, 17
    if _outTokens[stor306][address(arg1)] < 0 and stor310 > _outTokens[stor306][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if boughtTokensOf[address(arg1)] > -stor310 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor310 >= 0:
        revert with 0, 17
    if stor310 < 0 and boughtTokensOf[address(arg1)] < -stor310 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor310 + boughtTokensOf[address(arg1)] < _outTokens[stor306][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and _outTokens[stor306][address(arg1)] >= 0:
        revert with 0, 17
    if _outTokens[stor306][address(arg1)] < 0 and stor310 + boughtTokensOf[address(arg1)] > _outTokens[stor306][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return timeframeCurrent + timeframeExpiresAfter, 
           stor309,
           stor310,
           stor309 - _inTokens[stor306][address(arg1)],
           stor310 - _outTokens[stor306][address(arg1)],
           stor310 + boughtTokensOf[address(arg1)] - _outTokens[stor306][address(arg1)]
}



}
