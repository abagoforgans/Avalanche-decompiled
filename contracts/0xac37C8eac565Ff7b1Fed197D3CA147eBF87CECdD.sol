contract main {




// =====================  Runtime code  =====================


#
#  - collectProfitAndDistribute(uint256 arg1)
#
const SHARE_UNIT = 10^18

const ASSET_ID_BASE = 0

const RATIO_DENOMINATOR = 10000


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address baseAssetAddress; offset 16
uint256 stor0; offset 8
uint256 totalShares;
uint256 sharePrice;
mapping of uint256 shareBalance;
mapping of struct psInfo;
array of struct stor5;
mapping of uint256 stor6;
mapping of uint8 stor7;
array of struct profitAssets;
mapping of uint256 profitAssetHeld;
address stor10;
uint128 stor23BD; offset 160
address storeAddress;
bool stor46E8;
uint256 autoControl;

function psListLength() payable {
    return stor5.length
}

function psInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return psInfo[arg1].field_0, psInfo[arg1].field_256, psInfo[arg1].field_512
}

function totalShares() payable {
    return totalShares
}

function autoControl() payable {
    return uint256(autoControl)
}

function profitAssets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < profitAssets.length
    return profitAssets[arg1].field_0
}

function profitAssetHeld(address arg1) payable {
    require calldata.size - 4 >= 32
    return profitAssetHeld[arg1]
}

function activeCreditor(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sharePrice() payable {
    return sharePrice
}

function shareBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return shareBalance[arg1]
}

function store() payable {
    return storeAddress
}

function isBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function baseAsset() payable {
    return baseAssetAddress
}

function _fallback() payable {
    revert
}

function treasury() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x61d027b3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function registry() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x7b103999 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function swapCenter() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xce41fdc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function invested() payable {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x24d7806c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x6d70f7ae with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function storageFetchBool(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.boolStorage(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function storageFetchUint256(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.uint256Storage(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function storageFetchAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.addressStorage(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function storageFetchUint256InArray(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.uint256ArrayStorage(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function storageFetchBoolInArray(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.boolArrayStorage(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function storageFetchAddressInArray(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.addressArrayStorage(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function shareBalanceAsBaseAsset(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if sharePrice * arg1 / arg1 != sharePrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sharePrice * arg1 / 10^18)
}

function baseAssetBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not shareBalance[address(arg1)]:
        return 0
    if sharePrice * shareBalance[address(arg1)] / shareBalance[address(arg1)] != sharePrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sharePrice * shareBalance[address(arg1)] / 10^18)
}

function baseAssetAsShareBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if not sharePrice:
            revert with 0, 'SafeMath: division by zero'
        return (0 / sharePrice)
    if 10^18 * arg1 / arg1 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not sharePrice:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * arg1 / sharePrice)
}

function addCreditor(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    stor7[address(arg1)] = 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if storeAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7953746f726167655631436f6e73756d65725570677261646561626c653a20496e697469616c697a65,
                    mem[205 len 23]
    storeAddress = arg1
    stor23BD = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function setAutoControl(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    uint256(autoControl) = arg1
}

function removeVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    stor7[address(arg1)] = 0
    emit VaultRemoved(arg1);
}

function totalDebt() payable {
    if not totalShares:
        if var42002 >= stor5.length:
            return var42003
        if var48001 >= stor5.length:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[262 len 30]
        require var50002 < stor5.length
        if var58001 + var58002 < var58002:
            revert with 0, 'SafeMath: addition overflow'
        # nil
    else:
        if sharePrice * totalShares / totalShares != sharePrice:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if var43002 >= stor5.length:
            return var43003
        if var49001 >= stor5.length:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[262 len 30]
        require var51002 < stor5.length
        if var59001 + var59002 < var59002:
            revert with 0, 'SafeMath: addition overflow'
        # nil
}

function addBeneficiary(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    if stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6e4956534142553a2074617267657420616c726561647920697320612062656e65666963696172,
                    mem[203 len 25]
    psInfo[address(arg1)].field_0 = arg2
    psInfo[address(arg1)].field_256 = 0
    psInfo[address(arg1)].field_512 = arg3
    emit BeneficiaryAdded(address(arg1), arg2, arg3);
    if not stor6[address(arg1)]:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_160 = 0
        stor6[address(arg1)] = stor5.length
}

function removeBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    if not stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x774956534142553a20746172676574206973206e6f7420612062656e65666963696172,
                    mem[199 len 29]
    emit BeneficiaryRemoved(arg1);
    if stor6[address(arg1)]:
        require stor5.length - 1 < stor5.length
        require stor6[address(arg1)] - 1 < stor5.length
        stor5[stor6[address(arg1)]].field_0 = stor5[stor5.length].field_0
        stor6[stor5[stor5.length].field_0] = stor6[address(arg1)]
        require stor5.length
        stor5[stor5.length].field_0 = 0
        stor5.length--
        stor6[address(arg1)] = 0
}

function pullFundsFromInvestment(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x6d70f7ae with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            65,
                            0x7253746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d696e206f72206f70657261746f,
                            mem[229 len 31]
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf)
    call 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(stor0.field_0), arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xe62d8eca: arg1
}

function nativeProfitPending() payable {
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not totalShares:
        if var62002 >= stor5.length:
            if var62003 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((2 * ext_call.return_data[0]) - var62003)
        if var68001 >= stor5.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(2 * ceil32(return_data.size)) + 262 len 30]
        require var70002 < stor5.length
        if var78001 + var78002 < var78002:
            revert with 0, 'SafeMath: addition overflow'
        # nil
    else:
        if sharePrice * totalShares / totalShares != sharePrice:
            revert with 0, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(2 * ceil32(return_data.size)) + 197 len 31]
        if var63002 >= stor5.length:
            if var63003 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((2 * ext_call.return_data[0]) - var63003)
        if var69001 >= stor5.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(2 * ceil32(return_data.size)) + 262 len 30]
        require var71002 < stor5.length
        if var79001 + var79002 < var79002:
            revert with 0, 'SafeMath: addition overflow'
        # nil
}

function investAll() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x6d70f7ae with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            65,
                            0x7253746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d696e206f72206f70657261746f,
                            mem[229 len 31]
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(baseAssetAddress)
        call baseAssetAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf)
        call 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args address(stor0.field_0), ext_call.return_data[0], address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xd94c5bae 
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
    if profitAssets.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x644956534142553a2070726f666974546f6b656e2073686f756c6420626520656d7074,
                    mem[199 len 29]
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if storeAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7953746f726167655631436f6e73756d65725570677261646561626c653a20496e697469616c697a65,
                    mem[205 len 23]
    storeAddress = arg1
    stor23BD = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    baseAssetAddress = arg2
    profitAssets.length++
    profitAssets[profitAssets.length].field_0 = arg2
    profitAssets[profitAssets.length].field_256 = 0
    require profitAssets.length
    if address(profitAssets.field_0) != baseAssetAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x744956534142553a20426173652061737365742069642073686f756c6420626520707265646566696e656420636f6e7374616e,
                    mem[215 len 13]
    sharePrice = 10^18
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    require ext_code.size(0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf)
    staticcall 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf.getReserveData(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool(ceil32(return_data.size) + 480 <= test266151307())
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 512 <= test266151307())
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    stor10 = ext_call.return_data[236 len 20]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function fileInsuanceClaim() payable {
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not totalShares:
        if var58002 < stor5.length:
            if var64001 >= stor5.length:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[ceil32(return_data.size) + 262 len 30]
            require var66002 < stor5.length
            if var74001 + var74002 < var74002:
                revert with 0, 'SafeMath: addition overflow'
            # nil
        else:
            if 2 * ext_call.return_data[0] >= var58003:
                emit 0xba91f910: 0
                if 0 >= var58003 / 10000:
                    if var76002 >= stor5.length:
                    if var82001 >= stor5.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 262 len 30]
                    require var84002 < stor5.length
                    # nil
                else:
                    if var77002 >= stor5.length:
                    if var83001 >= stor5.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 262 len 30]
                    require var85002 < stor5.length
                    # nil
            else:
                if 2 * ext_call.return_data[0] > var58003:
                    revert with 0, 'SafeMath: subtraction overflow'
                if var58003 - (2 * ext_call.return_data[0]) >= var58003 / 10000:
                    emit 0xba91f910: (var58003 - (2 * ext_call.return_data[0]))
                    if var82002 >= stor5.length:
                    if var88001 >= stor5.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 326 len 30]
                    require var90002 < stor5.length
                    # nil
                else:
                    emit 0xba91f910: 0
                    if var83002 >= stor5.length:
                    if var89001 >= stor5.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 326 len 30]
                    require var91002 < stor5.length
                    # nil
    else:
        if sharePrice * totalShares / totalShares != sharePrice:
            revert with 0, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 197 len 31]
        if var59002 < stor5.length:
            if var65001 >= stor5.length:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[ceil32(return_data.size) + 262 len 30]
            require var67002 < stor5.length
            if var75001 + var75002 < var75002:
                revert with 0, 'SafeMath: addition overflow'
            # nil
        else:
            if 2 * ext_call.return_data[0] >= var59003:
                emit 0xba91f910: 0
                if 0 >= var59003 / 10000:
                    if var77002 >= stor5.length:
                    if var83001 >= stor5.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 262 len 30]
                    require var85002 < stor5.length
                    # nil
                else:
                    if var78002 >= stor5.length:
                    if var84001 >= stor5.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 262 len 30]
                    require var86002 < stor5.length
                    # nil
            else:
                if 2 * ext_call.return_data[0] > var59003:
                    revert with 0, 'SafeMath: subtraction overflow'
                if var59003 - (2 * ext_call.return_data[0]) >= var59003 / 10000:
                    emit 0xba91f910: (var59003 - (2 * ext_call.return_data[0]))
                    if var83002 >= stor5.length:
                    if var89001 >= stor5.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 326 len 30]
                    require var91002 < stor5.length
                    # nil
                else:
                    emit 0xba91f910: 0
                    if var84002 >= stor5.length:
                    if var90001 >= stor5.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 326 len 30]
                    require var92002 < stor5.length
                    # nil
}

function askToInvestAsCreditor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x61d027b3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x734956534142553a206d73672e73656e646572206973206e6f742061206372656469746f,
                            mem[200 len 28]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(baseAssetAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call baseAssetAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not arg1:
            if not sharePrice:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sharePrice) + shareBalance[address(msg.sender)] < shareBalance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            shareBalance[address(msg.sender)] += 0 / sharePrice
            if (0 / sharePrice) + totalShares < totalShares:
                revert with 0, 'SafeMath: addition overflow'
            totalShares += 0 / sharePrice
            emit 0x1b3105cc: msg.sender, 0, arg1, 0 / sharePrice
        else:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if not sharePrice:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * arg1 / sharePrice) + shareBalance[address(msg.sender)] < shareBalance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            shareBalance[address(msg.sender)] += 10^18 * arg1 / sharePrice
            if (10^18 * arg1 / sharePrice) + totalShares < totalShares:
                revert with 0, 'SafeMath: addition overflow'
            totalShares += 10^18 * arg1 / sharePrice
            emit 0x1b3105cc: msg.sender, 0, arg1, 10^18 * arg1 / sharePrice
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not arg1:
            if not sharePrice:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sharePrice) + shareBalance[address(msg.sender)] < shareBalance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            shareBalance[address(msg.sender)] += 0 / sharePrice
            if (0 / sharePrice) + totalShares < totalShares:
                revert with 0, 'SafeMath: addition overflow'
            totalShares += 0 / sharePrice
            emit 0x1b3105cc: msg.sender, arg1, 0 / sharePrice
        else:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not sharePrice:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * arg1 / sharePrice) + shareBalance[address(msg.sender)] < shareBalance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            shareBalance[address(msg.sender)] += 10^18 * arg1 / sharePrice
            if (10^18 * arg1 / sharePrice) + totalShares < totalShares:
                revert with 0, 'SafeMath: addition overflow'
            totalShares += 10^18 * arg1 / sharePrice
            emit 0x1b3105cc: msg.sender, arg1, 10^18 * arg1 / sharePrice
    if bool(stor46E8) == 1:
        require ext_code.size(baseAssetAddress)
        staticcall baseAssetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(baseAssetAddress)
            call baseAssetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf)
            call 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(stor0.field_0), ext_call.return_data[0], address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return arg1
}

function claimDividendAsBeneficiary() payable {
    if not psInfo[address(msg.sender)].field_256:
        revert with 0, 'Must have non-zero dividend.'
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= psInfo[address(msg.sender)].field_256:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(baseAssetAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, psInfo[address(msg.sender)].field_288
        mem[324 len 0] = 0
        call baseAssetAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args psInfo[address(msg.sender)].field_256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, psInfo[address(msg.sender)].field_256
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        if psInfo[address(msg.sender)].field_256 > psInfo[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        psInfo[address(msg.sender)].field_256 = 0
        emit DividendClaimed(msg.sender, psInfo[address(msg.sender)].field_256);
        return psInfo[address(msg.sender)].field_256
    if ext_call.return_data[0] > psInfo[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf)
    call 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(stor0.field_0), psInfo[address(msg.sender)].field_256 - ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + 430 len 26]
    if not ext_code.size(baseAssetAddress):
        revert with 0, 'Address: call to non-contract'
    if psInfo[address(msg.sender)].field_256 < ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), msg.sender, psInfo[address(msg.sender)].field_288
        mem[(2 * ceil32(return_data.size)) + 388 len 0] = 0
        call baseAssetAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args psInfo[address(msg.sender)].field_256, mem[(2 * ceil32(return_data.size)) + 388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
        if psInfo[address(msg.sender)].field_256 > psInfo[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        psInfo[address(msg.sender)].field_256 = 0
        emit DividendClaimed(msg.sender, psInfo[address(msg.sender)].field_256);
        return psInfo[address(msg.sender)].field_256
    mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[(2 * ceil32(return_data.size)) + 388 len 0] = 0
    call baseAssetAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(2 * ceil32(return_data.size)) + 388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 356]:
            revert with 0, 
                        32,
                        42,
                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
    if ext_call.return_data[0] > psInfo[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    psInfo[address(msg.sender)].field_256 -= ext_call.return_data[0]
    emit DividendClaimed(msg.sender, ext_call.return_data[0]);
    return ext_call.return_data[0]
}

function profitsPending() payable {
    mem[100] = this.address
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if totalShares:
        if sharePrice * totalShares / totalShares != sharePrice:
            revert with 0, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(2 * ceil32(return_data.size)) + 197 len 31]
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if var64002 < stor5.length:
            if var70001 >= stor5.length:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[(2 * ceil32(return_data.size)) + 262 len 30]
            require var72002 < stor5.length
            if var80001 + var80002 < var80002:
                revert with 0, 'SafeMath: addition overflow'
            # nil
        else:
            mem[(2 * ceil32(return_data.size)) + 160] = 30
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
            if var64003 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 224] = 1
            mem[(2 * ceil32(return_data.size)) + 256] = stor10
            mem[(2 * ceil32(return_data.size)) + 288] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 292] = 64
            mem[(2 * ceil32(return_data.size)) + 356] = 1
            idx = 0
            s = (2 * ceil32(return_data.size)) + 256
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 324] = this.address
            require ext_code.size(0x357d51124f59836ded84c8a1730d72b749d8bc23)
            staticcall 0x357d51124f59836ded84c8a1730d72b749d8bc23.getRewardsBalance(address[] arg1, address arg2) with:
                    gas gas_remaining wei
                   args Array(len=1, data=mem[(2 * ceil32(return_data.size)) + 388]), this.address
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 320] = 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270
            mem[(4 * ceil32(return_data.size)) + 352] = baseAssetAddress
            mem[(4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 420] = 64
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 320
            t = (4 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 484 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _853 = mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
            require mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415 < (4 * ceil32(return_data.size)) + return_data.size + 384
            _859 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
            mem[(6 * ceil32(return_data.size)) + 384] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
            require return_data.size >= _853 + (32 * _859) + 32
            mem[(6 * ceil32(return_data.size)) + 416 len 32 * _859] = mem[(4 * ceil32(return_data.size)) + _853 + 416 len 32 * _859]
            require _859 - 1 < _859
            if (2 * ext_call.return_data[0]) - var64003 + mem[(32 * _859 - 1) + (6 * ceil32(return_data.size)) + 416] < mem[(32 * _859 - 1) + (6 * ceil32(return_data.size)) + 416]:
                revert with 0, 'SafeMath: addition overflow'
            return ((2 * ext_call.return_data[0]) - var64003 + mem[(32 * _859 - 1) + (6 * ceil32(return_data.size)) + 416])
    else:
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if var63002 < stor5.length:
            if var69001 >= stor5.length:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[(2 * ceil32(return_data.size)) + 262 len 30]
            require var71002 < stor5.length
            if var79001 + var79002 < var79002:
                revert with 0, 'SafeMath: addition overflow'
            # nil
        else:
            mem[(2 * ceil32(return_data.size)) + 160] = 30
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
            if var63003 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 224] = 1
            mem[(2 * ceil32(return_data.size)) + 256] = stor10
            mem[(2 * ceil32(return_data.size)) + 288] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 292] = 64
            mem[(2 * ceil32(return_data.size)) + 356] = 1
            idx = 0
            s = (2 * ceil32(return_data.size)) + 256
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 324] = this.address
            require ext_code.size(0x357d51124f59836ded84c8a1730d72b749d8bc23)
            staticcall 0x357d51124f59836ded84c8a1730d72b749d8bc23.getRewardsBalance(address[] arg1, address arg2) with:
                    gas gas_remaining wei
                   args Array(len=1, data=mem[(2 * ceil32(return_data.size)) + 388]), this.address
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 288] = 2
            mem[(4 * ceil32(return_data.size)) + 320] = 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270
            mem[(4 * ceil32(return_data.size)) + 352] = baseAssetAddress
            mem[(4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 420] = 64
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 320
            t = (4 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 484 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _856 = mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
            require mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415 < (4 * ceil32(return_data.size)) + return_data.size + 384
            _860 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416
            mem[(6 * ceil32(return_data.size)) + 384] = _860
            require return_data.size >= _856 + (32 * _860) + 32
            mem[(6 * ceil32(return_data.size)) + 416 len 32 * _860] = mem[(4 * ceil32(return_data.size)) + _856 + 416 len 32 * _860]
            require _860 - 1 < _860
            if (2 * ext_call.return_data[0]) - var63003 + mem[(32 * _860 - 1) + (6 * ceil32(return_data.size)) + 416] < mem[(32 * _860 - 1) + (6 * ceil32(return_data.size)) + 416]:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64]] = (2 * ext_call.return_data[0]) - var63003 + mem[(32 * _860 - 1) + (6 * ceil32(return_data.size)) + 416]
            return memory
              from mem[64]
               len 32
}

function withdrawAsCreditor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not shareBalance[address(msg.sender)]:
        revert with 0, 'IVSABU: Creditor has no balance.'
    if sharePrice * shareBalance[address(msg.sender)] / shareBalance[address(msg.sender)] != sharePrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sharePrice * shareBalance[address(msg.sender)] / 10^18 <= 0:
        revert with 0, 'IVSABU: Creditor has no balance.'
    if arg1 > sharePrice * shareBalance[address(msg.sender)] / 10^18:
        revert with 0, 32, 38, 0x644956534142553a2043616e6e6f742072657175657374206d6f7265207468616e2064656274, mem[266 len 26]
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        require ext_code.size(baseAssetAddress)
        staticcall baseAssetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 < ext_call.return_data[0]:
            if not arg1:
                if not sharePrice:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sharePrice > shareBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                shareBalance[address(msg.sender)] -= 0 / sharePrice
                if 0 / sharePrice > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalShares -= 0 / sharePrice
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                if not ext_code.size(baseAssetAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            else:
                if 10^18 * arg1 / arg1 != 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not sharePrice:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg1 / sharePrice > shareBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                shareBalance[address(msg.sender)] -= 10^18 * arg1 / sharePrice
                if 10^18 * arg1 / sharePrice > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalShares -= 10^18 * arg1 / sharePrice
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                if not ext_code.size(baseAssetAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                mem[580 len 0] = 0
            call baseAssetAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
            emit 0xa619b6e0: msg.sender, arg1, arg1
            return arg1
        if not ext_call.return_data[0]:
            if not sharePrice:
                revert with 0, 'SafeMath: division by zero'
            if 0 / sharePrice > shareBalance[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            shareBalance[address(msg.sender)] -= 0 / sharePrice
            if 0 / sharePrice > totalShares:
                revert with 0, 'SafeMath: subtraction overflow'
            totalShares -= 0 / sharePrice
        else:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not sharePrice:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * ext_call.return_data[0] / sharePrice > shareBalance[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            shareBalance[address(msg.sender)] -= 10^18 * ext_call.return_data[0] / sharePrice
            if 10^18 * ext_call.return_data[0] / sharePrice > totalShares:
                revert with 0, 'SafeMath: subtraction overflow'
            totalShares -= 10^18 * ext_call.return_data[0] / sharePrice
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
        if not ext_code.size(baseAssetAddress):
            revert with 0, 'Address: call to non-contract'
        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[580 len 0] = 0
        call baseAssetAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[548]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 627 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf)
        call 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(stor0.field_0), arg1 - ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(baseAssetAddress)
        staticcall baseAssetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 < ext_call.return_data[0]:
            if not arg1:
                if not sharePrice:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sharePrice > shareBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                shareBalance[address(msg.sender)] -= 0 / sharePrice
                if 0 / sharePrice > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalShares -= 0 / sharePrice
            else:
                if 10^18 * arg1 / arg1 != 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(2 * ceil32(return_data.size)) + 325 len 31]
                if not sharePrice:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg1 / sharePrice > shareBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                shareBalance[address(msg.sender)] -= 10^18 * arg1 / sharePrice
                if 10^18 * arg1 / sharePrice > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalShares -= 10^18 * arg1 / sharePrice
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 686 len 26]
            if not ext_code.size(baseAssetAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[(2 * ceil32(return_data.size)) + 644 len 0] = 0
            call baseAssetAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[(2 * ceil32(return_data.size)) + 644 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 
                                32,
                                42,
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 22]
            emit 0xa619b6e0: msg.sender, arg1, arg1
            return arg1
        if ext_call.return_data[0] < arg1 - ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not sharePrice:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sharePrice > shareBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                shareBalance[address(msg.sender)] -= 0 / sharePrice
                if 0 / sharePrice > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalShares -= 0 / sharePrice
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(2 * ceil32(return_data.size)) + 325 len 31]
                if not sharePrice:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * ext_call.return_data[0] / sharePrice > shareBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                shareBalance[address(msg.sender)] -= 10^18 * ext_call.return_data[0] / sharePrice
                if 10^18 * ext_call.return_data[0] / sharePrice > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalShares -= 10^18 * ext_call.return_data[0] / sharePrice
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 686 len 26]
            if not ext_code.size(baseAssetAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[(2 * ceil32(return_data.size)) + 644 len 0] = 0
        else:
            if not ext_call.return_data[0]:
                if not sharePrice:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sharePrice > shareBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                shareBalance[address(msg.sender)] -= 0 / sharePrice
                if 0 / sharePrice > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalShares -= 0 / sharePrice
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 686 len 26]
                if not ext_code.size(baseAssetAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(2 * ceil32(return_data.size)) + 325 len 31]
                if not sharePrice:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * ext_call.return_data[0] / sharePrice > shareBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                shareBalance[address(msg.sender)] -= 10^18 * ext_call.return_data[0] / sharePrice
                if 10^18 * ext_call.return_data[0] / sharePrice > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalShares -= 10^18 * ext_call.return_data[0] / sharePrice
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 686 len 26]
                if not ext_code.size(baseAssetAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(2 * ceil32(return_data.size)) + 644 len 0] = 0
        call baseAssetAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 612]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 22]
    emit 0xa619b6e0: msg.sender, arg1, ext_call.return_data[0]
    return ext_call.return_data[0]
}

function claimDividendForBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        if not psInfo[address(arg1)].field_256:
            revert with 0, 'Must have non-zero dividend.'
        require ext_code.size(baseAssetAddress)
        staticcall baseAssetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= psInfo[address(arg1)].field_256:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(baseAssetAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_288
            call baseAssetAddress with:
                 gas gas_remaining wei
                args psInfo[address(arg1)].field_256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_256
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            if psInfo[address(arg1)].field_256 > psInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            psInfo[address(arg1)].field_256 = 0
            emit DividendClaimed(address(arg1), psInfo[address(arg1)].field_256);
            return psInfo[address(arg1)].field_256
        if ext_call.return_data[0] > psInfo[address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf)
        call 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(stor0.field_0), psInfo[address(arg1)].field_256 - ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(baseAssetAddress)
        staticcall baseAssetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + 430 len 26]
        if not ext_code.size(baseAssetAddress):
            revert with 0, 'Address: call to non-contract'
        if psInfo[address(arg1)].field_256 < ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_288
            call baseAssetAddress with:
                 gas gas_remaining wei
                args psInfo[address(arg1)].field_256, mem[(2 * ceil32(return_data.size)) + 388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 356]:
                    revert with 0, 
                                32,
                                42,
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
            if psInfo[address(arg1)].field_256 > psInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            psInfo[address(arg1)].field_256 = 0
            emit DividendClaimed(address(arg1), psInfo[address(arg1)].field_256);
            return psInfo[address(arg1)].field_256
        mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
    else:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not psInfo[address(arg1)].field_256:
                revert with 0, 'Must have non-zero dividend.'
            require ext_code.size(baseAssetAddress)
            staticcall baseAssetAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= psInfo[address(arg1)].field_256:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(baseAssetAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_288
                mem[324 len 0] = 0
                call baseAssetAddress with:
                     gas gas_remaining wei
                    args psInfo[address(arg1)].field_256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_256
                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                        revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if ext_call.return_data[0] > psInfo[address(arg1)].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor10)
                staticcall stor10.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf)
                call 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(stor0.field_0), psInfo[address(arg1)].field_256 - ext_call.return_data[0], this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 430 len 26]
                if not ext_code.size(baseAssetAddress):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] < psInfo[address(arg1)].field_256 - ext_call.return_data[0]:
                    if psInfo[address(arg1)].field_256 < ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_288
                        call baseAssetAddress with:
                             gas gas_remaining wei
                            args psInfo[address(arg1)].field_256, mem[(2 * ceil32(return_data.size)) + 388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                        if psInfo[address(arg1)].field_256 > psInfo[address(arg1)].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        psInfo[address(arg1)].field_256 = 0
                        emit DividendClaimed(address(arg1), psInfo[address(arg1)].field_256);
                        return psInfo[address(arg1)].field_256
                    mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    mem[(2 * ceil32(return_data.size)) + 388 len 0] = 0
                    call baseAssetAddress with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    if ext_call.return_data[0] > psInfo[address(arg1)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    psInfo[address(arg1)].field_256 -= ext_call.return_data[0]
                    emit DividendClaimed(address(arg1), ext_call.return_data[0]);
                    return ext_call.return_data[0]
                if psInfo[address(arg1)].field_256 >= ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call baseAssetAddress with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(2 * ceil32(return_data.size)) + 388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                    if ext_call.return_data[0] > psInfo[address(arg1)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    psInfo[address(arg1)].field_256 -= ext_call.return_data[0]
                    emit DividendClaimed(address(arg1), ext_call.return_data[0]);
                    return ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_288
                mem[(2 * ceil32(return_data.size)) + 388 len 0] = 0
                call baseAssetAddress with:
                     gas gas_remaining wei
                    args psInfo[address(arg1)].field_256, mem[(2 * ceil32(return_data.size)) + 388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
            if psInfo[address(arg1)].field_256 > psInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            psInfo[address(arg1)].field_256 = 0
            emit DividendClaimed(address(arg1), psInfo[address(arg1)].field_256);
            return psInfo[address(arg1)].field_256
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x6d70f7ae with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0x7253746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d696e206f72206f70657261746f,
                        mem[229 len 31]
        if not psInfo[address(arg1)].field_256:
            revert with 0, 'Must have non-zero dividend.'
        require ext_code.size(baseAssetAddress)
        staticcall baseAssetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= psInfo[address(arg1)].field_256:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(baseAssetAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_288
            call baseAssetAddress with:
                 gas gas_remaining wei
                args psInfo[address(arg1)].field_256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_256
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            if psInfo[address(arg1)].field_256 > psInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            psInfo[address(arg1)].field_256 = 0
            emit DividendClaimed(address(arg1), psInfo[address(arg1)].field_256);
            return psInfo[address(arg1)].field_256
        if ext_call.return_data[0] > psInfo[address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf)
        call 0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(stor0.field_0), psInfo[address(arg1)].field_256 - ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(baseAssetAddress)
        staticcall baseAssetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + 430 len 26]
        if not ext_code.size(baseAssetAddress):
            revert with 0, 'Address: call to non-contract'
        if psInfo[address(arg1)].field_256 < ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, psInfo[address(arg1)].field_288
            call baseAssetAddress with:
                 gas gas_remaining wei
                args psInfo[address(arg1)].field_256, mem[(2 * ceil32(return_data.size)) + 388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 356]:
                    revert with 0, 
                                32,
                                42,
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
            if psInfo[address(arg1)].field_256 > psInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            psInfo[address(arg1)].field_256 = 0
            emit DividendClaimed(address(arg1), psInfo[address(arg1)].field_256);
            return psInfo[address(arg1)].field_256
        mem[(2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
        if ext_call.return_data[0] >= psInfo[address(arg1)].field_256 - ext_call.return_data[0]:
        else:
            mem[(2 * ceil32(return_data.size)) + 388 len 0] = 0
    call baseAssetAddress with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(2 * ceil32(return_data.size)) + 388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 356]:
            revert with 0, 
                        32,
                        42,
                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
    if ext_call.return_data[0] > psInfo[address(arg1)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    psInfo[address(arg1)].field_256 -= ext_call.return_data[0]
    emit DividendClaimed(address(arg1), ext_call.return_data[0]);
    return ext_call.return_data[0]
}



}
