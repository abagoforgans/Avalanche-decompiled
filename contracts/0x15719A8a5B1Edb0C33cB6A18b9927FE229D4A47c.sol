contract main {




// =====================  Runtime code  =====================


#
#  - allocateSeigniorage()
#
const PERIOD = (8 * 3600)


mapping of uint8 stor0;
uint8 stor1; offset 160
address operatorAddress;
uint256 stor1;
uint256 startTime;
uint256 epoch;
uint256 epochSupplyContractionLeft;
array of address sub_82cad838;
address sub_5a8d5413Address;
address sub_70517516Address;
address sub_484e333bAddress;
address sub_e691f4d4Address;
address sub_e89e8382Address;
uint256 sub_caf1219f;
uint256 sub_40256cc4;
uint256 seigniorageSaved;
array of struct sub_99820025;
array of struct sub_a0487eea;
uint256 maxSupplyExpansionPercent;
uint256 bondDepletionFloorPercent;
uint256 seigniorageExpansionFloorPercent;
uint256 maxSupplyContractionPercent;
uint256 maxDebtRatioPercent;
uint256 bootstrapEpochs;
uint256 bootstrapSupplyExpansionPercent;
uint256 sub_6d4953ae;
uint256 maxDiscountRate;
uint256 maxPremiumRate;
uint256 discountPercent;
uint256 sub_c8f987f3;
uint256 premiumPercent;
uint256 mintingFactorForPayingDebt;
address daoFundAddress;
uint256 daoFundSharedPercent;
address devFundAddress;
uint256 sub_03be7e76;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_03be7e76(?) payable {
    return sub_03be7e76
}

function initialized() payable {
    return bool(uint8(stor1.field_160))
}

function seigniorageExpansionFloorPercent() payable {
    return seigniorageExpansionFloorPercent
}

function discountPercent() payable {
    return discountPercent
}

function maxPremiumRate() payable {
    return maxPremiumRate
}

function isInitialized() payable {
    return bool(uint8(stor1.field_160))
}

function mintingFactorForPayingDebt() payable {
    return mintingFactorForPayingDebt
}

function sub_40256cc4(?) payable {
    return sub_40256cc4
}

function devFund() payable {
    return devFundAddress
}

function sub_484e333b(?) payable {
    return sub_484e333bAddress
}

function daoFundSharedPercent() payable {
    return daoFundSharedPercent
}

function operator() payable {
    return operatorAddress
}

function getReserve() payable {
    return seigniorageSaved
}

function seigniorageSaved() payable {
    return seigniorageSaved
}

function sub_5a8d5413(?) payable {
    return sub_5a8d5413Address
}

function sub_6d4953ae(?) payable {
    return sub_6d4953ae
}

function sub_70517516(?) payable {
    return sub_70517516Address
}

function startTime() payable {
    return startTime
}

function bondDepletionFloorPercent() payable {
    return bondDepletionFloorPercent
}

function sub_82cad838(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_82cad838.length
    return sub_82cad838[arg1]
}

function bootstrapSupplyExpansionPercent() payable {
    return bootstrapSupplyExpansionPercent
}

function daoFund() payable {
    return daoFundAddress
}

function epoch() payable {
    return epoch
}

function sub_99820025(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_99820025.length
    return sub_99820025[arg1].field_0
}

function sub_a0487eea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a0487eea.length
    return sub_a0487eea[arg1].field_0
}

function maxDiscountRate() payable {
    return maxDiscountRate
}

function premiumPercent() payable {
    return premiumPercent
}

function sub_c8f987f3(?) payable {
    return sub_c8f987f3
}

function sub_caf1219f(?) payable {
    return sub_caf1219f
}

function maxSupplyExpansionPercent() payable {
    return maxSupplyExpansionPercent
}

function maxDebtRatioPercent() payable {
    return maxDebtRatioPercent
}

function sub_e691f4d4(?) payable {
    return sub_e691f4d4Address
}

function sub_e89e8382(?) payable {
    return sub_e89e8382Address
}

function maxSupplyContractionPercent() payable {
    return maxSupplyContractionPercent
}

function bootstrapEpochs() payable {
    return bootstrapEpochs
}

function epochSupplyContractionLeft() payable {
    return epochSupplyContractionLeft
}

function _fallback() payable {
    revert
}

function sub_455a5fba(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    sub_e691f4d4Address = arg1
}

function sub_5678bfad(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    sub_e89e8382Address = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    operatorAddress = arg1
}

function setMaxPremiumRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    maxPremiumRate = arg1
}

function setMaxDiscountRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    maxDiscountRate = arg1
}

function setPremiumPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 20000:
        revert with 0, '_premiumPercent is over 200%'
    premiumPercent = arg1
}

function setDiscountPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 20000:
        revert with 0, '_discountPercent is over 200%'
    discountPercent = arg1
}

function setMaxDebtRatioPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 1000:
        revert with 0, 'out of range'
    if arg1 > 10000:
        revert with 0, 'out of range'
    maxDebtRatioPercent = arg1
}

function setBondDepletionFloorPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 500:
        revert with 0, 'out of range'
    if arg1 > 10000:
        revert with 0, 'out of range'
    bondDepletionFloorPercent = arg1
}

function setMaxSupplyContractionPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 100:
        revert with 0, 'out of range'
    if arg1 > 1500:
        revert with 0, 'out of range'
    maxSupplyContractionPercent = arg1
}

function sub_6f7449b5(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    idx = 0
    while uint8(idx) < sub_82cad838.length:
        mem[0] = 5
        if sub_82cad838[uint8(idx)] != arg1:
            idx = idx + 1
            continue 
    sub_82cad838.length++
    stor36B6[stor5.length] = arg1
}

function sub_5d1bb53a(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(sub_e691f4d4Address)
    call sub_e691f4d4Address.0xb3ab15fb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b0928046(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(sub_e691f4d4Address)
    call sub_e691f4d4Address.0x97ffe1d7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0a0b835c(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(sub_e691f4d4Address)
    call sub_e691f4d4Address.0x2ffaaa09 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function nextEpochPoint() payable {
    if not epoch:
        if startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        return startTime
    if 8 * 3600 * epoch / epoch != 8 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (8 * 3600 * epoch) + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    return ((8 * 3600 * epoch) + startTime)
}

function sub_ae809f77(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require sub_82cad838.length - 1 < sub_82cad838.length
    require arg1 < sub_82cad838.length
    sub_82cad838[arg1] = sub_82cad838[sub_82cad838.length]
    require sub_82cad838.length
    sub_82cad838[sub_82cad838.length] = 0
    sub_82cad838.length--
}

function sub_3a057029(?) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(sub_e691f4d4Address)
    call sub_e691f4d4Address.0x54575af4 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5181b9fb(?) payable {
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.twap(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    return ext_call.return_data[14 len 18]
}

function sub_5bdc096f(?) payable {
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    return ext_call.return_data[14 len 18]
}

function sub_bcc81f19(?) payable {
    require calldata.size - 4 >= 128
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0, 'zero'
    if arg2 > 3000:
        revert with 0, 'out of range'
    if not arg3:
        revert with 0, 'zero'
    if arg4 > 1000:
        revert with 0, 'out of range'
    daoFundAddress = arg1
    daoFundSharedPercent = arg2
    devFundAddress = arg3
    sub_03be7e76 = arg4
}

function sub_d4b14944(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 >= 8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x65496e6465782068617320746f206265206c6f776572207468616e20636f756e74206f662074696572,
                    mem[205 len 23]
    if arg2 < 10:
        revert with 0, '_value: out of range'
    if arg2 > 1000:
        revert with 0, '_value: out of range'
    require arg1 < sub_a0487eea.length
    sub_a0487eea[arg1].field_0 = arg2
    return 1
}

function sub_81c20e5a(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < sub_caf1219f:
        revert with 0, 'out of range'
    if not sub_caf1219f:
        if arg1 > 0:
            revert with 0, 'out of range'
    else:
        if 120 * sub_caf1219f / sub_caf1219f != 120:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 > 120 * sub_caf1219f / 100:
            revert with 0, 'out of range'
    sub_40256cc4 = arg1
}

function sub_04e5c7b1(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < sub_40256cc4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725f7072656d69756d5468726573686f6c6420657863656564732074687269766550726963654365696c696e,
                    mem[208 len 20]
    if arg1 > 150:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x655f7072656d69756d5468726573686f6c6420697320686967686572207468616e20312e,
                    mem[200 len 28]
    sub_c8f987f3 = arg1
}

function sub_0b5bcec7(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x655f6d6178537570706c79457870616e73696f6e50657263656e743a206f7574206f662072616e67,
                    mem[204 len 24]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x655f6d6178537570706c79457870616e73696f6e50657263656e743a206f7574206f662072616e67,
                    mem[204 len 24]
    maxSupplyExpansionPercent = arg1
}

function sub_940e6064(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 >= 8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x65496e6465782068617320746f206265206c6f776572207468616e20636f756e74206f662074696572,
                    mem[205 len 23]
    if arg1:
        require uint8(arg1 - 1) < sub_99820025.length
        require arg2 > sub_99820025[uint8(arg1 - 1)].field_0
    if arg1 < 7:
        require uint8(arg1 + 1) < sub_99820025.length
        require arg2 < sub_99820025[uint8(arg1 + 1)].field_0
    require arg1 < sub_99820025.length
    sub_99820025[arg1].field_0 = arg2
    return 1
}

function setMintingFactorForPayingDebt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x745f6d696e74696e67466163746f72466f72506179696e67446562743a206f7574206f662072616e67,
                    mem[205 len 23]
    if arg1 > 20000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x745f6d696e74696e67466163746f72466f72506179696e67446562743a206f7574206f662072616e67,
                    mem[205 len 23]
    mintingFactorForPayingDebt = arg1
}

function sub_f21dcee2(?) payable {
    require ext_code.size(sub_5a8d5413Address)
    staticcall sub_5a8d5413Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while uint8(idx) < sub_82cad838.length:
        mem[0] = 5
        mem[100] = sub_82cad838[uint8(idx)]
        require ext_code.size(sub_5a8d5413Address)
        staticcall sub_5a8d5413Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_82cad838[uint8(idx)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if _24 * None > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - (_24 * None))
}

function sub_91bbfed5(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 120:
        revert with 0, '_bootstrapEpochs: out of range'
    if arg2 < 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x655f626f6f747374726170537570706c79457870616e73696f6e50657263656e743a206f7574206f662072616e67,
                    mem[210 len 18]
    if arg2 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x655f626f6f747374726170537570706c79457870616e73696f6e50657263656e743a206f7574206f662072616e67,
                    mem[210 len 18]
    bootstrapEpochs = arg1
    bootstrapSupplyExpansionPercent = arg2
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7354726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if sub_5a8d5413Address == arg1:
        revert with 0, 'thrive'
    if sub_70517516Address == arg1:
        revert with 0, 'bond'
    if sub_484e333bAddress == arg1:
        revert with 0, 'share'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if uint8(stor1.field_160):
        revert with 0, 'Treasury: already initialized'
    sub_5a8d5413Address = arg1
    sub_70517516Address = arg2
    sub_484e333bAddress = arg3
    sub_e89e8382Address = arg4
    sub_e691f4d4Address = arg5
    startTime = arg6
    sub_caf1219f = 10^18
    sub_40256cc4 = 101 * 10^16
    mem[96] = 0
    mem[128] = 60000 * 10^18
    mem[160] = 80000 * 10^18
    mem[192] = 200000 * 10^18
    mem[224] = 400000 * 10^18
    mem[256] = 600000 * 10^18
    mem[288] = 800000 * 10^18
    mem[320] = 2000000 * 10^18
    sub_99820025.length = 8
    s = 0
    idx = 96
    while 352 > idx:
        sub_99820025[s].field_0 = mem[idx + 21 len 11]
        sub_99820025[s].field_88 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while sub_99820025.length > idx:
        sub_99820025[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[352] = 400
    mem[384] = 275
    mem[416] = 225
    mem[448] = 150
    mem[480] = 100
    mem[512] = 75
    mem[544] = 50
    mem[576] = 40
    sub_a0487eea.length = 8
    s = 0
    idx = 352
    while 608 > idx:
        sub_a0487eea[s].field_0 = mem[idx + 30 len 2]
        sub_a0487eea[s].field_16 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while sub_a0487eea.length > idx:
        sub_a0487eea[idx].field_0 = 0
        idx = idx + 1
        continue 
    maxSupplyExpansionPercent = 400
    bondDepletionFloorPercent = 10000
    seigniorageExpansionFloorPercent = 3500
    maxSupplyContractionPercent = 300
    maxDebtRatioPercent = 3500
    sub_c8f987f3 = 110
    premiumPercent = 7000
    require ext_code.size(sub_5a8d5413Address)
    staticcall sub_5a8d5413Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seigniorageSaved = ext_call.return_data[0]
    uint256(stor1.field_0) = msg.sender or 0x10000000000000000000000000000000000000000 or Mask(88, 168, uint256(stor1.field_0)) or Mask(96, 160, operatorAddress)
    emit Initialized(block.number, msg.sender);
}

function getBondPremiumRate() payable {
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= sub_40256cc4:
        return 0
    if not sub_caf1219f:
        if ext_call.return_data[14 len 18] < 0:
            return sub_caf1219f
    else:
        if sub_c8f987f3 * sub_caf1219f / sub_caf1219f != sub_c8f987f3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[14 len 18] < sub_c8f987f3 * sub_caf1219f / 100:
            return sub_caf1219f
    if sub_caf1219f > ext_call.return_data[14 len 18]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[14 len 18] - sub_caf1219f:
        if sub_caf1219f < sub_caf1219f:
            revert with 0, 'SafeMath: addition overflow'
        if maxPremiumRate <= 0:
            return sub_caf1219f
        if sub_caf1219f <= maxPremiumRate:
            return sub_caf1219f
    else:
        if (ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / ext_call.return_data[14 len 18] - sub_caf1219f != premiumPercent:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f < sub_caf1219f:
            revert with 0, 'SafeMath: addition overflow'
        if maxPremiumRate <= 0:
            return (((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= maxPremiumRate:
            return (((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
    return maxPremiumRate
}

function getBondDiscountRate() payable {
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > sub_caf1219f:
        return 0
    if not discountPercent:
        return sub_caf1219f
    if not sub_caf1219f:
        if ext_call.return_data[14 len 18] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[14 len 18]
        if sub_caf1219f > 0 / ext_call.return_data[14 len 18]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / ext_call.return_data[14 len 18]) - sub_caf1219f:
            if sub_caf1219f < sub_caf1219f:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                return sub_caf1219f
            if sub_caf1219f <= maxDiscountRate:
                return sub_caf1219f
        else:
            if (0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / (0 / ext_call.return_data[14 len 18]) - sub_caf1219f != discountPercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f < sub_caf1219f:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                return (((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f)
            if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f <= maxDiscountRate:
                return (((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f)
    else:
        if 10^18 * sub_caf1219f / sub_caf1219f != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[14 len 18] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[14 len 18]
        if sub_caf1219f > 10^18 * sub_caf1219f / ext_call.return_data[14 len 18]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10^18 * sub_caf1219f / ext_call.return_data[14 len 18]) - sub_caf1219f:
            if sub_caf1219f < sub_caf1219f:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                return sub_caf1219f
            if sub_caf1219f <= maxDiscountRate:
                return sub_caf1219f
        else:
            if (10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / (10^18 * sub_caf1219f / ext_call.return_data[14 len 18]) - sub_caf1219f != discountPercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f < sub_caf1219f:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                return (((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f)
            if ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f <= maxDiscountRate:
                return (((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f)
    return maxDiscountRate
}

function sub_dd6621a7(?) payable {
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > sub_caf1219f:
        return 0
    require ext_code.size(sub_5a8d5413Address)
    staticcall sub_5a8d5413Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while uint8(idx) < sub_82cad838.length:
        mem[0] = 5
        mem[100] = sub_82cad838[uint8(idx)]
        require ext_code.size(sub_5a8d5413Address)
        staticcall sub_5a8d5413Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_82cad838[uint8(idx)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if _66 * None > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - (_66 * None):
        require ext_code.size(sub_70517516Address)
        staticcall sub_70517516Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 <= ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -ext_call.return_data[0]:
            if epochSupplyContractionLeft < 0:
                return epochSupplyContractionLeft
            else:
                return 0
        if -1 * Mask(144, 0, ext_call.return_data[0]) * ext_call.return_data[0] / -ext_call.return_data[0] != Mask(144, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if epochSupplyContractionLeft < -1 * Mask(144, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^18:
            return epochSupplyContractionLeft
        return (-1 * Mask(144, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^18)
    if (ext_call.return_data[0] * maxDebtRatioPercent) - (_66 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_66 * None) != maxDebtRatioPercent:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    require ext_code.size(sub_70517516Address)
    staticcall sub_70517516Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * maxDebtRatioPercent) - (_66 * None * maxDebtRatioPercent) / 10000 <= ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_66 * None * maxDebtRatioPercent) / 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ((ext_call.return_data[0] * maxDebtRatioPercent) - (_66 * None * maxDebtRatioPercent) / 10000) - ext_call.return_data[0]:
        if epochSupplyContractionLeft < 0:
            return epochSupplyContractionLeft
        else:
            return 0
    if ((ext_call.return_data[0] * maxDebtRatioPercent) - (_66 * None * maxDebtRatioPercent) / 10000 * Mask(144, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(144, 0, ext_call.return_data[0])) / ((ext_call.return_data[0] * maxDebtRatioPercent) - (_66 * None * maxDebtRatioPercent) / 10000) - ext_call.return_data[0] != Mask(144, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if epochSupplyContractionLeft < ((ext_call.return_data[0] * maxDebtRatioPercent) - (_66 * None * maxDebtRatioPercent) / 10000 * Mask(144, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(144, 0, ext_call.return_data[0])) / 10^18:
        return epochSupplyContractionLeft
    return (((ext_call.return_data[0] * maxDebtRatioPercent) - (_66 * None * maxDebtRatioPercent) / 10000 * Mask(144, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(144, 0, ext_call.return_data[0])) / 10^18)
}

function getRedeemableBonds() payable {
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= sub_40256cc4:
        return 0
    require ext_code.size(sub_5a8d5413Address)
    staticcall sub_5a8d5413Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= sub_40256cc4:
        return 0
    if not sub_caf1219f:
        if ext_call.return_data[14 len 18] < 0:
            if not sub_caf1219f:
                return 0
            if not ext_call.return_data[0]:
                if sub_caf1219f <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_caf1219f:
                    return (0 / sub_caf1219f)
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_caf1219f <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_caf1219f:
                    return (10^18 * ext_call.return_data[0] / sub_caf1219f)
            ('iszero', ('stor', ('name', 'sub_caf1219f', 11)))
        else:
            if sub_caf1219f > ext_call.return_data[14 len 18]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[14 len 18] - sub_caf1219f:
                if sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxPremiumRate <= 0:
                    if not sub_caf1219f:
                        return 0
                    if not ext_call.return_data[0]:
                        if sub_caf1219f <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_caf1219f:
                            return (0 / sub_caf1219f)
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_caf1219f <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_caf1219f:
                            return (10^18 * ext_call.return_data[0] / sub_caf1219f)
                    ('iszero', ('stor', ('name', 'sub_caf1219f', 11)))
                else:
                    if sub_caf1219f <= maxPremiumRate:
                        if not sub_caf1219f:
                            return 0
                        if not ext_call.return_data[0]:
                            if sub_caf1219f <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_caf1219f:
                                return (0 / sub_caf1219f)
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if sub_caf1219f <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_caf1219f:
                                return (10^18 * ext_call.return_data[0] / sub_caf1219f)
                        ('iszero', ('stor', ('name', 'sub_caf1219f', 11)))
                    else:
                        if not maxPremiumRate:
                            return 0
                        if not ext_call.return_data[0]:
                            if maxPremiumRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if maxPremiumRate:
                                return (0 / maxPremiumRate)
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if maxPremiumRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if maxPremiumRate:
                                return (10^18 * ext_call.return_data[0] / maxPremiumRate)
                        ('iszero', ('stor', ('name', 'maxPremiumRate', 25)))
            else:
                if (ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / ext_call.return_data[14 len 18] - sub_caf1219f != premiumPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxPremiumRate <= 0:
                    if not ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                        return 0
                    if not ext_call.return_data[0]:
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                            return (0 / ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                            return (10^18 * ext_call.return_data[0] / ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
                    ('iszero', ('add', ('div', ('add', ('mul', ('ext_call.return_data', 14, 18), ('stor', ('name', 'premiumPercent', 28))), ('mul', -1, ('stor', ('name', 'sub_caf1219f', 11)), ('stor', ('name', 'premiumPercent', 28)))), 10000), ('stor', ('name', 'sub_caf1219f', 11))))
                else:
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= maxPremiumRate:
                        if not ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                            return 0
                        if not ext_call.return_data[0]:
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                                return (0 / ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                                return (10^18 * ext_call.return_data[0] / ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
                        ('iszero', ('add', ('div', ('add', ('mul', ('ext_call.return_data', 14, 18), ('stor', ('name', 'premiumPercent', 28))), ('mul', -1, ('stor', ('name', 'sub_caf1219f', 11)), ('stor', ('name', 'premiumPercent', 28)))), 10000), ('stor', ('name', 'sub_caf1219f', 11))))
                    else:
                        if not maxPremiumRate:
                            return 0
                        if not ext_call.return_data[0]:
                            if maxPremiumRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if maxPremiumRate:
                                return (0 / maxPremiumRate)
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if maxPremiumRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if maxPremiumRate:
                                return (10^18 * ext_call.return_data[0] / maxPremiumRate)
                        ('iszero', ('stor', ('name', 'maxPremiumRate', 25)))
    else:
        if sub_c8f987f3 * sub_caf1219f / sub_caf1219f != sub_c8f987f3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[14 len 18] < sub_c8f987f3 * sub_caf1219f / 100:
            if not sub_caf1219f:
                return 0
            if not ext_call.return_data[0]:
                if sub_caf1219f <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_caf1219f:
                    return (0 / sub_caf1219f)
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_caf1219f <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_caf1219f:
                    return (10^18 * ext_call.return_data[0] / sub_caf1219f)
            ('iszero', ('stor', ('name', 'sub_caf1219f', 11)))
        else:
            if sub_caf1219f > ext_call.return_data[14 len 18]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[14 len 18] - sub_caf1219f:
                if sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxPremiumRate <= 0:
                    if not sub_caf1219f:
                        return 0
                    if not ext_call.return_data[0]:
                        if sub_caf1219f <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_caf1219f:
                            return (0 / sub_caf1219f)
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_caf1219f <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_caf1219f:
                            return (10^18 * ext_call.return_data[0] / sub_caf1219f)
                    ('iszero', ('stor', ('name', 'sub_caf1219f', 11)))
                else:
                    if sub_caf1219f <= maxPremiumRate:
                        if not sub_caf1219f:
                            return 0
                        if not ext_call.return_data[0]:
                            if sub_caf1219f <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_caf1219f:
                                return (0 / sub_caf1219f)
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if sub_caf1219f <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_caf1219f:
                                return (10^18 * ext_call.return_data[0] / sub_caf1219f)
                        ('iszero', ('stor', ('name', 'sub_caf1219f', 11)))
                    else:
                        if not maxPremiumRate:
                            return 0
                        if not ext_call.return_data[0]:
                            if maxPremiumRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if maxPremiumRate:
                                return (0 / maxPremiumRate)
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if maxPremiumRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if maxPremiumRate:
                                return (10^18 * ext_call.return_data[0] / maxPremiumRate)
                        ('iszero', ('stor', ('name', 'maxPremiumRate', 25)))
            else:
                if (ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / ext_call.return_data[14 len 18] - sub_caf1219f != premiumPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxPremiumRate <= 0:
                    if not ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                        return 0
                    if not ext_call.return_data[0]:
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                            return (0 / ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                            return (10^18 * ext_call.return_data[0] / ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
                    ('iszero', ('add', ('div', ('add', ('mul', ('ext_call.return_data', 14, 18), ('stor', ('name', 'premiumPercent', 28))), ('mul', -1, ('stor', ('name', 'sub_caf1219f', 11)), ('stor', ('name', 'premiumPercent', 28)))), 10000), ('stor', ('name', 'sub_caf1219f', 11))))
                else:
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= maxPremiumRate:
                        if not ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                            return 0
                        if not ext_call.return_data[0]:
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                                return (0 / ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                                return (10^18 * ext_call.return_data[0] / ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f)
                        ('iszero', ('add', ('div', ('add', ('mul', ('ext_call.return_data', 14, 18), ('stor', ('name', 'premiumPercent', 28))), ('mul', -1, ('stor', ('name', 'sub_caf1219f', 11)), ('stor', ('name', 'premiumPercent', 28)))), 10000), ('stor', ('name', 'sub_caf1219f', 11))))
                    else:
                        if not maxPremiumRate:
                            return 0
                        if not ext_call.return_data[0]:
                            if maxPremiumRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if maxPremiumRate:
                                return (0 / maxPremiumRate)
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if maxPremiumRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if maxPremiumRate:
                                return (10^18 * ext_call.return_data[0] / maxPremiumRate)
                        ('iszero', ('stor', ('name', 'maxPremiumRate', 25)))
    revert
}

function buyBonds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor0[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if block.timestamp < startTime:
        revert with 0, 'Treasury: not started yet'
    require ext_code.size(sub_5a8d5413Address)
    staticcall sub_5a8d5413Address.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(sub_70517516Address)
    staticcall sub_70517516Address.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(sub_484e333bAddress)
    staticcall sub_484e333bAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(sub_e691f4d4Address)
    staticcall sub_e691f4d4Address.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7754726561737572793a2063616e6e6f7420707572636861736520626f6e64732077697468207a65726f20616d6f756e,
                    mem[212 len 16]
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] != arg2:
        revert with 0, 'Treasury: THRIVE price moved'
    if ext_call.return_data[14 len 18] >= sub_caf1219f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x7454726561737572793a207468726976655072696365206e6f7420656c696769626c6520666f7220626f6e642070757263686173,
                    mem[216 len 12]
    if arg1 > epochSupplyContractionLeft:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6554726561737572793a206e6f7420656e6f75676820626f6e64206c65667420746f2070757263686173,
                    mem[206 len 22]
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > sub_caf1219f:
        revert with 0, 'Treasury: invalid bond rate'
    if not discountPercent:
        if sub_caf1219f <= 0:
            revert with 0, 'Treasury: invalid bond rate'
        if not arg1:
            require ext_code.size(sub_5a8d5413Address)
            staticcall sub_5a8d5413Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            while uint8(idx) < sub_82cad838.length:
                mem[0] = 5
                mem[100] = sub_82cad838[uint8(idx)]
                require ext_code.size(sub_5a8d5413Address)
                staticcall sub_5a8d5413Address.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_82cad838[uint8(idx)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            if _2002 * None > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_70517516Address)
            staticcall sub_70517516Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] - (_2002 * None):
                if ext_call.return_data[0] > 0:
                    revert with 0, 'over max debt ratio'
            else:
                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_2002 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_2002 * None) != maxDebtRatioPercent:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_2002 * None * maxDebtRatioPercent) / 10000:
                    revert with 0, 'over max debt ratio'
            require ext_code.size(sub_5a8d5413Address)
            call sub_5a8d5413Address.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_70517516Address)
            call sub_70517516Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > epochSupplyContractionLeft:
                revert with 0, 'SafeMath: subtraction overflow'
            epochSupplyContractionLeft -= arg1
            require ext_code.size(sub_e89e8382Address)
            call sub_e89e8382Address.update() with:
                 gas gas_remaining wei
            emit BoughtBonds(arg1, 0, msg.sender);
        else:
            if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(sub_5a8d5413Address)
            staticcall sub_5a8d5413Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            while uint8(idx) < sub_82cad838.length:
                mem[0] = 5
                mem[100] = sub_82cad838[uint8(idx)]
                require ext_code.size(sub_5a8d5413Address)
                staticcall sub_5a8d5413Address.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_82cad838[uint8(idx)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            if _1999 * None > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_70517516Address)
            staticcall sub_70517516Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] - (_1999 * None):
                if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > 0:
                    revert with 0, 'over max debt ratio'
            else:
                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1999 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1999 * None) != maxDebtRatioPercent:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1999 * None * maxDebtRatioPercent) / 10000:
                    revert with 0, 'over max debt ratio'
            require ext_code.size(sub_5a8d5413Address)
            call sub_5a8d5413Address.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_70517516Address)
            call sub_70517516Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, sub_caf1219f * arg1 / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > epochSupplyContractionLeft:
                revert with 0, 'SafeMath: subtraction overflow'
            epochSupplyContractionLeft -= arg1
            require ext_code.size(sub_e89e8382Address)
            call sub_e89e8382Address.update() with:
                 gas gas_remaining wei
            emit BoughtBonds(arg1, sub_caf1219f * arg1 / 10^18, msg.sender);
    else:
        if not sub_caf1219f:
            if ext_call.return_data[14 len 18] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[14 len 18]
            if sub_caf1219f > 0 / ext_call.return_data[14 len 18]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / ext_call.return_data[14 len 18]) - sub_caf1219f:
                if sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxDiscountRate <= 0:
                    if sub_caf1219f <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while uint8(idx) < sub_82cad838.length:
                            mem[0] = 5
                            mem[100] = sub_82cad838[uint8(idx)]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_82cad838[uint8(idx)]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        if _1984 * None > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_70517516Address)
                        staticcall sub_70517516Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] - (_1984 * None):
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1984 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1984 * None) != maxDebtRatioPercent:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1984 * None * maxDebtRatioPercent) / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(sub_5a8d5413Address)
                        call sub_5a8d5413Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, 0, msg.sender);
                    else:
                        if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while uint8(idx) < sub_82cad838.length:
                            mem[0] = 5
                            mem[100] = sub_82cad838[uint8(idx)]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_82cad838[uint8(idx)]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        if _1981 * None > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_70517516Address)
                        staticcall sub_70517516Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] - (_1981 * None):
                            if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1981 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1981 * None) != maxDebtRatioPercent:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1981 * None * maxDebtRatioPercent) / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(sub_5a8d5413Address)
                        call sub_5a8d5413Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, sub_caf1219f * arg1 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, sub_caf1219f * arg1 / 10^18, msg.sender);
                else:
                    if sub_caf1219f <= maxDiscountRate:
                        if sub_caf1219f <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1990 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1990 * None):
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1990 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1990 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1990 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1987 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1987 * None):
                                if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1987 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1987 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1987 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, sub_caf1219f * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, sub_caf1219f * arg1 / 10^18, msg.sender);
                    else:
                        if maxDiscountRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1996 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1996 * None):
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1996 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1996 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1996 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1993 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1993 * None):
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1993 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1993 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1993 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, maxDiscountRate * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, maxDiscountRate * arg1 / 10^18, msg.sender);
            else:
                if (0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / (0 / ext_call.return_data[14 len 18]) - sub_caf1219f != discountPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxDiscountRate <= 0:
                    if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while uint8(idx) < sub_82cad838.length:
                            mem[0] = 5
                            mem[100] = sub_82cad838[uint8(idx)]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_82cad838[uint8(idx)]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        if _1966 * None > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_70517516Address)
                        staticcall sub_70517516Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] - (_1966 * None):
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1966 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1966 * None) != maxDebtRatioPercent:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1966 * None * maxDebtRatioPercent) / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(sub_5a8d5413Address)
                        call sub_5a8d5413Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, 0, msg.sender);
                    else:
                        if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / arg1 != ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while uint8(idx) < sub_82cad838.length:
                            mem[0] = 5
                            mem[100] = sub_82cad838[uint8(idx)]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_82cad838[uint8(idx)]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        if _1963 * None > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_70517516Address)
                        staticcall sub_70517516Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] - (_1963 * None):
                            if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1963 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1963 * None) != maxDebtRatioPercent:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1963 * None * maxDebtRatioPercent) / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(sub_5a8d5413Address)
                        call sub_5a8d5413Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, ((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, ((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18, msg.sender);
                else:
                    if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f <= maxDiscountRate:
                        if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1972 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1972 * None):
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1972 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1972 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1972 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / arg1 != ((0 / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1969 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1969 * None):
                                if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1969 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1969 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1969 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, ((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, ((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18, msg.sender);
                    else:
                        if maxDiscountRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1978 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1978 * None):
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1978 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1978 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1978 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1975 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1975 * None):
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1975 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1975 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1975 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, maxDiscountRate * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, maxDiscountRate * arg1 / 10^18, msg.sender);
        else:
            if 10^18 * sub_caf1219f / sub_caf1219f != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[14 len 18] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[14 len 18]
            if sub_caf1219f > 10^18 * sub_caf1219f / ext_call.return_data[14 len 18]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10^18 * sub_caf1219f / ext_call.return_data[14 len 18]) - sub_caf1219f:
                if sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxDiscountRate <= 0:
                    if sub_caf1219f <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while uint8(idx) < sub_82cad838.length:
                            mem[0] = 5
                            mem[100] = sub_82cad838[uint8(idx)]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_82cad838[uint8(idx)]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        if _1948 * None > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_70517516Address)
                        staticcall sub_70517516Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] - (_1948 * None):
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1948 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1948 * None) != maxDebtRatioPercent:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1948 * None * maxDebtRatioPercent) / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(sub_5a8d5413Address)
                        call sub_5a8d5413Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, 0, msg.sender);
                    else:
                        if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while uint8(idx) < sub_82cad838.length:
                            mem[0] = 5
                            mem[100] = sub_82cad838[uint8(idx)]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_82cad838[uint8(idx)]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        if _1945 * None > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_70517516Address)
                        staticcall sub_70517516Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] - (_1945 * None):
                            if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1945 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1945 * None) != maxDebtRatioPercent:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1945 * None * maxDebtRatioPercent) / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(sub_5a8d5413Address)
                        call sub_5a8d5413Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, sub_caf1219f * arg1 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, sub_caf1219f * arg1 / 10^18, msg.sender);
                else:
                    if sub_caf1219f <= maxDiscountRate:
                        if sub_caf1219f <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1954 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1954 * None):
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1954 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1954 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1954 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1951 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1951 * None):
                                if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1951 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1951 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if (sub_caf1219f * arg1 / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1951 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, sub_caf1219f * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, sub_caf1219f * arg1 / 10^18, msg.sender);
                    else:
                        if maxDiscountRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1960 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1960 * None):
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1960 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1960 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1960 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1957 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1957 * None):
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1957 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1957 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1957 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, maxDiscountRate * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, maxDiscountRate * arg1 / 10^18, msg.sender);
            else:
                if (10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / (10^18 * sub_caf1219f / ext_call.return_data[14 len 18]) - sub_caf1219f != discountPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxDiscountRate <= 0:
                    if ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while uint8(idx) < sub_82cad838.length:
                            mem[0] = 5
                            mem[100] = sub_82cad838[uint8(idx)]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_82cad838[uint8(idx)]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        if _1930 * None > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_70517516Address)
                        staticcall sub_70517516Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] - (_1930 * None):
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1930 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1930 * None) != maxDebtRatioPercent:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1930 * None * maxDebtRatioPercent) / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(sub_5a8d5413Address)
                        call sub_5a8d5413Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, 0, msg.sender);
                    else:
                        if ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / arg1 != ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while uint8(idx) < sub_82cad838.length:
                            mem[0] = 5
                            mem[100] = sub_82cad838[uint8(idx)]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_82cad838[uint8(idx)]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        if _1927 * None > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_70517516Address)
                        staticcall sub_70517516Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] - (_1927 * None):
                            if (((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1927 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1927 * None) != maxDebtRatioPercent:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if (((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1927 * None * maxDebtRatioPercent) / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(sub_5a8d5413Address)
                        call sub_5a8d5413Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, ((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, ((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18, msg.sender);
                else:
                    if ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f <= maxDiscountRate:
                        if ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1936 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1936 * None):
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1936 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1936 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1936 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / arg1 != ((10^18 * sub_caf1219f / ext_call.return_data[14 len 18] * discountPercent) - (sub_caf1219f * discountPercent) / 10000) + sub_caf1219f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1933 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1933 * None):
                                if (((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1933 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1933 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if (((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1933 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, ((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, ((10^18 * sub_caf1219f / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (sub_caf1219f * discountPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18, msg.sender);
                    else:
                        if maxDiscountRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1942 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1942 * None):
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1942 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1942 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1942 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            while uint8(idx) < sub_82cad838.length:
                                mem[0] = 5
                                mem[100] = sub_82cad838[uint8(idx)]
                                require ext_code.size(sub_5a8d5413Address)
                                staticcall sub_5a8d5413Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_82cad838[uint8(idx)]
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            if _1939 * None > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            staticcall sub_70517516Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] - (_1939 * None):
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if (ext_call.return_data[0] * maxDebtRatioPercent) - (_1939 * None * maxDebtRatioPercent) / ext_call.return_data[0] - (_1939 * None) != maxDebtRatioPercent:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > (ext_call.return_data[0] * maxDebtRatioPercent) - (_1939 * None * maxDebtRatioPercent) / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(sub_5a8d5413Address)
                            call sub_5a8d5413Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, maxDiscountRate * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, maxDiscountRate * arg1 / 10^18, msg.sender);
    stor0[block.number][tx.origin] = 1
    stor0[block.number][msg.sender] = 1
}

function redeemBonds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor0[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if block.timestamp < startTime:
        revert with 0, 'Treasury: not started yet'
    require ext_code.size(sub_5a8d5413Address)
    staticcall sub_5a8d5413Address.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(sub_70517516Address)
    staticcall sub_70517516Address.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(sub_484e333bAddress)
    staticcall sub_484e333bAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(sub_e691f4d4Address)
    staticcall sub_e691f4d4Address.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe54726561737572793a2063616e6e6f742072656465656d20626f6e64732077697468207a65726f20616d6f756e,
                    mem[210 len 18]
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] != arg2:
        revert with 0, 'Treasury: THRIVE price moved'
    if ext_call.return_data[14 len 18] <= sub_40256cc4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x7454726561737572793a207468726976655072696365206e6f7420656c696769626c6520666f7220626f6e642070757263686173,
                    mem[216 len 12]
    require ext_code.size(sub_e89e8382Address)
    staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_5a8d5413Address, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c74205448524956452070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= sub_40256cc4:
        revert with 0, 'Treasury: invalid bond rate'
    if not sub_caf1219f:
        if ext_call.return_data[14 len 18] < 0:
            if sub_caf1219f <= 0:
                revert with 0, 'Treasury: invalid bond rate'
            if not arg1:
                require ext_code.size(sub_5a8d5413Address)
                staticcall sub_5a8d5413Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                mem[201 len 27]
                if seigniorageSaved < 0:
                    if seigniorageSaved > seigniorageSaved:
                        revert with 0, 'SafeMath: subtraction overflow'
                    seigniorageSaved = 0
                    require ext_code.size(sub_70517516Address)
                    call sub_70517516Address.0x79cc6790 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_5a8d5413Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_5a8d5413Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                else:
                    if 0 > seigniorageSaved:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_70517516Address)
                    call sub_70517516Address.0x79cc6790 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_5a8d5413Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    mem[324 len 0] = 0
                    call sub_5a8d5413Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, 0
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(sub_e89e8382Address)
                call sub_e89e8382Address.update() with:
                     gas gas_remaining wei
                emit RedeemedBonds(0, arg1, msg.sender);
            else:
                if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_5a8d5413Address)
                staticcall sub_5a8d5413Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_caf1219f * arg1 / 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                mem[201 len 27]
                if seigniorageSaved < sub_caf1219f * arg1 / 10^18:
                    if seigniorageSaved > seigniorageSaved:
                        revert with 0, 'SafeMath: subtraction overflow'
                    seigniorageSaved = 0
                else:
                    if sub_caf1219f * arg1 / 10^18 > seigniorageSaved:
                        revert with 0, 'SafeMath: subtraction overflow'
                    seigniorageSaved -= sub_caf1219f * arg1 / 10^18
                require ext_code.size(sub_70517516Address)
                call sub_70517516Address.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_5a8d5413Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_caf1219f * arg1 / 10^18) >> 32
                call sub_5a8d5413Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, sub_caf1219f * arg1 / 10^18) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, sub_caf1219f * arg1 / 10^18
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(sub_e89e8382Address)
                call sub_e89e8382Address.update() with:
                     gas gas_remaining wei
                emit RedeemedBonds(sub_caf1219f * arg1 / 10^18, arg1, msg.sender);
        else:
            if sub_caf1219f > ext_call.return_data[14 len 18]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[14 len 18] - sub_caf1219f:
                if sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxPremiumRate <= 0:
                    if sub_caf1219f <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved >= 0:
                            if 0 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_5a8d5413Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                        call sub_5a8d5413Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(0, arg1, msg.sender);
                    else:
                        if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < sub_caf1219f * arg1 / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved < sub_caf1219f * arg1 / 10^18:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        else:
                            if sub_caf1219f * arg1 / 10^18 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved -= sub_caf1219f * arg1 / 10^18
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_5a8d5413Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_caf1219f * arg1 / 10^18) >> 32
                        call sub_5a8d5413Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_caf1219f * arg1 / 10^18) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, sub_caf1219f * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(sub_caf1219f * arg1 / 10^18, arg1, msg.sender);
                else:
                    if sub_caf1219f <= maxPremiumRate:
                        if sub_caf1219f <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if arg1:
                            if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_caf1219f * arg1 / 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < sub_caf1219f * arg1 / 10^18:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            else:
                                if sub_caf1219f * arg1 / 10^18 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved -= sub_caf1219f * arg1 / 10^18
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_caf1219f * arg1 / 10^18) >> 32
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_caf1219f * arg1 / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, sub_caf1219f * arg1 / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(sub_caf1219f * arg1 / 10^18, arg1, msg.sender);
                        else:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved >= 0:
                                if 0 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            mem[324 len 0] = 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(0, arg1, msg.sender);
                    else:
                        if maxPremiumRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < 0:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                                call sub_5a8d5413Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 0, mem[324 len 4]
                            else:
                                if 0 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                                mem[324 len 0] = 0
                                call sub_5a8d5413Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(0, arg1, msg.sender);
                        else:
                            if maxPremiumRate * arg1 / arg1 != maxPremiumRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < maxPremiumRate * arg1 / 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < maxPremiumRate * arg1 / 10^18:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            else:
                                if maxPremiumRate * arg1 / 10^18 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved -= maxPremiumRate * arg1 / 10^18
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, maxPremiumRate * arg1 / 10^18) >> 32
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, maxPremiumRate * arg1 / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, maxPremiumRate * arg1 / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(maxPremiumRate * arg1 / 10^18, arg1, msg.sender);
            else:
                if (ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / ext_call.return_data[14 len 18] - sub_caf1219f != premiumPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxPremiumRate <= 0:
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved >= 0:
                            if 0 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                        else:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            mem[324 len 0] = 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(0, arg1, msg.sender);
                    else:
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / arg1 != ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        else:
                            if ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved -= ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_5a8d5413Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) >> 32
                        mem[324 len 0] = 0
                        call sub_5a8d5413Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18, arg1, msg.sender);
                else:
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= maxPremiumRate:
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved >= 0:
                                if 0 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(0, arg1, msg.sender);
                        else:
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / arg1 != ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) >> 32
                            else:
                                if ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved -= ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) >> 32
                                mem[324 len 0] = 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18, arg1, msg.sender);
                    else:
                        if maxPremiumRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved >= 0:
                                if 0 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(0, arg1, msg.sender);
                        else:
                            if maxPremiumRate * arg1 / arg1 != maxPremiumRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < maxPremiumRate * arg1 / 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < maxPremiumRate * arg1 / 10^18:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, maxPremiumRate * arg1 / 10^18) >> 32
                            else:
                                if maxPremiumRate * arg1 / 10^18 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved -= maxPremiumRate * arg1 / 10^18
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, maxPremiumRate * arg1 / 10^18) >> 32
                                mem[324 len 0] = 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, maxPremiumRate * arg1 / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, maxPremiumRate * arg1 / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(maxPremiumRate * arg1 / 10^18, arg1, msg.sender);
    else:
        if sub_c8f987f3 * sub_caf1219f / sub_caf1219f != sub_c8f987f3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[14 len 18] < sub_c8f987f3 * sub_caf1219f / 100:
            if sub_caf1219f <= 0:
                revert with 0, 'Treasury: invalid bond rate'
            if arg1:
                if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_5a8d5413Address)
                staticcall sub_5a8d5413Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_caf1219f * arg1 / 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                mem[201 len 27]
                if seigniorageSaved < sub_caf1219f * arg1 / 10^18:
                    if seigniorageSaved > seigniorageSaved:
                        revert with 0, 'SafeMath: subtraction overflow'
                    seigniorageSaved = 0
                else:
                    if sub_caf1219f * arg1 / 10^18 > seigniorageSaved:
                        revert with 0, 'SafeMath: subtraction overflow'
                    seigniorageSaved -= sub_caf1219f * arg1 / 10^18
                require ext_code.size(sub_70517516Address)
                call sub_70517516Address.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_5a8d5413Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_caf1219f * arg1 / 10^18) >> 32
                call sub_5a8d5413Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, sub_caf1219f * arg1 / 10^18) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, sub_caf1219f * arg1 / 10^18
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(sub_e89e8382Address)
                call sub_e89e8382Address.update() with:
                     gas gas_remaining wei
                emit RedeemedBonds(sub_caf1219f * arg1 / 10^18, arg1, msg.sender);
            else:
                require ext_code.size(sub_5a8d5413Address)
                staticcall sub_5a8d5413Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                mem[201 len 27]
                if seigniorageSaved >= 0:
                    if 0 > seigniorageSaved:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_70517516Address)
                    call sub_70517516Address.0x79cc6790 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_5a8d5413Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_5a8d5413Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                else:
                    if seigniorageSaved > seigniorageSaved:
                        revert with 0, 'SafeMath: subtraction overflow'
                    seigniorageSaved = 0
                    require ext_code.size(sub_70517516Address)
                    call sub_70517516Address.0x79cc6790 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_5a8d5413Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    mem[324 len 0] = 0
                    call sub_5a8d5413Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, 0
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(sub_e89e8382Address)
                call sub_e89e8382Address.update() with:
                     gas gas_remaining wei
                emit RedeemedBonds(0, arg1, msg.sender);
        else:
            if sub_caf1219f > ext_call.return_data[14 len 18]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[14 len 18] - sub_caf1219f:
                if sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxPremiumRate <= 0:
                    if sub_caf1219f <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if arg1:
                        if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < sub_caf1219f * arg1 / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved < sub_caf1219f * arg1 / 10^18:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        else:
                            if sub_caf1219f * arg1 / 10^18 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved -= sub_caf1219f * arg1 / 10^18
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_5a8d5413Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_caf1219f * arg1 / 10^18) >> 32
                        call sub_5a8d5413Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_caf1219f * arg1 / 10^18) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, sub_caf1219f * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(sub_caf1219f * arg1 / 10^18, arg1, msg.sender);
                    else:
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved >= 0:
                            if 0 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                        else:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            mem[324 len 0] = 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(0, arg1, msg.sender);
                else:
                    if sub_caf1219f > maxPremiumRate:
                        if maxPremiumRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved >= 0:
                                if 0 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(0, arg1, msg.sender);
                        else:
                            if maxPremiumRate * arg1 / arg1 != maxPremiumRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < maxPremiumRate * arg1 / 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < maxPremiumRate * arg1 / 10^18:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            else:
                                if maxPremiumRate * arg1 / 10^18 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved -= maxPremiumRate * arg1 / 10^18
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, maxPremiumRate * arg1 / 10^18) >> 32
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, maxPremiumRate * arg1 / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, maxPremiumRate * arg1 / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(maxPremiumRate * arg1 / 10^18, arg1, msg.sender);
                    else:
                        if sub_caf1219f <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved >= 0:
                                if 0 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(0, arg1, msg.sender);
                        else:
                            if sub_caf1219f * arg1 / arg1 != sub_caf1219f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_caf1219f * arg1 / 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < sub_caf1219f * arg1 / 10^18:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            else:
                                if sub_caf1219f * arg1 / 10^18 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved -= sub_caf1219f * arg1 / 10^18
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_caf1219f * arg1 / 10^18) >> 32
                            mem[324 len 0] = 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_caf1219f * arg1 / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, sub_caf1219f * arg1 / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(sub_caf1219f * arg1 / 10^18, arg1, msg.sender);
            else:
                if (ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / ext_call.return_data[14 len 18] - sub_caf1219f != premiumPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f < sub_caf1219f:
                    revert with 0, 'SafeMath: addition overflow'
                if maxPremiumRate <= 0:
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved >= 0:
                            if 0 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_5a8d5413Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                        call sub_5a8d5413Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(0, arg1, msg.sender);
                    else:
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / arg1 != ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_5a8d5413Address)
                        staticcall sub_5a8d5413Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        else:
                            if ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved -= ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                        require ext_code.size(sub_70517516Address)
                        call sub_70517516Address.0x79cc6790 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_5a8d5413Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) >> 32
                        call sub_5a8d5413Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(sub_e89e8382Address)
                        call sub_e89e8382Address.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18, arg1, msg.sender);
                else:
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f > maxPremiumRate:
                        if maxPremiumRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < 0:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                                call sub_5a8d5413Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 0, mem[324 len 4]
                            else:
                                if 0 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                                mem[324 len 0] = 0
                                call sub_5a8d5413Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(0, arg1, msg.sender);
                        else:
                            if maxPremiumRate * arg1 / arg1 != maxPremiumRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < maxPremiumRate * arg1 / 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < maxPremiumRate * arg1 / 10^18:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            else:
                                if maxPremiumRate * arg1 / 10^18 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved -= maxPremiumRate * arg1 / 10^18
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, maxPremiumRate * arg1 / 10^18) >> 32
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, maxPremiumRate * arg1 / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, maxPremiumRate * arg1 / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(maxPremiumRate * arg1 / 10^18, arg1, msg.sender);
                    else:
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved >= 0:
                                if 0 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                            require ext_code.size(sub_70517516Address)
                            call sub_70517516Address.0x79cc6790 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_5a8d5413Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, 0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(0, arg1, msg.sender);
                        else:
                            if ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / arg1 != ((ext_call.return_data[14 len 18] * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000) + sub_caf1219f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_5a8d5413Address)
                            staticcall sub_5a8d5413Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                            mem[201 len 27]
                            if seigniorageSaved < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18:
                                if seigniorageSaved > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved = 0
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) >> 32
                            else:
                                if ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18 > seigniorageSaved:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                seigniorageSaved -= ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                                require ext_code.size(sub_70517516Address)
                                call sub_70517516Address.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x35416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(sub_5a8d5413Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) >> 32
                                mem[324 len 0] = 0
                            call sub_5a8d5413Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x675361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            require ext_code.size(sub_e89e8382Address)
                            call sub_e89e8382Address.update() with:
                                 gas gas_remaining wei
                            emit RedeemedBonds(((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (sub_caf1219f * premiumPercent) / 10000 * arg1) + (sub_caf1219f * arg1) / 10^18, arg1, msg.sender);
    stor0[block.number][tx.origin] = 1
    stor0[block.number][msg.sender] = 1
}



}
