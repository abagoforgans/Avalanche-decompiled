contract main {




// =====================  Runtime code  =====================


#
#  - getHypotheticalAccountLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4)
#  - getAccountLiquidity(address arg1)
#  - liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5)
#  - transferAllowed(address arg1, address arg2, address arg3, uint256 arg4)
#  - borrowAllowed(address arg1, address arg2, uint256 arg3)
#  - redeemAllowed(address arg1, address arg2, uint256 arg3)
#  - exitMarket(address arg1)
#
const isComptroller = 1

const getBlockNumber = block.timestamp


address adminAddress;
address pendingAdminAddress;
address comptrollerImplementationAddress;
address pendingComptrollerImplementationAddress;
address oracleAddress;
uint256 closeFactorMantissa;
uint256 liquidationIncentiveMantissa;
array of struct accountAssets;
mapping of struct markets;
uint8 _mintGuardianPaused; offset 160
uint8 _borrowGuardianPaused; offset 168
uint8 transferGuardianPaused; offset 176
uint8 seizeGuardianPaused; offset 184
uint128 stor9; offset 184
uint128 stor9; offset 176
address pauseGuardianAddress;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
array of struct allMarkets;
address borrowCapGuardianAddress;
mapping of uint256 borrowCaps;
address supplyCapGuardianAddress;
mapping of uint256 supplyCaps;
mapping of uint256 creditLimits;
address liquidityMiningAddress;
mapping of uint8 stor99;

function supplyCaps(address arg1) payable {
    require calldata.size - 4 >= 32
    return supplyCaps[arg1]
}

function creditLimits(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return creditLimits[arg1][arg2]
}

function borrowCapGuardian() payable {
    return borrowCapGuardianAddress
}

function pauseGuardian() payable {
    return pauseGuardianAddress
}

function pendingAdmin() payable {
    return pendingAdminAddress
}

function isCreditAccount(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(creditLimits[address(arg1)][address(arg2)])
}

function _mintGuardianPaused() payable {
    return bool(_mintGuardianPaused)
}

function isMarketListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(markets[address(arg1)].field_0))
}

function borrowCaps(address arg1) payable {
    require calldata.size - 4 >= 32
    return borrowCaps[arg1]
}

function liquidationIncentiveMantissa() payable {
    return liquidationIncentiveMantissa
}

function allMarkets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allMarkets.length
    return address(allMarkets[arg1].field_0)
}

function borrowGuardianPaused(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function mintGuardianPaused(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function oracle() payable {
    return oracleAddress
}

function liquidityMining() payable {
    return liquidityMiningAddress
}

function transferGuardianPaused() payable {
    return bool(transferGuardianPaused)
}

function markets(address arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(markets[arg1].field_768) <= 2
    return bool(uint8(markets[arg1].field_0)), uint256(markets[arg1].field_256), uint8(markets[arg1].field_768)
}

function checkMembership(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(uint8(markets[address(arg2)][2][address(arg1)].field_0))
}

function supplyCapGuardian() payable {
    return supplyCapGuardianAddress
}

function seizeGuardianPaused() payable {
    return bool(seizeGuardianPaused)
}

function comptrollerImplementation() payable {
    return comptrollerImplementationAddress
}

function flashloanGuardianPaused(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function accountAssets(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(accountAssets[arg1].field_0)
    return address(accountAssets[arg1][arg2].field_0)
}

function pendingComptrollerImplementation() payable {
    return pendingComptrollerImplementationAddress
}

function _borrowGuardianPaused() payable {
    return bool(_borrowGuardianPaused)
}

function closeFactorMantissa() payable {
    return closeFactorMantissa
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function borrowVerify(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
}

function mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
}

function transferVerify(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
}

function seizeVerify(address arg1, address arg2, address arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
}

function repayBorrowVerify(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
}

function liquidateBorrowVerify(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
}

function redeemVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not arg4:
        if arg3 > 0:
            revert with 0, 'redeemTokens zero'
}

function _setPriceOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 16, 0);
        return 1
    oracleAddress = arg1
    emit NewPriceOracle(oracleAddress, arg1);
    return 0
}

function _setCloseFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 4, 0);
        return 1
    closeFactorMantissa = arg1
    emit NewCloseFactor(closeFactorMantissa, arg1);
    return 0
}

function _setPauseGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 19, 0);
        return 1
    pauseGuardianAddress = arg1
    emit NewPauseGuardian(pauseGuardianAddress, arg1);
    return 0
}

function _setLiquidationIncentive(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 11, 0);
        return 1
    liquidationIncentiveMantissa = arg1
    emit NewLiquidationIncentive(liquidationIncentiveMantissa, arg1);
    return 0
}

function flashloanAllowed(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    return not bool(stor12[address(arg1)])
}

function _setSupplyCapGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x746f6e6c792061646d696e2063616e2073657420737570706c79206361702067756172646961,
                    mem[202 len 26]
    supplyCapGuardianAddress = arg1
    emit NewSupplyCapGuardian(supplyCapGuardianAddress, arg1);
}

function _setBorrowCapGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x656f6e6c792061646d696e2063616e2073657420626f72726f77206361702067756172646961,
                    mem[202 len 26]
    borrowCapGuardianAddress = arg1
    emit NewBorrowCapGuardian(borrowCapGuardianAddress, arg1);
}

function repayBorrowAllowed(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not uint8(markets[address(arg1)].field_0):
        return 9
    if creditLimits[address(arg3)][address(arg1)]:
        if arg3 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x6463616e6e6f74207265706179206f6e20626568616c66206f6620637265646974206163636f756e,
                        mem[204 len 24]
        else:
            return 0
    else:
        return 0
}

function updateCTokenVersion(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x646f6e6c792063546f6b656e20636f756c6420757064617465206974732076657273696f,
                    mem[200 len 28]
    if uint8(markets[address(arg1)].field_0):
        require arg2 <= 2
        uint8(markets[address(arg1)].field_768) = arg2
        require uint8(markets[address(arg1)].field_768) <= 2
        require arg2 <= 2
        emit 0x98dee10a: address(arg1), uint8(markets[address(arg1)].field_768), arg2
}

function _setLiquidityMining(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x736f6e6c792061646d696e2063616e20736574206c6971756964697479206d696e696e67206d6f64756c,
                    mem[206 len 22]
    require ext_code.size(arg1)
    staticcall arg1.comptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'mismatch comptroller'
    liquidityMiningAddress = arg1
    emit NewLiquidityMining(liquidityMiningAddress, arg1);
}

function _setSeizePaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    if pauseGuardianAddress != msg.sender:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x656f6e6c7920706175736520677561726469616e20616e642061646d696e2063616e2070617573,
                        mem[203 len 25]
    else:
        if adminAddress != msg.sender:
            if arg1 != 1:
                revert with 0, 'only admin can unpause'
    Mask(72, 0, stor9.field_184) = Mask(72, 0, arg1)
    emit ActionPaused(string rg1, bool rg2):
                      64,
                      arg1,
                      5,
                      0x5365697a65000000000000000000000000000000000000000000000000000000,
    return arg1
}

function _setTransferPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    if pauseGuardianAddress != msg.sender:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x656f6e6c7920706175736520677561726469616e20616e642061646d696e2063616e2070617573,
                        mem[203 len 25]
    else:
        if adminAddress != msg.sender:
            if arg1 != 1:
                revert with 0, 'only admin can unpause'
    Mask(80, 0, stor9.field_176) = Mask(80, 0, arg1)
    emit ActionPaused(string rg1, bool rg2):
                      64,
                      arg1,
                      8,
                      0x5472616e73666572000000000000000000000000000000000000000000000000,
    return arg1
}

function _become(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x746f6e6c7920756e6974726f6c6c65722061646d696e2063616e206368616e676520627261696e,
                    mem[203 len 25]
    require ext_code.size(arg1)
    call arg1.0xc1e80334 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'change not authorized'
}

function _setCollateralFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        emit Failure(1, 6, 0);
        return 1
    if not uint8(markets[address(arg1)].field_0):
        emit Failure(9, 7, 0);
        return 9
    if 25 * 10^13 * 3600 < arg2:
        emit Failure(6, 8, 0);
        return 6
    if arg2:
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            emit Failure(13, 9, 0);
            return 13
    uint256(markets[address(arg1)].field_256) = arg2
    emit NewCollateralFactor(address(arg1), uint256(markets[address(arg1)].field_256), arg2);
    return 0
}

function getAllMarkets() payable {
    if not allMarkets.length:
        mem[(32 * allMarkets.length) + 128] = 32
        mem[(32 * allMarkets.length) + 160] = allMarkets.length
        mem[(32 * allMarkets.length) + 192 len floor32(allMarkets.length)] = mem[128 len floor32(allMarkets.length)]
        return memory
          from (32 * allMarkets.length) + 128
           len (96 * allMarkets.length) + 64
    mem[128] = address(allMarkets.field_0)
    idx = 128
    s = 0
    while (32 * allMarkets.length) + 96 > idx:
        mem[idx + 32] = address(allMarkets[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allMarkets.length) + 192 len floor32(allMarkets.length)] = mem[128 len floor32(allMarkets.length)]
    return Array(len=allMarkets.length, data=mem[128 len floor32(allMarkets.length)], mem[(32 * allMarkets.length) + floor32(allMarkets.length) + 192 len (32 * allMarkets.length) - floor32(allMarkets.length)]), 
}

function seizeAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if seizeGuardianPaused:
        revert with 0, 'seize is paused'
    if creditLimits[address(arg4)][address(arg2)]:
        revert with 0, 'cannot sieze from credit account'
    if not uint8(markets[address(arg1)].field_0):
        return 9
    if not uint8(markets[address(arg2)].field_0):
        return 9
    require ext_code.size(arg2)
    staticcall arg2.comptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.comptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
        return 0
    return 2
}

function _supportMarket(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'only admin may support market'
    if uint8(markets[address(arg1)].field_0):
        revert with 0, 'market already listed'
    require ext_code.size(arg1)
    staticcall arg1.isCToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= 2
    uint8(markets[address(arg1)].field_0) = 1
    uint256(markets[address(arg1)].field_256) = 0
    require arg2 <= 2
    uint8(markets[address(arg1)].field_768) = arg2
    idx = 0
    while idx < allMarkets.length:
        mem[0] = 13
        if address(allMarkets[idx].field_0) == arg1:
            revert with 0, 'market already added'
        idx = idx + 1
        continue 
    allMarkets.length++
    address(allMarkets[allMarkets.length].field_0) = arg1
    emit MarketListed(arg1);
    return 0
}

function _setMintPaused(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(markets[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe63616e6e6f742070617573652061206d61726b65742074686174206973206e6f74206c69737465,
                    mem[204 len 24]
    if pauseGuardianAddress != msg.sender:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x656f6e6c7920706175736520677561726469616e20616e642061646d696e2063616e2070617573,
                        mem[203 len 25]
    else:
        if adminAddress != msg.sender:
            if arg2 != 1:
                revert with 0, 'only admin can unpause'
    stor10[address(arg1)] = uint8(arg2)
    emit ActionPaused(address rg1, string rg2, bool rg3):
                      address(arg1),
                      96,
                      arg2,
                      4,
                      0x4d696e7400000000000000000000000000000000000000000000000000000000,
    return arg2
}

function _setBorrowPaused(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(markets[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe63616e6e6f742070617573652061206d61726b65742074686174206973206e6f74206c69737465,
                    mem[204 len 24]
    if pauseGuardianAddress != msg.sender:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x656f6e6c7920706175736520677561726469616e20616e642061646d696e2063616e2070617573,
                        mem[203 len 25]
    else:
        if adminAddress != msg.sender:
            if arg2 != 1:
                revert with 0, 'only admin can unpause'
    stor11[address(arg1)] = uint8(arg2)
    emit ActionPaused(address rg1, string rg2, bool rg3):
                      address(arg1),
                      96,
                      arg2,
                      6,
                      0x426f72726f770000000000000000000000000000000000000000000000000000,
    return arg2
}

function _setFlashloanPaused(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(markets[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe63616e6e6f742070617573652061206d61726b65742074686174206973206e6f74206c69737465,
                    mem[204 len 24]
    if pauseGuardianAddress != msg.sender:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x656f6e6c7920706175736520677561726469616e20616e642061646d696e2063616e2070617573,
                        mem[203 len 25]
    else:
        if adminAddress != msg.sender:
            if arg2 != 1:
                revert with 0, 'only admin can unpause'
    stor12[address(arg1)] = uint8(arg2)
    emit ActionPaused(address rg1, string rg2, bool rg3):
                      address(arg1),
                      96,
                      arg2,
                      9,
                      0x466c6173686c6f616e0000000000000000000000000000000000000000000000,
    return arg2
}

function _setCreditLimit(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6e6f6e6c792061646d696e2063616e207365742070726f746f636f6c20637265646974206c696d69,
                    mem[204 len 24]
    if not uint8(markets[address(arg2)].field_0):
        revert with 0, 'invalid market'
    require uint8(markets[address(arg2)].field_768) <= 2
    if uint8(markets[address(arg2)].field_768) == 1:
        require ext_code.size(arg2)
        call arg2.registerCollateral(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if bool(uint8(markets[address(arg2)][2][address(arg1)].field_0)) != 1:
        uint8(markets[address(arg2)][2][address(arg1)].field_0) = 1
        uint256(accountAssets[address(arg1)].field_0)++
        address(accountAssets[address(arg1)][uint256(accountAssets[address(arg1)].field_0)].field_0) = arg2
        emit MarketEntered(address(arg2), arg1);
    creditLimits[address(arg1)][address(arg2)] = arg3
    emit CreditLimitChanged(address(arg1), address(arg2), arg3);
}

function _setMarketSupplyCaps(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        if supplyCapGuardianAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6e6f6e6c792061646d696e206f7220737570706c792063617020677561726469616e2063616e2073657420737570706c7920636170,
                        mem[217 len 11]
    if not arg1.length:
        revert with 0, 'invalid input'
    if arg1.length != arg2.length:
        revert with 0, 'invalid input'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 17
        supplyCaps[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit NewSupplyCap(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function _setMarketBorrowCaps(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        if borrowCapGuardianAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x746f6e6c792061646d696e206f7220626f72726f772063617020677561726469616e2063616e2073657420626f72726f7720636170,
                        mem[217 len 11]
    if not arg1.length:
        revert with 0, 'invalid input'
    if arg1.length != arg2.length:
        revert with 0, 'invalid input'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 15
        borrowCaps[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit NewBorrowCap(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function getAssetsIn(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint256(accountAssets[address(arg1)].field_0):
        mem[(32 * uint256(accountAssets[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(accountAssets[address(arg1)].field_0)) + 160] = uint256(accountAssets[address(arg1)].field_0)
        mem[(32 * uint256(accountAssets[address(arg1)].field_0)) + 192 len floor32(uint256(accountAssets[address(arg1)].field_0))] = mem[128 len floor32(uint256(accountAssets[address(arg1)].field_0))]
        return memory
          from (32 * uint256(accountAssets[address(arg1)].field_0)) + 128
           len (96 * uint256(accountAssets[address(arg1)].field_0)) + 64
    mem[128] = address(accountAssets[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(accountAssets[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = address(accountAssets[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(accountAssets[address(arg1)].field_0)) + 192 len floor32(uint256(accountAssets[address(arg1)].field_0))] = mem[128 len floor32(uint256(accountAssets[address(arg1)].field_0))]
    return Array(len=uint256(accountAssets[address(arg1)].field_0), data=mem[128 len floor32(uint256(accountAssets[address(arg1)].field_0))], mem[(32 * uint256(accountAssets[address(arg1)].field_0)) + floor32(uint256(accountAssets[address(arg1)].field_0)) + 192 len (32 * uint256(accountAssets[address(arg1)].field_0)) - floor32(uint256(accountAssets[address(arg1)].field_0))]), 
}

function mintAllowed(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor10[address(arg1)]:
        revert with 0, 'mint is paused'
    if creditLimits[address(arg2)][address(arg1)]:
        revert with 0, 'credit account cannot mint'
    if not uint8(markets[address(arg1)].field_0):
        return 9
    if supplyCaps[address(arg1)]:
        require ext_code.size(arg1)
        staticcall arg1.getCash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.totalBorrows() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.totalReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'totalSupplies failed'
        if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
            revert with 0, 'totalSupplies failed'
        if arg3 < 0:
            revert with 0, 'addition overflow'
        if arg3 + ext_call.return_data[0] >= supplyCaps[address(arg1)]:
            revert with 0, 'market supply cap reached'
        else:
            return 0
    else:
        return 0
}

function _delistMarket(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin may delist market'
    if not uint8(markets[address(arg1)].field_0):
        revert with 0, 'market not listed'
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'market not empty'
    require ext_code.size(arg1)
    staticcall arg1.isCToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(markets[address(arg1)].field_0) = 0
    uint256(markets[address(arg1)].field_256) = 0
    uint8(markets[address(arg1)].field_768) = 0
    idx = 0
    while idx < allMarkets.length:
        mem[0] = 13
        if address(allMarkets[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require allMarkets.length - 1 < allMarkets.length
        require idx < allMarkets.length
        address(allMarkets[idx].field_0) = address(allMarkets[allMarkets.length].field_0)
        require allMarkets.length - 1 < allMarkets.length
        address(allMarkets[allMarkets.length].field_0) = 0
        allMarkets.length--
        if allMarkets.length > allMarkets.length - 1:
            idx = allMarkets.length + sha3(13) - 1
            while sha3(13) + allMarkets.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        emit 0x9710c341: arg1
    emit 0x9710c341: arg1
}

function liquidateCalculateSeizeTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 13, 0
    if not ext_call.return_data[0]:
        return 13, 0
    require ext_code.size(arg2)
    staticcall arg2.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not liquidationIncentiveMantissa:
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'divide by zero'
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return 0
        if not arg3:
            return 0
        require 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        if arg3 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != arg3:
            revert with 0, 'multiplication overflow'
        return 0, arg3 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'divide by zero'
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return 0
        if not arg3:
            return 0
        require 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        if arg3 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != arg3:
            revert with 0, 'multiplication overflow'
        return 0, arg3 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
    require liquidationIncentiveMantissa
    if ext_call.return_data[0] * liquidationIncentiveMantissa / liquidationIncentiveMantissa != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow'
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18:
            require ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18
            if 10^18 * ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 / ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 != 10^18:
                revert with 0, 'multiplication overflow'
        revert with 0, 'divide by zero'
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18:
            require ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18
            if 10^18 * ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 / ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 != 10^18:
                revert with 0, 'multiplication overflow'
        revert with 0, 'divide by zero'
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow'
    if not ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18:
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'divide by zero'
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return 0
        if not arg3:
            return 0
        require 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        if arg3 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != arg3:
            revert with 0, 'multiplication overflow'
        return 0, arg3 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
    require ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18
    if 10^18 * ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 / ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 != 10^18:
        revert with 0, 'multiplication overflow'
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'divide by zero'
    if not 10^18 * ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        return 0
    if not arg3:
        return 0
    require 10^18 * ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    if arg3 * 10^18 * ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != arg3:
        revert with 0, 'multiplication overflow'
    return 0, 
           arg3 * 10^18 * ext_call.return_data[0] * liquidationIncentiveMantissa / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
}

function enterMarkets(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _65 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            _70 = sha3(mem[(32 * idx) + 140 len 20], 8)
            if not uint8(markets[mem[(32 * idx) + 140 len 20]].field_0):
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 9
            else:
                require uint8(markets[mem[(32 * idx) + 140 len 20]].field_768) <= 2
                if uint8(markets[mem[(32 * idx) + 140 len 20]].field_768) != 1:
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 8) + 2
                    if bool(uint8(markets[mem[(32 * idx) + 140 len 20]][2][address(msg.sender)].field_0)) != 1:
                        uint8(markets[mem[(32 * idx) + 140 len 20]][2][address(msg.sender)].field_0) = 1
                        mem[32] = 7
                        uint256(accountAssets[address(msg.sender)].field_0)++
                        mem[0] = sha3(address(msg.sender), 7)
                        address(accountAssets[address(msg.sender)][uint256(accountAssets[address(msg.sender)].field_0)].field_0) = mem[(32 * idx) + 140 len 20]
                        mem[(64 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
                        mem[(64 * arg1.length) + 192] = msg.sender
                        emit MarketEntered(mem[(64 * arg1.length) + 160], msg.sender);
                else:
                    mem[(64 * arg1.length) + 164] = msg.sender
                    require ext_code.size(address(_65))
                    call address(_65).registerCollateral(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = msg.sender
                    mem[32] = _70 + 2
                    if bool(uint8(stor[_70 + 2][address(msg.sender)])) != 1:
                        uint8(stor[_70 + 2][address(msg.sender)]) = 1
                        mem[32] = 7
                        uint256(accountAssets[address(msg.sender)].field_0)++
                        mem[0] = sha3(address(msg.sender), 7)
                        address(accountAssets[address(msg.sender)][uint256(accountAssets[address(msg.sender)].field_0)].field_0) = address(_65)
                        mem[(64 * arg1.length) + 160] = address(_65)
                        mem[(64 * arg1.length) + 192] = msg.sender
                        emit MarketEntered(address(_65), msg.sender);
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[20252 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _69 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            _71 = sha3(mem[(32 * idx) + 140 len 20], 8)
            if not uint8(markets[mem[(32 * idx) + 140 len 20]].field_0):
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 9
            else:
                require uint8(markets[mem[(32 * idx) + 140 len 20]].field_768) <= 2
                if uint8(markets[mem[(32 * idx) + 140 len 20]].field_768) != 1:
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 8) + 2
                    if bool(uint8(markets[mem[(32 * idx) + 140 len 20]][2][address(msg.sender)].field_0)) != 1:
                        uint8(markets[mem[(32 * idx) + 140 len 20]][2][address(msg.sender)].field_0) = 1
                        mem[32] = 7
                        uint256(accountAssets[address(msg.sender)].field_0)++
                        mem[0] = sha3(address(msg.sender), 7)
                        address(accountAssets[address(msg.sender)][uint256(accountAssets[address(msg.sender)].field_0)].field_0) = mem[(32 * idx) + 140 len 20]
                        mem[(64 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
                        mem[(64 * arg1.length) + 192] = msg.sender
                        emit MarketEntered(mem[(64 * arg1.length) + 160], msg.sender);
                else:
                    mem[(64 * arg1.length) + 164] = msg.sender
                    require ext_code.size(address(_69))
                    call address(_69).registerCollateral(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = msg.sender
                    mem[32] = _71 + 2
                    if bool(uint8(stor[_71 + 2][address(msg.sender)])) != 1:
                        uint8(stor[_71 + 2][address(msg.sender)]) = 1
                        mem[32] = 7
                        uint256(accountAssets[address(msg.sender)].field_0)++
                        mem[0] = sha3(address(msg.sender), 7)
                        address(accountAssets[address(msg.sender)][uint256(accountAssets[address(msg.sender)].field_0)].field_0) = address(_69)
                        mem[(64 * arg1.length) + 160] = address(_69)
                        mem[(64 * arg1.length) + 192] = msg.sender
                        emit MarketEntered(address(_69), msg.sender);
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}



}
