contract main {




// =====================  Runtime code  =====================


#
#  - getPrice(address arg1, bool arg2, bool arg3, bool arg4)
#  - getPriceV1(address arg1, bool arg2, bool arg3)
#  - getPriceV2(address arg1, bool arg2, bool arg3)
#
const sub_0957aed9(?) = 50

const sub_4a4b1f4f(?) = 20

const sub_67781c0e(?) = 1000000000000 * 10^18

const sub_9b18dc47(?) = (2 * 3600)

const BASIS_POINTS_DIVISOR = 10000

const PRICE_PRECISION = 1000000000000 * 10^18


address govAddress;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint8 stor1; offset 176
uint8 stor1; offset 184
uint128 stor1; offset 184
uint128 stor1; offset 176
uint128 stor1; offset 168
uint128 stor1; offset 160
address sub_e4440e02Address;
uint256 sub_6fc80708;
uint256 sub_378e7bf7;
address sub_8b86616cAddress;
uint256 sub_a39c73a3;
address btcAddress;
address ethAddress;
address bnbAddress;
address sub_97dfade7Address;
address sub_1193c809Address;
address sub_971bd396Address;
mapping of address sub_9dcb511a;
mapping of uint256 sub_cefe0f21;
mapping of uint256 sub_a27ea386;
mapping of uint8 stor15;
mapping of uint256 adjustmentBasisPoints;
mapping of uint8 stor17;
mapping of uint256 sub_717cfe7a;

function sub_1193c809(?) payable {
    return sub_1193c809Address
}

function gov() payable {
    return govAddress
}

function sub_30536ee5(?) payable {
    return bool(uint8(stor1.field_176))
}

function sub_378e7bf7(?) payable {
    return sub_378e7bf7
}

function sub_3ebbc601(?) payable {
    return bool(uint8(stor1.field_168))
}

function sub_3f0c3bb7(?) payable {
    return bool(uint8(stor1.field_160))
}

function adjustmentBasisPoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return adjustmentBasisPoints[arg1]
}

function bnb() payable {
    return bnbAddress
}

function sub_593d9e80(?) payable {
    return bool(uint8(stor1.field_184))
}

function isAdjustmentAdditive(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function sub_6fc80708(?) payable {
    return sub_6fc80708
}

function sub_717cfe7a(?) payable {
    require calldata.size - 4 >= 32
    return sub_717cfe7a[arg1]
}

function sub_8b86616c(?) payable {
    return sub_8b86616cAddress
}

function eth() payable {
    return ethAddress
}

function sub_971bd396(?) payable {
    return sub_971bd396Address
}

function sub_97dfade7(?) payable {
    return sub_97dfade7Address
}

function sub_9dcb511a(?) payable {
    require calldata.size - 4 >= 32
    return sub_9dcb511a[arg1]
}

function sub_a27ea386(?) payable {
    require calldata.size - 4 >= 32
    return sub_a27ea386[arg1]
}

function btc() payable {
    return btcAddress
}

function sub_a39c73a3(?) payable {
    return sub_a39c73a3
}

function sub_b8f61105(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function sub_cefe0f21(?) payable {
    require calldata.size - 4 >= 32
    return sub_cefe0f21[arg1]
}

function sub_e4440e02(?) payable {
    return sub_e4440e02Address
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    govAddress = arg1
}

function setChainlinkFlags(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    sub_e4440e02Address = arg1
}

function setMaxStrictPriceDeviation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    sub_378e7bf7 = arg1
}

function setSecondaryPriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    sub_8b86616cAddress = arg1
}

function setSpreadThresholdBasisPoints(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    sub_a39c73a3 = arg1
}

function setIsAmmEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function setUseV2Pricing(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    Mask(80, 0, stor1.field_176) = Mask(80, 0, arg1)
}

function setFavorPrimaryPrice(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    Mask(72, 0, stor1.field_184) = Mask(72, 0, arg1)
}

function setIsSecondaryPriceEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    Mask(88, 0, stor1.field_168) = Mask(88, 0, arg1)
}

function setTokens(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    btcAddress = arg1
    ethAddress = arg2
    bnbAddress = arg3
}

function setPairs(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    sub_97dfade7Address = arg1
    sub_1193c809Address = arg2
    sub_971bd396Address = arg3
}

function setTokenConfig(address arg1, address arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    sub_9dcb511a[address(arg1)] = arg2
    sub_cefe0f21[address(arg1)] = arg3
    stor15[address(arg1)] = uint8(arg4)
}

function setPriceSampleSpace(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe5661756c745072696365466565643a20696e76616c6964205f707269636553616d706c6553706163,
                    mem[205 len 23]
    sub_6fc80708 = arg1
}

function getSecondaryPrice(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if not sub_8b86616cAddress:
        return arg2
    require ext_code.size(sub_8b86616cAddress)
    staticcall sub_8b86616cAddress.0x7fece368 with:
            gas gas_remaining wei
           args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setSpreadBasisPoints(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    if arg2 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x645661756c745072696365466565643a20696e76616c6964205f7370726561644261736973506f696e74,
                    mem[206 len 22]
    sub_a27ea386[address(arg1)] = arg2
}

function setAdjustment(address arg1, bool arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, 'dVaultPriceFeed: forbidden'
    if sub_717cfe7a[address(arg1)] + (2 * 3600) < sub_717cfe7a[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if sub_717cfe7a[address(arg1)] + (2 * 3600) >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x775661756c745072696365466565643a2061646a7573746d656e74206672657175656e63792065786365656465,
                    mem[209 len 19]
    if arg3 > 20:
        revert with 0, 'invalid _adjustmentBps'
    stor17[address(arg1)] = uint8(arg2)
    adjustmentBasisPoints[address(arg1)] = arg3
    sub_717cfe7a[address(arg1)] = block.timestamp
}

function getPairPrice(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not arg2:
        if not ext_call.return_data[50 len 14]:
            return 0
        if not ext_call.return_data[18 len 14]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / Mask(112, 0, ext_call.return_data[32]))
        if 1000000000000 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    if not ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / Mask(112, 0, ext_call.return_data[0]))
    if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
}

function getPrimaryPrice(address arg1, bool arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[0] = arg1
    mem[32] = 12
    if not sub_9dcb511a[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x5661756c745072696365466565643a20696e76616c69642070726963652066656500,
                    mem[198 len 30]
    if sub_e4440e02Address:
        mem[100] = 0xa438451d6458044c3c8cd2f6f31c91ac882a6d91
        require ext_code.size(sub_e4440e02Address)
        staticcall sub_e4440e02Address.getFlag(address arg1) with:
                gas gas_remaining wei
               args 0xa438451d6458044c3c8cd2f6f31c91ac882a6d91
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x436861696e6c696e6b20666565647320617265206e6f74206265696e672075706461746500,
                        mem[201 len 27]
    require ext_code.size(sub_9dcb511a[address(arg1)])
    staticcall sub_9dcb511a[address(arg1)].latestRound() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while Mask(80, 0, idx) < sub_6fc80708:
        if Mask(80, 0, ext_call.return_data[0]) <= Mask(80, 0, idx):
            if s <= 0:
                revert with 0, 32, 37, 0x655661756c745072696365466565643a20636f756c64206e6f742066657463682070726963, mem[201 len 27]
            if not s:
                mem[128] = 'SafeMath: division by zero' << 48
                if 10^sub_cefe0f21[address(arg1)]:
                    return (0 / 10^sub_cefe0f21[address(arg1)])
            else:
                if 1000000000000 * 10^18 * s / s != 1000000000000 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                mem[128] = 'SafeMath: division by zero' << 48
                if 10^sub_cefe0f21[address(arg1)]:
                    return (1000000000000 * 10^18 * s / 10^sub_cefe0f21[address(arg1)])
            ('iszero', ('exp', 10, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cefe0f21', 13)))))
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 0
            while idx < 26:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[228] = mem[234 len 26]
            revert with 0, 32, 26, mem[228]
        require ext_code.size(sub_9dcb511a[address(arg1)])
        if Mask(80, 0, idx):
            staticcall sub_9dcb511a[address(arg1)].getRoundData(uint80 arg1) with:
                    gas gas_remaining wei
                   args Mask(80, 0, ext_call.return_data[0] - idx)
            mem[96 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if ext_call.return_data[32] <= 0:
                revert with 0, 'sVaultPriceFeed: invalid price'
            if s:
                if not arg2:
                    if ext_call.return_data[32] >= s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if ext_call.return_data[32] <= s:
                        if arg2:
                            idx = idx + 1
                            s = s
                            continue 
                        if ext_call.return_data[32] >= s:
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = ext_call.return_data[32]
            continue 
        staticcall sub_9dcb511a[address(arg1)].latestAnswer() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sVaultPriceFeed: invalid price'
        if s:
            if not arg2:
                if ext_call.return_data[0] >= s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if ext_call.return_data[0] <= s:
                    if arg2:
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] >= s:
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    if s <= 0:
        revert with 0, 32, 37, 0x655661756c745072696365466565643a20636f756c64206e6f742066657463682070726963, mem[201 len 27]
    if not s:
        if not 10^sub_cefe0f21[address(arg1)]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^sub_cefe0f21[address(arg1)])
    if 1000000000000 * 10^18 * s / s != 1000000000000 * 10^18:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if not 10^sub_cefe0f21[address(arg1)]:
        revert with 0, 'SafeMath: division by zero'
    return (1000000000000 * 10^18 * s / 10^sub_cefe0f21[address(arg1)])
}

function getAmmPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if bnbAddress == arg1:
        require ext_code.size(sub_97dfade7Address)
        staticcall sub_97dfade7Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / Mask(112, 0, ext_call.return_data[0]))
        if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    if ethAddress == arg1:
        require ext_code.size(sub_97dfade7Address)
        staticcall sub_97dfade7Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[18 len 14]:
            require ext_code.size(sub_1193c809Address)
            staticcall sub_1193c809Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14]:
                    if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                else:
                    return 0
            else:
                return 0
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_1193c809Address)
            staticcall sub_1193c809Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[18 len 14]:
                if 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 0 / 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    else:
                        return 0
                else:
                    return 0
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / Mask(112, 0, ext_call.return_data[0]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
            if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                return 0
            if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
        if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_1193c809Address)
        staticcall sub_1193c809Address.getReserves() with:
                gas gas_remaining wei
    else:
        if btcAddress != arg1:
            return 0
        require ext_code.size(sub_97dfade7Address)
        staticcall sub_97dfade7Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[18 len 14]:
            require ext_code.size(sub_971bd396Address)
            staticcall sub_971bd396Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14]:
                    if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                else:
                    return 0
            else:
                return 0
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_971bd396Address)
            staticcall sub_971bd396Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[18 len 14]:
                if 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 0 / 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    else:
                        return 0
                else:
                    return 0
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / Mask(112, 0, ext_call.return_data[0]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
            if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                return 0
            if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
        if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_971bd396Address)
        staticcall sub_971bd396Address.getReserves() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if 0 / 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            else:
                return 0
        else:
            return 0
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            return 0
        if 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
}

function getAmmPriceV2(address arg1, bool arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if bnbAddress == arg1:
        require ext_code.size(sub_97dfade7Address)
        staticcall sub_97dfade7Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[18 len 14]:
            return arg3
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                return arg3
            if 0 / Mask(112, 0, ext_call.return_data[0]) <= arg3:
                if not arg3:
                    if arg3 - (0 / Mask(112, 0, ext_call.return_data[0])):
                        if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0])) / arg3 - (0 / Mask(112, 0, ext_call.return_data[0])) != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0:
                            if not uint8(stor1.field_184):
                                return (0 / Mask(112, 0, ext_call.return_data[0]))
                            return arg3
                else:
                    if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not arg3 - (0 / Mask(112, 0, ext_call.return_data[0])):
                        if 0 < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (0 / Mask(112, 0, ext_call.return_data[0]))
                            return arg3
                    else:
                        if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0])) / arg3 - (0 / Mask(112, 0, ext_call.return_data[0])) != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0])) < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (0 / Mask(112, 0, ext_call.return_data[0]))
                            return arg3
            else:
                if arg3 > 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3:
                    if (0 / Mask(112, 0, ext_call.return_data[0])) - arg3:
                        if (10000 * 0 / Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) / (0 / Mask(112, 0, ext_call.return_data[0])) - arg3 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (10000 * 0 / Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) < 0:
                            if not uint8(stor1.field_184):
                                return (0 / Mask(112, 0, ext_call.return_data[0]))
                            return arg3
                else:
                    if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not (0 / Mask(112, 0, ext_call.return_data[0])) - arg3:
                        if 0 < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (0 / Mask(112, 0, ext_call.return_data[0]))
                            return arg3
                    else:
                        if (10000 * 0 / Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) / (0 / Mask(112, 0, ext_call.return_data[0])) - arg3 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (10000 * 0 / Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (0 / Mask(112, 0, ext_call.return_data[0]))
                            return arg3
            if not arg2:
                if 0 / Mask(112, 0, ext_call.return_data[0]) >= arg3:
                    return arg3
            else:
                if 0 / Mask(112, 0, ext_call.return_data[0]) <= arg3:
                    if arg2:
                        return arg3
                    if 0 / Mask(112, 0, ext_call.return_data[0]) >= arg3:
                        return arg3
            return (0 / Mask(112, 0, ext_call.return_data[0]))
        if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            return arg3
        if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= arg3:
            if not arg3:
                if arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
                    if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) != 10000:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                        if not uint8(stor1.field_184):
                            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        return arg3
            else:
                if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
                    if 0 < sub_a39c73a3 * arg3:
                        if not uint8(stor1.field_184):
                            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        return arg3
                else:
                    if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) != 10000:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < sub_a39c73a3 * arg3:
                        if not uint8(stor1.field_184):
                            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        return arg3
        else:
            if arg3 > 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                if (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - arg3:
                    if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) / (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - arg3 != 10000:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) < 0:
                        if not uint8(stor1.field_184):
                            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        return arg3
            else:
                if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - arg3:
                    if 0 < sub_a39c73a3 * arg3:
                        if not uint8(stor1.field_184):
                            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        return arg3
                else:
                    if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) / (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - arg3 != 10000:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) < sub_a39c73a3 * arg3:
                        if not uint8(stor1.field_184):
                            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        return arg3
        if not arg2:
            if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) >= arg3:
                return arg3
        else:
            if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= arg3:
                if arg2:
                    return arg3
                if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) >= arg3:
                    return arg3
        return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    if ethAddress == arg1:
        require ext_code.size(sub_97dfade7Address)
        staticcall sub_97dfade7Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[18 len 14]:
            require ext_code.size(sub_1193c809Address)
            staticcall sub_1193c809Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14]:
                    if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
            return arg3
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_1193c809Address)
            staticcall sub_1193c809Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[18 len 14]:
                if 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 0 / 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                return arg3
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / Mask(112, 0, ext_call.return_data[0]):
                    return arg3
                if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
                    return arg3
                if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
                    if not arg3:
                        if arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                            if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < 0:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                    else:
                        if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                            if 0 < sub_a39c73a3 * arg3:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                        else:
                            if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < sub_a39c73a3 * arg3:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                else:
                    if arg3 > 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3:
                        if (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < 0:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                    else:
                        if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                            if 0 < sub_a39c73a3 * arg3:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < sub_a39c73a3 * arg3:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                if not arg2:
                    if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                        return arg3
                else:
                    if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
                        if arg2:
                            return arg3
                        if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                            return arg3
                return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
            if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                return arg3
            if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
                return arg3
            if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
                if not arg3:
                    if arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                        if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < 0:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
                else:
                    if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                        if 0 < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
                    else:
                        if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
            else:
                if arg3 > 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3:
                    if (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                        if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < 0:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
                else:
                    if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                        if 0 < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
                    else:
                        if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
            if not arg2:
                if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                    return arg3
            else:
                if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
                    if arg2:
                        return arg3
                    if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                        return arg3
            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
        if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_1193c809Address)
        staticcall sub_1193c809Address.getReserves() with:
                gas gas_remaining wei
    else:
        if btcAddress != arg1:
            return arg3
        require ext_code.size(sub_97dfade7Address)
        staticcall sub_97dfade7Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[18 len 14]:
            require ext_code.size(sub_971bd396Address)
            staticcall sub_971bd396Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14]:
                    if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
            return arg3
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_971bd396Address)
            staticcall sub_971bd396Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[18 len 14]:
                if 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 0 / 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                return arg3
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / Mask(112, 0, ext_call.return_data[0]):
                    return arg3
                if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
                    return arg3
                if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
                    if not arg3:
                        if arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                            if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < 0:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                    else:
                        if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                            if 0 < sub_a39c73a3 * arg3:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                        else:
                            if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < sub_a39c73a3 * arg3:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                else:
                    if arg3 > 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3:
                        if (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < 0:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                    else:
                        if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                            if 0 < sub_a39c73a3 * arg3:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < sub_a39c73a3 * arg3:
                                if not uint8(stor1.field_184):
                                    return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                                return arg3
                if not arg2:
                    if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                        return arg3
                else:
                    if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
                        if arg2:
                            return arg3
                        if 0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                            return arg3
                return (0 / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
            if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                return arg3
            if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
                return arg3
            if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
                if not arg3:
                    if arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                        if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < 0:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
                else:
                    if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                        if 0 < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
                    else:
                        if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
            else:
                if arg3 > 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3:
                    if (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                        if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < 0:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
                else:
                    if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                        if 0 < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
                    else:
                        if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < sub_a39c73a3 * arg3:
                            if not uint8(stor1.field_184):
                                return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                            return arg3
            if not arg2:
                if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                    return arg3
            else:
                if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
                    if arg2:
                        return arg3
                    if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                        return arg3
            return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
        if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_971bd396Address)
        staticcall sub_971bd396Address.getReserves() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if 0 / 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return arg3
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            return arg3
        if 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
            return arg3
        if 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
            if not arg3:
                if arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                    if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < 0:
                        if not uint8(stor1.field_184):
                            return (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                        return arg3
            else:
                if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                    if 0 < sub_a39c73a3 * arg3:
                        if not uint8(stor1.field_184):
                            return (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                        return arg3
                else:
                    if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if (10000 * arg3) - (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < sub_a39c73a3 * arg3:
                        if not uint8(stor1.field_184):
                            return (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                        return arg3
        else:
            if arg3 > 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                if (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                    if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < 0:
                        if not uint8(stor1.field_184):
                            return (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                        return arg3
            else:
                if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                    if 0 < sub_a39c73a3 * arg3:
                        if not uint8(stor1.field_184):
                            return (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                        return arg3
                else:
                    if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < sub_a39c73a3 * arg3:
                        if not uint8(stor1.field_184):
                            return (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                        return arg3
        if not arg2:
            if 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                return arg3
        else:
            if 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
                if arg2:
                    return arg3
                if 0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                    return arg3
        return (0 / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000000000000 * 10^18:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return arg3
    if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
        return arg3
    if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
        if not arg3:
            if arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < 0:
                    if not uint8(stor1.field_184):
                        return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                    return arg3
        else:
            if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18):
                if 0 < sub_a39c73a3 * arg3:
                    if not uint8(stor1.field_184):
                        return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                    return arg3
            else:
                if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) / arg3 - (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) != 10000:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if (10000 * arg3) - (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) < sub_a39c73a3 * arg3:
                    if not uint8(stor1.field_184):
                        return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                    return arg3
    else:
        if arg3 > 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg3:
            if (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < 0:
                    if not uint8(stor1.field_184):
                        return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                    return arg3
        else:
            if sub_a39c73a3 * arg3 / arg3 != sub_a39c73a3:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3:
                if 0 < sub_a39c73a3 * arg3:
                    if not uint8(stor1.field_184):
                        return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                    return arg3
            else:
                if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) / (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - arg3 != 10000:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if (10000 * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18) - (10000 * arg3) < sub_a39c73a3 * arg3:
                    if not uint8(stor1.field_184):
                        return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
                    return arg3
    if not arg2:
        if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
            return arg3
    else:
        if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 <= arg3:
            if arg2:
                return arg3
            if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18 >= arg3:
                return arg3
    return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000000000000 * 10^18)
}



}
