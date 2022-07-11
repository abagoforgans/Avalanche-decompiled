contract main {




// =====================  Runtime code  =====================


#
#  - depositInvestmentInTokensToPool(address arg1, uint256 arg2, address arg3)
#
const POOL_REGISTRY = sha3(Mask(104, 152, 'POOL_REGISTRY') >> 152)

const RETURN_INVESTMENT_LPARTNER = sha3(Mask(208, 48, 'RETURN_INVESTMENT_LPARTNER') >> 48)

const ORACLE = sha3(Mask(48, 208, 'ORACLE') >> 208)

const SUPER_ADMIN_ROLE = sha3(Mask(128, 128, 'SUPER_ADMIN_ROLE') >> 128)

const REFERER_ROLE = sha3(Mask(96, 160, 'REFERER_ROLE') >> 160)

const GENERAL_PARTNER_ROLE = sha3(Mask(160, 96, 'GENERAL_PARTNER_ROLE') >> 96)

const STARTUP_TEAM_ROLE = sha3(Mask(136, 120, 'STARTUP_TEAM_ROLE') >> 120)

const LIMITED_PARTNER_ROLE = sha3(Mask(160, 96, 'LIMITED_PARTNER_ROLE') >> 96)


array of struct stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;
array of struct stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
address addressCreatorInvestPool;
address assetManageTeamContractAddress;
address returnInvestmentLpartnerAddress;
address oracleContractAddress;
array of struct stor10;
array of struct stor11;
mapping of uint256 stor12;
mapping of uint256 investedFunds;
mapping of uint256 returnedFunds;
mapping of uint256 stor15;
uint256 stor16;
mapping of uint256 stor17;
uint256 stor18;
mapping of uint256 stor19;

function getAddressCreatorInvestPool() {
    return addressCreatorInvestPool
}

function isTeam(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function getInvestedFunds(address arg1) {
    require calldata.size - 4 >= 32
    return investedFunds[address(arg1)]
}

function getAssetManageTeamContract() {
    return assetManageTeamContractAddress
}

function isOracle(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor4[address(arg1)])
}

function getReturnedFunds(address arg1) {
    require calldata.size - 4 >= 32
    return returnedFunds[address(arg1)]
}

function getOracleContract() {
    return oracleContractAddress
}

function getReturnInvestmentLpartner() {
    return returnInvestmentLpartnerAddress
}

function _fallback() payable {
    revert
}

function getReferral(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.getReferral(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function depositTokenToPool(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0x85a73f5 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit DepositTokenToPool(address(arg1), arg2);
    return 1
}

function getCustomPrice(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleContractAddress)
    staticcall oracleContractAddress.0x89fd4d3d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], uint8(ext_call.return_data[32])
}

function withdrawToStartupTeam(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1._withdrawTeam(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit WithdrawToStartupTeam(address(arg1), arg2);
    return 1
}

function sub_4335ac30(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1._returnsInTokensFromTeam(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit ReturnsInTokensFromTeam(address(arg1), arg3, arg2);
    return 1
}

function lockStartupTeam(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(assetManageTeamContractAddress)
    call assetManageTeamContractAddress.0x98545b1e with:
         gas gas_remaining wei
        args address(arg1), address(arg2), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function unlockStartupTeam(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(assetManageTeamContractAddress)
    call assetManageTeamContractAddress.0xd85d2b13 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approveReqStartupTeam(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(assetManageTeamContractAddress)
    call assetManageTeamContractAddress.0xca2a33d9 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function withdrawSuperAdmin(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1._withdrawSuperAdmin(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function disapproveReqStartupTeam(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(assetManageTeamContractAddress)
    call assetManageTeamContractAddress.0xc5c0291f with:
         gas gas_remaining wei
        args address(arg1), address(arg2), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approveReturnInvestmentLpartner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(returnInvestmentLpartnerAddress)
    call returnInvestmentLpartnerAddress.0xca2a33d9 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function disapproveReturnInvestmentLpartner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(returnInvestmentLpartnerAddress)
    call returnInvestmentLpartnerAddress.0xc5c0291f with:
         gas gas_remaining wei
        args address(arg1), address(arg2), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function requestTokensWidthdrawalFromStartup(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(assetManageTeamContractAddress)
    call assetManageTeamContractAddress.0x2beee459 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approveTokensWidthdrawalFromStartup(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(assetManageTeamContractAddress)
    call assetManageTeamContractAddress.0x62cb27f5 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function requestReturnInvestmentLpartner(address arg1, uint256 arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(returnInvestmentLpartnerAddress)
    call returnInvestmentLpartnerAddress.0x6188e37b with:
         gas gas_remaining wei
        args 0, 0, msg.sender, arg2, arg3, address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function withdrawInTokensToStartupTeam(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1._withdrawTokensToStartup(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit WithdrawInTokensToStartupTeam(address(arg1), arg3, arg2);
    return 1
}

function requestStartupTeam(bool arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(assetManageTeamContractAddress)
    call assetManageTeamContractAddress._request(bool arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), address(arg2), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getInfoPoolFees(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getInfoPoolFees() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192]
}

function getPerformedOperationsTeamStartup(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(assetManageTeamContractAddress)
    staticcall assetManageTeamContractAddress.0xb95b78d3 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[12 len 20], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function getRequestTeamAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(assetManageTeamContractAddress)
    staticcall assetManageTeamContractAddress.0x40a5a151 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function getApproveTeamAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(assetManageTeamContractAddress)
    staticcall assetManageTeamContractAddress.0x871f470d with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function getPoolPairReserves(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getPoolPairReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return ext_call.return_data[18 len 14], 
           ext_call.return_data[32] << 144,
           ext_call.return_data[64] << 224,
           address(ext_call.return_data[96]),
           address(ext_call.return_data[128]),
           address(ext_call.return_data[160]),
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function getTeamAddresses() {
    if stor0.length:
        mem[128] = address(stor0.field_0)
        if (32 * stor0.length) + 32 > 64:
            mem[160] = address(stor0.field_256)
            idx = 160
            s = 1
            while (32 * stor0.length) + 96 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return memory
      from (32 * stor0.length) + 128
       len (96 * stor0.length) + 64
}

function sub_e72f7fa4(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    assetManageTeamContractAddress = arg1
    return 1
}

function sub_5394efed(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    returnInvestmentLpartnerAddress = arg1
    return 1
}

function setOracleContract(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    oracleContractAddress = arg1
    return 1
}

function setAddressCreatorInvestPool(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    addressCreatorInvestPool = arg1
    return 1
}

function withdrawLPartner(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1._withdrawLPartner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0]:
        if ext_call.return_data[32] + returnedFunds[ext_call.return_data[76 len 20]] < returnedFunds[ext_call.return_data[76 len 20]]:
            revert with 0, 'SafeMath: addition overflow'
        returnedFunds[address(ext_call.return_data[64])] = ext_call.return_data[32] + returnedFunds[ext_call.return_data[76 len 20]]
    emit WithdrawLPartner(address(arg1), msg.sender, bool(ext_call.return_data[0]));
    return bool(ext_call.return_data[0])
}

function getOracleAddresses() {
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function getPools() {
    if not stor11.length:
        mem[(32 * stor11.length) + 128] = 32
        mem[(32 * stor11.length) + 160] = stor11.length
        mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        return memory
          from (32 * stor11.length) + 128
           len (96 * stor11.length) + 64
    mem[128] = address(stor11.field_0)
    idx = 128
    s = 0
    while (32 * stor11.length) + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
    return Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + floor32(stor11.length) + 192 len (32 * stor11.length) - floor32(stor11.length)]), 
}

function getDepositPool(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.getDeposit(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(arg1)
    staticcall arg1.getDepositLength(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           bool(ext_call.return_data[96]),
           ext_call.return_data[128],
           ext_call.return_data[0],
           address(ext_call.return_data[160])
}

function setPriceToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    require ext_code.size(arg1)
    call arg1._setRate(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function setTeamReward(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    require ext_code.size(arg1)
    call arg1._setTeamReward(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function activateDepositToPool(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    require ext_code.size(arg1)
    call arg1._activateDepositToPool() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function disactivateDepositToPool(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    require ext_code.size(arg1)
    call arg1._disactivateDepositToPool() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function grantRoleInvestmentPool(address arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3('SUPER_ADMIN_ROLE'), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x73506f6f6c52656769737472793a2073656e64657220686173206e6f20726f6c652047506172746e65,
                    mem[205 len 23]
    require ext_code.size(arg1)
    call arg1.grantRole(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function revokeRoleInvestmentPool(address arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3('SUPER_ADMIN_ROLE'), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x73506f6f6c52656769737472793a2073656e64657220686173206e6f20726f6c652047506172746e65,
                    mem[205 len 23]
    require ext_code.size(arg1)
    call arg1.revokeRole(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_4325252a(?) payable {
    require calldata.size - 4 >= 32
    if not stor12[address(arg1)]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3('STARTUP_TEAM_ROLE'), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x72506f6f6c52656769737472793a2073656e64657220686173206e6f20726f6c65205465616d537461727475,
                    mem[208 len 20]
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReturnsFromStartupTeam(msg.sender, msg.value);
    return 1
}

function renounceOracle() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    if stor5[address(msg.sender)]:
        require stor3.length - 1 < stor3.length
        require stor5[address(msg.sender)] - 1 < stor3.length
        stor3[stor5[address(msg.sender)]].field_0 = stor3[stor3.length].field_0
        require stor3.length
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor5[address(msg.sender)] = 0
    stor4[address(msg.sender)] = 0
    emit OracleRemoved(msg.sender);
}

function sub_92a7e391(?) {
    require calldata.size - 4 >= 288
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg2.length) + 230 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[ceil32(arg2.length) + 240 len 20]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all]), arg3, address(arg4), arg5, arg6, arg7, arg8, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit UpdatePool(address arg1):
                    0,
                    uint128(arg1) << 96,
    return 0, 1
}

function setReferral(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3('LIMITED_PARTNER_ROLE'), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x30506f6f6c52656769737472793a20706172616d65746572204c706172746e657220686173206e6f20726f6c65204c506172746e65,
                    mem[217 len 11]
    require ext_code.size(arg1)
    call arg1._setReferral(address arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit SetReferral(address(arg1), address(arg2), address(arg3), bool(ext_call.return_data[0]));
    return bool(ext_call.return_data[0])
}

function addTeam(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    stor0.length++
    stor0[stor0.length].field_0 = arg1
    stor2[address(arg1)] = stor0.length
    emit TeamAdded(arg1);
}

function addOracle(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor4[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor4[address(arg1)] = 1
    stor3.length++
    stor3[stor3.length].field_0 = arg1
    stor5[address(arg1)] = stor3.length
    emit OracleAdded(arg1);
}

function addPool(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if not stor12[address(arg1)]:
        stor10.length++
        stor10[stor10.length].field_0 = arg1
        stor10[stor10.length].field_160 = 0
        stor11.length++
        stor11[stor11.length].field_0 = arg1
        stor12[address(arg1)] = stor10.length
    require ext_code.size(assetManageTeamContractAddress)
    call assetManageTeamContractAddress.0x2d06177a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AddPool(arg1);
    return 1
}

function sub_bf9d8cc3(?) {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + 230 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[ceil32(arg1.length) + 240 len 20]
    require ext_code.size(addressCreatorInvestPool)
    call addressCreatorInvestPool with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), arg2, arg3, arg4, arg5, arg6, address(arg7), address(arg8), address(arg9), address(arg10)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor12[ext_call.return_data[12 len 20]]:
        stor10.length++
        stor10[stor10.length].field_0 = address(ext_call.return_data[0])
        stor10[stor10.length].field_160 = 0
        stor11.length++
        stor11[stor11.length].field_0 = address(ext_call.return_data[0])
        stor12[address(ext_call.return_data[0])] = stor10.length
    emit CreatePool(address arg1):
                    0,
                    uint128(ext_call.return_data[0]) << 96,
    return 0, 1
}

function getRequestsTeam(address arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0x804e44f300000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(assetManageTeamContractAddress)
    staticcall assetManageTeamContractAddress.0x804e44f3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function getApprovalReqTeam(address arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0xda076a8700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(assetManageTeamContractAddress)
    staticcall assetManageTeamContractAddress.0xda076a87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function renounceTeam() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x725465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    if stor2[address(msg.sender)]:
        require stor0.length - 1 < stor0.length
        require stor2[address(msg.sender)] - 1 < stor0.length
        stor0[stor2[address(msg.sender)]].field_0 = stor0[stor0.length].field_0
        require stor0.length
        stor0[stor0.length].field_0 = 0
        stor0.length--
        stor2[address(msg.sender)] = 0
    stor1[address(msg.sender)] = 0
    emit TeamRemoved(msg.sender);
}

function getAddrRequestsReturnInvestLpartner(address arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0x804e44f300000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(returnInvestmentLpartnerAddress)
    staticcall returnInvestmentLpartnerAddress.0x804e44f3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function getAddressesRolesPool(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    mem[96] = 0x9cf6cc7000000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getMembersRole(bytes32 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function getRequestsReturnInvestLpartner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    mem[96] = 0x39926c4300000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    require ext_code.size(returnInvestmentLpartnerAddress)
    staticcall returnInvestmentLpartnerAddress.0x39926c43 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function sub_3070d515(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 230 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0, 
                    32,
                    46,
                    0xfe5465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204f7261636c6520726f6c,
                    mem[ceil32(arg4.length) + 242 len 18]
    if not stor12[address(arg1)]:
        mem[ceil32(arg4.length) + 128] = 0
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[0] = arg1
    stor15[address(arg1)] = arg3
    mem[32] = 17
    stor17[address(arg1)] = arg2
    mem[ceil32(arg4.length) + 128] = 0xf66fdcca00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getPoolValues() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg4.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 128
    require return_data.size >= 96
    _15 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    _16 = mem[ceil32(arg4.length) + 160]
    _17 = mem[ceil32(arg4.length) + 192]
    require mem[ceil32(arg4.length) + 192] <= 4294967296
    require mem[ceil32(arg4.length) + 192] + 32 <= return_data.size
    require return_data.size >= mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 192] + 128] + mem[ceil32(arg4.length) + 192] + 32 and mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 192] + 128] <= 4294967296
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 192] + 128]
    _20 = mem[ceil32(arg4.length) + _17 + 128]
    require ext_code.size(arg1)
    call arg1._setPoolValues(uint256 arg1, uint256 arg2, string arg3) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _16 > stor16:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor16 = arg3 + stor16 - _16
    if _15 > stor18:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor18 = arg2 + stor18 - _15
    emit SetPoolValues(address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all]), bool(ext_call.return_data[0]));
    return bool(ext_call.return_data[0])
}

function getPoolValues(address arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0xf66fdcca00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getPoolValues() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96]
    _5 = mem[128]
    _6 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 32 <= return_data.size
    require return_data.size >= mem[mem[160] + 96] + mem[160] + 32 and mem[mem[160] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[160] + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if not _9 % 32:
        mem[64] = _9 + ceil32(return_data.size) + 128
        mem[_9 + ceil32(return_data.size) + 128] = _4
        mem[_9 + ceil32(return_data.size) + 160] = _5
        mem[_9 + ceil32(return_data.size) + 224] = stor16
        mem[_9 + ceil32(return_data.size) + 256] = stor18
        mem[_9 + ceil32(return_data.size) + 192] = 160
        mem[_9 + ceil32(return_data.size) + 288] = mem[ceil32(return_data.size) + 96]
        mem[_9 + ceil32(return_data.size) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return _4, _5, 160, stor16, stor18, mem[_9 + ceil32(return_data.size) + 288 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _9 + ceil32(return_data.size) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _9 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
        return _4, 
               _5,
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_9 + ceil32(return_data.size) + 320 len floor32(mem[ceil32(return_data.size) + 96]) + 32]),
               stor16,
               stor18
    mem[floor32(_9) + ceil32(return_data.size) + 128] = mem[floor32(_9) + ceil32(return_data.size) + -(_9 % 32) + 160 len _9 % 32]
    mem[64] = floor32(_9) + ceil32(return_data.size) + 160
    mem[floor32(_9) + ceil32(return_data.size) + 160] = _4
    mem[floor32(_9) + ceil32(return_data.size) + 192] = _5
    mem[floor32(_9) + ceil32(return_data.size) + 256] = stor16
    mem[floor32(_9) + ceil32(return_data.size) + 288] = stor18
    mem[floor32(_9) + ceil32(return_data.size) + 224] = 160
    mem[floor32(_9) + ceil32(return_data.size) + 320] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_9) + ceil32(return_data.size) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return _4, 
               _5,
               160,
               stor16,
               stor18,
               mem[floor32(_9) + ceil32(return_data.size) + 320 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_9) + ceil32(return_data.size) + 352] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_9) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 384 len mem[ceil32(return_data.size) + 96] % 32]
    return _4, 
           _5,
           Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_9) + ceil32(return_data.size) + 352 len floor32(mem[ceil32(return_data.size) + 96]) + 32]),
           stor16,
           stor18
}

function getInfoPool(address arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getInfoPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[64] = _7 + ceil32(return_data.size) + 128
        _32 = mem[160]
        _33 = mem[192]
        mem[_7 + ceil32(return_data.size) + 160] = bool(mem[128])
        mem[_7 + ceil32(return_data.size) + 192] = address(_32)
        mem[_7 + ceil32(return_data.size) + 224] = _33
        mem[_7 + ceil32(return_data.size) + 128] = 128
        mem[_7 + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 128, 
                   mem[_7 + ceil32(return_data.size) + 160],
                   address(_32),
                   _33,
                   mem[_7 + ceil32(return_data.size) + 256 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
               mem[_7 + ceil32(return_data.size) + 160],
               address(_32),
               _33
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[64] = floor32(_7) + ceil32(return_data.size) + 160
    _40 = mem[192]
    mem[floor32(_7) + ceil32(return_data.size) + 192] = bool(mem[128])
    mem[floor32(_7) + ceil32(return_data.size) + 224] = mem[172 len 20]
    mem[floor32(_7) + ceil32(return_data.size) + 256] = _40
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 128
    mem[floor32(_7) + ceil32(return_data.size) + 288] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 128, 
               bool(mem[128]),
               mem[floor32(_7) + ceil32(return_data.size) + 224],
               _40,
               mem[floor32(_7) + ceil32(return_data.size) + 288 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
    return 128, 
           mem[floor32(_7) + ceil32(return_data.size) + 192 len 64],
           _40,
           mem[ceil32(return_data.size) + 96],
           mem[floor32(_7) + ceil32(return_data.size) + 320 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
}

function feesMultipier(address arg1) {
    require calldata.size - 4 >= 32
    if not stor11.length:
        require 0 < stor11.length
        _4 = mem[128]
        mem[(32 * stor11.length) + 128] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_4))
        staticcall address(_4).getInfoPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * stor11.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        _8 = mem[(32 * stor11.length) + 128]
        require mem[(32 * stor11.length) + 128] <= 4294967296
        require mem[(32 * stor11.length) + 128] + 32 <= return_data.size
        require return_data.size >= mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128] + mem[(32 * stor11.length) + 128] + 32 and mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128] <= 4294967296
        mem[(32 * stor11.length) + ceil32(return_data.size) + 128] = mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128]
        _11 = mem[(32 * stor11.length) + _8 + 128]
        mem[(32 * stor11.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * stor11.length) + _8 + 128])] = mem[(32 * stor11.length) + _8 + 160 len ceil32(mem[(32 * stor11.length) + _8 + 128])]
        if not _11 % 32:
            require ext_code.size(mem[(32 * stor11.length) + 204 len 20])
            staticcall mem[(32 * stor11.length) + 204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 100000
            if not ext_call.return_data[0]:
                return 100000
            if 100000 * ext_call.return_data[0] / ext_call.return_data[0] != 100000:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_11 + (32 * stor11.length) + ceil32(return_data.size) + 261 len 31]
        else:
            mem[floor32(_11) + (32 * stor11.length) + ceil32(return_data.size) + 160] = mem[floor32(_11) + (32 * stor11.length) + ceil32(return_data.size) + -(_11 % 32) + 192 len _11 % 32]
            require ext_code.size(mem[(32 * stor11.length) + 204 len 20])
            staticcall mem[(32 * stor11.length) + 204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 100000
            if not ext_call.return_data[0]:
                return 100000
            if 100000 * ext_call.return_data[0] / ext_call.return_data[0] != 100000:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_11) + (32 * stor11.length) + ceil32(return_data.size) + 293 len 31]
    else:
        mem[128] = address(stor11.field_0)
        idx = 128
        s = 0
        while (32 * stor11.length) + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor11.length
        _85 = mem[128]
        mem[(32 * stor11.length) + 128] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_85))
        staticcall address(_85).getInfoPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * stor11.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        _89 = mem[(32 * stor11.length) + 128]
        require mem[(32 * stor11.length) + 128] <= 4294967296
        require mem[(32 * stor11.length) + 128] + 32 <= return_data.size
        require return_data.size >= mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128] + mem[(32 * stor11.length) + 128] + 32 and mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128] <= 4294967296
        mem[(32 * stor11.length) + ceil32(return_data.size) + 128] = mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128]
        _92 = mem[(32 * stor11.length) + _89 + 128]
        mem[(32 * stor11.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * stor11.length) + _89 + 128])] = mem[(32 * stor11.length) + _89 + 160 len ceil32(mem[(32 * stor11.length) + _89 + 128])]
        if not _92 % 32:
            require ext_code.size(mem[(32 * stor11.length) + 204 len 20])
            staticcall mem[(32 * stor11.length) + 204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 100000
            if not ext_call.return_data[0]:
                return 100000
            if 100000 * ext_call.return_data[0] / ext_call.return_data[0] != 100000:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_92 + (32 * stor11.length) + ceil32(return_data.size) + 261 len 31]
        else:
            mem[floor32(_92) + (32 * stor11.length) + ceil32(return_data.size) + 160] = mem[floor32(_92) + (32 * stor11.length) + ceil32(return_data.size) + -(_92 % 32) + 192 len _92 % 32]
            require ext_code.size(mem[(32 * stor11.length) + 204 len 20])
            staticcall mem[(32 * stor11.length) + 204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 100000
            if not ext_call.return_data[0]:
                return 100000
            if 100000 * ext_call.return_data[0] / ext_call.return_data[0] != 100000:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_92) + (32 * stor11.length) + ceil32(return_data.size) + 293 len 31]
    ('eq', ('div', ('mul', 100000, ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32)), 100000)
    if (100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000 < 100000 * ext_call.return_data[0] / 80000 * 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return ((100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000)
}

function investorUsdValue(address arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.getDepositLength(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleContractAddress)
    staticcall oracleContractAddress.getLatestPrice() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.getDeposit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), idx
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[32] + (672 * 24 * 3600) >= block.timestamp:
            idx = idx + 1
            s = 0
            continue 
        require ext_code.size(arg1)
        staticcall arg1.getDeposit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), idx
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if block.timestamp >= ext_call.return_data[32] + (1344 * 24 * 3600):
            if address(ext_call.return_data[160]):
                _86 = mem[64]
                mem[64] = mem[64] + 64
                mem[_86] = 26
                mem[_86 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = 0
                continue 
            if not ext_call.return_data[0]:
                _90 = mem[64]
                mem[64] = mem[64] + 64
                mem[_90] = 26
                mem[_90 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[32]):
                    if 0 / 10^uint8(ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_134] = 26
                    mem[_134 + 32] = 'SafeMath: division by zero'
                    idx = idx + 1
                    s = 0
                    continue 
                _95 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _95 + 68] = mem[idx + _90 + 32]
                    idx = idx + 32
                    continue 
                mem[_95 + 68] = mem[_95 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _95 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            _93 = mem[64]
            mem[64] = mem[64] + 64
            mem[_93] = 26
            mem[_93 + 32] = 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[32]):
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_137] = 26
                mem[_137 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                s = 0
                continue 
            _99 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _99 + 68] = mem[idx + _93 + 32]
                idx = idx + 32
                continue 
            mem[_99 + 68] = mem[_99 + 74 len 26]
            revert with memory
              from mem[64]
               len _99 + -mem[64] + 100
        if address(ext_call.return_data[160]):
            _87 = mem[64]
            mem[64] = mem[64] + 64
            mem[_87] = 26
            mem[_87 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = 1
            continue 
        if not ext_call.return_data[0]:
            _94 = mem[64]
            mem[64] = mem[64] + 64
            mem[_94] = 26
            mem[_94 + 32] = 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[32]):
                if 0 / 10^uint8(ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _138 = mem[64]
                mem[64] = mem[64] + 64
                mem[_138] = 26
                mem[_138 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                s = 1
                continue 
            _104 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _104 + 68] = mem[idx + _94 + 32]
                idx = idx + 32
                continue 
            mem[_104 + 68] = mem[_104 + 74 len 26]
            revert with memory
              from mem[64]
               len _104 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        _98 = mem[64]
        mem[64] = mem[64] + 64
        mem[_98] = 26
        mem[_98 + 32] = 'SafeMath: division by zero'
        if 10^uint8(ext_call.return_data[32]):
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            _139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_139] = 26
            mem[_139 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            s = 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        s = 0
        while s < 26:
            mem[s + _108 + 68] = mem[s + _98 + 32]
            s = s + 32
            continue 
        mem[_108 + 68] = mem[_108 + 74 len 26]
        revert with memory
          from mem[64]
           len _108 + -mem[64] + 100
    return 0, bool(s)
}

function depositToPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor12[address(arg1)]:
        return 0
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor11.length:
        require 0 < stor11.length
        _8 = mem[128]
        mem[(32 * stor11.length) + 128] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_8))
        staticcall address(_8).getInfoPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * stor11.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        _12 = mem[(32 * stor11.length) + 128]
        require mem[(32 * stor11.length) + 128] <= 4294967296
        require mem[(32 * stor11.length) + 128] + 32 <= return_data.size
        require return_data.size >= mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128] + mem[(32 * stor11.length) + 128] + 32 and mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128] <= 4294967296
        mem[(32 * stor11.length) + ceil32(return_data.size) + 128] = mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128]
        _15 = mem[(32 * stor11.length) + _12 + 128]
        mem[(32 * stor11.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * stor11.length) + _12 + 128])] = mem[(32 * stor11.length) + _12 + 160 len ceil32(mem[(32 * stor11.length) + _12 + 128])]
        if not _15 % 32:
            require ext_code.size(mem[(32 * stor11.length) + 204 len 20])
            staticcall mem[(32 * stor11.length) + 204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value, 100000
            else:
                if not ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value, 100000
                else:
                    if 100000 * ext_call.return_data[0] / ext_call.return_data[0] != 100000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_15 + (32 * stor11.length) + ceil32(return_data.size) + 261 len 31]
                    if (100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000 < 100000 * ext_call.return_data[0] / 80000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(arg1)
                    call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value, (100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000
        else:
            mem[floor32(_15) + (32 * stor11.length) + ceil32(return_data.size) + 160] = mem[floor32(_15) + (32 * stor11.length) + ceil32(return_data.size) + -(_15 % 32) + 192 len _15 % 32]
            require ext_code.size(mem[(32 * stor11.length) + 204 len 20])
            staticcall mem[(32 * stor11.length) + 204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value, 100000
            else:
                if not ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value, 100000
                else:
                    if 100000 * ext_call.return_data[0] / ext_call.return_data[0] != 100000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_15) + (32 * stor11.length) + ceil32(return_data.size) + 293 len 31]
                    if (100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000 < 100000 * ext_call.return_data[0] / 80000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(arg1)
                    call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value, (100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000
    else:
        mem[128] = address(stor11.field_0)
        idx = 128
        s = 0
        while (32 * stor11.length) + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor11.length
        _173 = mem[128]
        mem[(32 * stor11.length) + 128] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_173))
        staticcall address(_173).getInfoPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * stor11.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        _177 = mem[(32 * stor11.length) + 128]
        require mem[(32 * stor11.length) + 128] <= 4294967296
        require mem[(32 * stor11.length) + 128] + 32 <= return_data.size
        require return_data.size >= mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128] + mem[(32 * stor11.length) + 128] + 32 and mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128] <= 4294967296
        mem[(32 * stor11.length) + ceil32(return_data.size) + 128] = mem[(32 * stor11.length) + mem[(32 * stor11.length) + 128] + 128]
        _180 = mem[(32 * stor11.length) + _177 + 128]
        mem[(32 * stor11.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * stor11.length) + _177 + 128])] = mem[(32 * stor11.length) + _177 + 160 len ceil32(mem[(32 * stor11.length) + _177 + 128])]
        if not _180 % 32:
            require ext_code.size(mem[(32 * stor11.length) + 204 len 20])
            staticcall mem[(32 * stor11.length) + 204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value, 100000
            else:
                if not ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value, 100000
                else:
                    if 100000 * ext_call.return_data[0] / ext_call.return_data[0] != 100000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_180 + (32 * stor11.length) + ceil32(return_data.size) + 261 len 31]
                    if (100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000 < 100000 * ext_call.return_data[0] / 80000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(arg1)
                    call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value, (100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000
        else:
            mem[floor32(_180) + (32 * stor11.length) + ceil32(return_data.size) + 160] = mem[floor32(_180) + (32 * stor11.length) + ceil32(return_data.size) + -(_180 % 32) + 192 len _180 % 32]
            require ext_code.size(mem[(32 * stor11.length) + 204 len 20])
            staticcall mem[(32 * stor11.length) + 204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value, 100000
            else:
                if not ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value, 100000
                else:
                    if 100000 * ext_call.return_data[0] / ext_call.return_data[0] != 100000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_180) + (32 * stor11.length) + ceil32(return_data.size) + 293 len 31]
                    if (100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000 < 100000 * ext_call.return_data[0] / 80000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(arg1)
                    call arg1._depositPoolRegistry(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value, (100000 * ext_call.return_data[0] / 80000 * 10^18) + 100000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value + investedFunds[0] < investedFunds[0]:
        revert with 0, 'SafeMath: addition overflow'
    investedFunds[0] += msg.value
    emit DepositToPool(msg.sender, msg.value);
    return 1
}

function checkTokensForClaim(address arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    mem[0] = arg2
    mem[32] = 19
    if block.timestamp - (672 * 24 * 3600) < stor19[address(arg2)]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.getDepositLength(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleContractAddress)
    staticcall oracleContractAddress.getLatestPrice() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.getDeposit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), idx
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[32] + (672 * 24 * 3600) >= block.timestamp:
            idx = idx + 1
            s = 0
            continue 
        require ext_code.size(arg1)
        staticcall arg1.getDeposit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), idx
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if block.timestamp >= ext_call.return_data[32] + (1344 * 24 * 3600):
            if address(ext_call.return_data[160]):
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 26
                mem[_222 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = 0
                continue 
            if not ext_call.return_data[0]:
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 26
                mem[_230 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[32]):
                    if 0 / 10^uint8(ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_285] = 26
                    mem[_285 + 32] = 'SafeMath: division by zero'
                    idx = idx + 1
                    s = 0
                    continue 
                _238 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _238 + 68] = mem[idx + _230 + 32]
                    idx = idx + 32
                    continue 
                mem[_238 + 68] = mem[_238 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _238 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            _234 = mem[64]
            mem[64] = mem[64] + 64
            mem[_234] = 26
            mem[_234 + 32] = 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[32]):
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_290] = 26
                mem[_290 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                s = 0
                continue 
            _242 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _242 + 68] = mem[idx + _234 + 32]
                idx = idx + 32
                continue 
            mem[_242 + 68] = mem[_242 + 74 len 26]
            revert with memory
              from mem[64]
               len _242 + -mem[64] + 100
        if address(ext_call.return_data[160]):
            _223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_223] = 26
            mem[_223 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = 1
            continue 
        if not ext_call.return_data[0]:
            _235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_235] = 26
            mem[_235 + 32] = 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[32]):
                if 0 / 10^uint8(ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _291 = mem[64]
                mem[64] = mem[64] + 64
                mem[_291] = 26
                mem[_291 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                s = 1
                continue 
            _247 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _247 + 68] = mem[idx + _235 + 32]
                idx = idx + 32
                continue 
            mem[_247 + 68] = mem[_247 + 74 len 26]
            revert with memory
              from mem[64]
               len _247 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        _241 = mem[64]
        mem[64] = mem[64] + 64
        mem[_241] = 26
        mem[_241 + 32] = 'SafeMath: division by zero'
        if 10^uint8(ext_call.return_data[32]):
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            _293 = mem[64]
            mem[64] = mem[64] + 64
            mem[_293] = 26
            mem[_293 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            s = 1
            continue 
        _252 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        s = 0
        while s < 26:
            mem[s + _252 + 68] = mem[s + _241 + 32]
            s = s + 32
            continue 
        mem[_252 + 68] = mem[_252 + 74 len 26]
        revert with memory
          from mem[64]
           len _252 + -mem[64] + 100
    _220 = mem[64]
    mem[64] = mem[64] + (32 * stor11.length) + 32
    mem[_220] = stor11.length
    if not stor11.length:
        require 0 < stor11.length
        _225 = mem[_220 + 32]
        mem[mem[64]] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_225))
        staticcall address(_225).getInfoPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _236 = mem[_233]
        require mem[_233] <= 4294967296
        require mem[_233] + 32 <= return_data.size
        require return_data.size >= mem[_233 + mem[_233]] + mem[_233] + 32 and mem[_233 + mem[_233]] <= 4294967296
        mem[_233 + ceil32(return_data.size)] = mem[_233 + mem[_233]]
        _257 = mem[_233 + _236]
        mem[_233 + ceil32(return_data.size) + 32 len ceil32(mem[_233 + _236])] = mem[_233 + _236 + 32 len ceil32(mem[_233 + _236])]
        if not _257 % 32:
            mem[64] = _257 + _233 + ceil32(return_data.size) + 32
            require ext_code.size(mem[_233 + 76 len 20])
            staticcall mem[_233 + 76 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor18 / 10^18:
                revert with 0, 'SafeMath: division by zero'
            if stor18 / 10^18 < 500000:
                if not ext_call.return_data[0] / 100:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_257 + _233 + ceil32(return_data.size) + 389 len 31]
                if not s:
                    return 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, 0, 0 / stor18 / 10^18, bool(s)
                if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 != 11:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_257 + _233 + ceil32(return_data.size) + 453 len 31]
                return 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, 0, 0 / stor18 / 10^18, bool(s)
            if stor18 / 10^18 >= 5 * 10^6:
                if not ext_call.return_data[0] / 10:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_257 + _233 + ceil32(return_data.size) + 453 len 31]
                if not s:
                    return 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, 0, 0 / stor18 / 10^18, bool(s)
                if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 != 11:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_257 + _233 + ceil32(return_data.size) + 517 len 31]
                return 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, 0, 0 / stor18 / 10^18, bool(s)
            if not ext_call.return_data[0] / 30:
                return 0, 0, 0 / stor18 / 10^18, bool(s)
            if 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 0 / stor18 / 10^18:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_257 + _233 + ceil32(return_data.size) + 453 len 31]
            if not s:
                return 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, 0, 0 / stor18 / 10^18, bool(s)
            if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                return 0, 0, 0 / stor18 / 10^18, bool(s)
            if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 != 11:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_257 + _233 + ceil32(return_data.size) + 517 len 31]
        else:
            mem[floor32(_257) + _233 + ceil32(return_data.size) + 32] = mem[floor32(_257) + _233 + ceil32(return_data.size) + -(_257 % 32) + 64 len _257 % 32]
            mem[64] = floor32(_257) + _233 + ceil32(return_data.size) + 64
            require ext_code.size(mem[_233 + 76 len 20])
            staticcall mem[_233 + 76 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor18 / 10^18:
                revert with 0, 'SafeMath: division by zero'
            if stor18 / 10^18 < 500000:
                if not ext_call.return_data[0] / 100:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_257) + _233 + ceil32(return_data.size) + 421 len 31]
                if not s:
                    return 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, 0, 0 / stor18 / 10^18, bool(s)
                if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 != 11:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_257) + _233 + ceil32(return_data.size) + 485 len 31]
                return 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, 0, 0 / stor18 / 10^18, bool(s)
            if stor18 / 10^18 >= 5 * 10^6:
                if not ext_call.return_data[0] / 10:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_257) + _233 + ceil32(return_data.size) + 485 len 31]
                if not s:
                    return 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, 0, 0 / stor18 / 10^18, bool(s)
                if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 != 11:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_257) + _233 + ceil32(return_data.size) + 549 len 31]
                return 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, 0, 0 / stor18 / 10^18, bool(s)
            if not ext_call.return_data[0] / 30:
                return 0, 0, 0 / stor18 / 10^18, bool(s)
            if 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 0 / stor18 / 10^18:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_257) + _233 + ceil32(return_data.size) + 485 len 31]
            if not s:
                return 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, 0, 0 / stor18 / 10^18, bool(s)
            if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                return 0, 0, 0 / stor18 / 10^18, bool(s)
            if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 != 11:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_257) + _233 + ceil32(return_data.size) + 549 len 31]
    else:
        mem[0] = 11
        mem[_220 + 32] = address(stor11.field_0)
        idx = _220 + 32
        t = 0
        while _220 + (32 * stor11.length) > idx:
            mem[idx + 32] = stor11[t].field_256
            idx = idx + 32
            t = t + 1
            continue 
        require 0 < stor11.length
        _754 = mem[_220 + 32]
        mem[mem[64]] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_754))
        staticcall address(_754).getInfoPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _757 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _758 = mem[_757]
        require mem[_757] <= 4294967296
        require mem[_757] + 32 <= return_data.size
        require return_data.size >= mem[_757 + mem[_757]] + mem[_757] + 32 and mem[_757 + mem[_757]] <= 4294967296
        mem[_757 + ceil32(return_data.size)] = mem[_757 + mem[_757]]
        _761 = mem[_757 + _758]
        mem[_757 + ceil32(return_data.size) + 32 len ceil32(mem[_757 + _758])] = mem[_757 + _758 + 32 len ceil32(mem[_757 + _758])]
        if not _761 % 32:
            mem[64] = _761 + _757 + ceil32(return_data.size) + 32
            require ext_code.size(mem[_757 + 76 len 20])
            staticcall mem[_757 + 76 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor18 / 10^18:
                revert with 0, 'SafeMath: division by zero'
            if stor18 / 10^18 < 500000:
                if not ext_call.return_data[0] / 100:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_761 + _757 + ceil32(return_data.size) + 389 len 31]
                if not s:
                    return 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, 0, 0 / stor18 / 10^18, bool(s)
                if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 != 11:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_761 + _757 + ceil32(return_data.size) + 453 len 31]
                return 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, 0, 0 / stor18 / 10^18, bool(s)
            if stor18 / 10^18 >= 5 * 10^6:
                if not ext_call.return_data[0] / 10:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_761 + _757 + ceil32(return_data.size) + 453 len 31]
                if not s:
                    return 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, 0, 0 / stor18 / 10^18, bool(s)
                if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 != 11:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_761 + _757 + ceil32(return_data.size) + 517 len 31]
                return 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, 0, 0 / stor18 / 10^18, bool(s)
            if not ext_call.return_data[0] / 30:
                return 0, 0, 0 / stor18 / 10^18, bool(s)
            if 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 0 / stor18 / 10^18:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_761 + _757 + ceil32(return_data.size) + 453 len 31]
            if not s:
                return 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, 0, 0 / stor18 / 10^18, bool(s)
            if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                return 0, 0, 0 / stor18 / 10^18, bool(s)
            if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 != 11:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_761 + _757 + ceil32(return_data.size) + 517 len 31]
        else:
            mem[floor32(_761) + _757 + ceil32(return_data.size) + 32] = mem[floor32(_761) + _757 + ceil32(return_data.size) + -(_761 % 32) + 64 len _761 % 32]
            mem[64] = floor32(_761) + _757 + ceil32(return_data.size) + 64
            require ext_code.size(mem[_757 + 76 len 20])
            staticcall mem[_757 + 76 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor18 / 10^18:
                revert with 0, 'SafeMath: division by zero'
            if stor18 / 10^18 < 500000:
                if not ext_call.return_data[0] / 100:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_761) + _757 + ceil32(return_data.size) + 421 len 31]
                if not s:
                    return 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, 0, 0 / stor18 / 10^18, bool(s)
                if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 != 11:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_761) + _757 + ceil32(return_data.size) + 485 len 31]
                return 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, 0, 0 / stor18 / 10^18, bool(s)
            if stor18 / 10^18 >= 5 * 10^6:
                if not ext_call.return_data[0] / 10:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_761) + _757 + ceil32(return_data.size) + 485 len 31]
                if not s:
                    return 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, 0, 0 / stor18 / 10^18, bool(s)
                if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                    return 0, 0, 0 / stor18 / 10^18, bool(s)
                if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 != 11:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_761) + _757 + ceil32(return_data.size) + 549 len 31]
                return 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, 0, 0 / stor18 / 10^18, bool(s)
            if not ext_call.return_data[0] / 30:
                return 0, 0, 0 / stor18 / 10^18, bool(s)
            if 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 0 / stor18 / 10^18:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_761) + _757 + ceil32(return_data.size) + 485 len 31]
            if not s:
                return 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, 0, 0 / stor18 / 10^18, bool(s)
            if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                return 0, 0, 0 / stor18 / 10^18, bool(s)
            if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 != 11:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_761) + _757 + ceil32(return_data.size) + 549 len 31]
    ('eq', ('div', ('mul', 11, ('div', ('mul', ('div', 0, ('div', ('stor', ('name', 'stor18', 18)), 1000000000000000000)), ('div', ('ext_call.return_data', 0, 32), 30)), 10000)), ('div', ('mul', ('div', 0, ('div', ('stor', ('name', 'stor18', 18)), 1000000000000000000)), ('div', ('ext_call.return_data', 0, 32), 30)), 10000)), 11)
    return 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10, 0, 0 / stor18 / 10^18, bool(s)
}

function claimFreeTokens(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if not stor12[address(arg1)]:
        return 0
    mem[0] = msg.sender
    mem[32] = 19
    if block.timestamp - (672 * 24 * 3600) < stor19[address(msg.sender)]:
        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
        return 0
    require ext_code.size(arg1)
    staticcall arg1.getDepositLength(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleContractAddress)
    staticcall oracleContractAddress.getLatestPrice() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.getDeposit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[32] + (672 * 24 * 3600) >= block.timestamp:
            idx = idx + 1
            s = 0
            continue 
        require ext_code.size(arg1)
        staticcall arg1.getDeposit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if block.timestamp >= ext_call.return_data[32] + (1344 * 24 * 3600):
            if address(ext_call.return_data[160]):
                _437 = mem[64]
                mem[64] = mem[64] + 64
                mem[_437] = 26
                mem[_437 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = 0
                continue 
            if not ext_call.return_data[0]:
                _445 = mem[64]
                mem[64] = mem[64] + 64
                mem[_445] = 26
                mem[_445 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[32]):
                    if 0 / 10^uint8(ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_500] = 26
                    mem[_500 + 32] = 'SafeMath: division by zero'
                    idx = idx + 1
                    s = 0
                    continue 
                _453 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _453 + 68] = mem[idx + _445 + 32]
                    idx = idx + 32
                    continue 
                mem[_453 + 68] = mem[_453 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _453 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            _449 = mem[64]
            mem[64] = mem[64] + 64
            mem[_449] = 26
            mem[_449 + 32] = 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[32]):
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _505 = mem[64]
                mem[64] = mem[64] + 64
                mem[_505] = 26
                mem[_505 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                s = 0
                continue 
            _457 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _457 + 68] = mem[idx + _449 + 32]
                idx = idx + 32
                continue 
            mem[_457 + 68] = mem[_457 + 74 len 26]
            revert with memory
              from mem[64]
               len _457 + -mem[64] + 100
        if address(ext_call.return_data[160]):
            _438 = mem[64]
            mem[64] = mem[64] + 64
            mem[_438] = 26
            mem[_438 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = 1
            continue 
        if not ext_call.return_data[0]:
            _450 = mem[64]
            mem[64] = mem[64] + 64
            mem[_450] = 26
            mem[_450 + 32] = 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[32]):
                if 0 / 10^uint8(ext_call.return_data[32]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _506 = mem[64]
                mem[64] = mem[64] + 64
                mem[_506] = 26
                mem[_506 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                s = 1
                continue 
            _462 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _462 + 68] = mem[idx + _450 + 32]
                idx = idx + 32
                continue 
            mem[_462 + 68] = mem[_462 + 74 len 26]
            revert with memory
              from mem[64]
               len _462 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        _456 = mem[64]
        mem[64] = mem[64] + 64
        mem[_456] = 26
        mem[_456 + 32] = 'SafeMath: division by zero'
        if 10^uint8(ext_call.return_data[32]):
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            _508 = mem[64]
            mem[64] = mem[64] + 64
            mem[_508] = 26
            mem[_508 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            s = 1
            continue 
        _467 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        s = 0
        while s < 26:
            mem[s + _467 + 68] = mem[s + _456 + 32]
            s = s + 32
            continue 
        mem[_467 + 68] = mem[_467 + 74 len 26]
        revert with memory
          from mem[64]
           len _467 + -mem[64] + 100
    _435 = mem[64]
    mem[64] = mem[64] + (32 * stor11.length) + 32
    mem[_435] = stor11.length
    if not stor11.length:
        require 0 < stor11.length
        _440 = mem[_435 + 32]
        mem[mem[64]] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_440))
        staticcall address(_440).getInfoPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _448 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _451 = mem[_448]
        require mem[_448] <= 4294967296
        require mem[_448] + 32 <= return_data.size
        require return_data.size >= mem[_448 + mem[_448]] + mem[_448] + 32 and mem[_448 + mem[_448]] <= 4294967296
        mem[_448 + ceil32(return_data.size)] = mem[_448 + mem[_448]]
        _472 = mem[_448 + _451]
        mem[_448 + ceil32(return_data.size) + 32 len ceil32(mem[_448 + _451])] = mem[_448 + _451 + 32 len ceil32(mem[_448 + _451])]
        if not _472 % 32:
            mem[64] = _472 + _448 + ceil32(return_data.size) + 32
            require ext_code.size(mem[_448 + 76 len 20])
            staticcall mem[_448 + 76 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor18 / 10^18:
                revert with 0, 'SafeMath: division by zero'
            if stor18 / 10^18 < 500000:
                if not ext_call.return_data[0] / 100:
                    emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                    return 0
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_472 + _448 + ceil32(return_data.size) + 389 len 31]
                if not s:
                    if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, msg.sender, 0);
                        return 0
                    if not stor11.length:
                        require 0 < stor11.length
                        _1359 = mem[_472 + _448 + ceil32(return_data.size) + 384]
                        mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_1359))
                        staticcall address(_1359).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 384
                        require return_data.size >= 128
                        _1393 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384]
                        require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] <= 4294967296
                        require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 32 <= return_data.size
                        require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384] <= 4294967296
                        mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 384] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384]
                        _1417 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1393 + 384]
                        mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1393 + 384])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1393 + 416 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1393 + 384])]
                        if _1417 % 32:
                            mem[floor32(_1417) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416] = mem[floor32(_1417) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1417 % 32) + 448 len _1417 % 32]
                    else:
                        mem[0] = 11
                        mem[_472 + _448 + ceil32(return_data.size) + 384] = address(stor11.field_0)
                        idx = _472 + _448 + ceil32(return_data.size) + 384
                        s = 0
                        while _472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 352 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require 0 < stor11.length
                        _2757 = mem[_472 + _448 + ceil32(return_data.size) + 384]
                        mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_2757))
                        staticcall address(_2757).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 384
                        require return_data.size >= 128
                        _2806 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384]
                        require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] <= 4294967296
                        require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 32 <= return_data.size
                        require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384] <= 4294967296
                        mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 384] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384]
                        _2841 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2806 + 384]
                        mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2806 + 384])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2806 + 416 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2806 + 384])]
                        if _2841 % 32:
                            mem[floor32(_2841) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416] = mem[floor32(_2841) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2841 % 32) + 448 len _2841 % 32]
                    require ext_code.size(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 460 len 20])
                    call mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 460 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor19[msg.sender] = block.timestamp
                    emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, msg.sender, 1);
                else:
                    if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 != 11:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_472 + _448 + ceil32(return_data.size) + 453 len 31]
                    if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10:
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, msg.sender, 0);
                        return 0
                    if not stor11.length:
                        require 0 < stor11.length
                        _1498 = mem[_472 + _448 + ceil32(return_data.size) + 448]
                        mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_1498))
                        staticcall address(_1498).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                        require return_data.size >= 128
                        _1540 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                        require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                        require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                        require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                        mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                        _1581 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1540 + 448]
                        mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1540 + 448])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1540 + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1540 + 448])]
                        if _1581 % 32:
                            mem[floor32(_1581) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_1581) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1581 % 32) + 512 len _1581 % 32]
                    else:
                        mem[0] = 11
                        mem[_472 + _448 + ceil32(return_data.size) + 448] = address(stor11.field_0)
                        idx = _472 + _448 + ceil32(return_data.size) + 448
                        s = 0
                        while _472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require 0 < stor11.length
                        _2760 = mem[_472 + _448 + ceil32(return_data.size) + 448]
                        mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_2760))
                        staticcall address(_2760).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                        require return_data.size >= 128
                        _2808 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                        require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                        require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                        require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                        mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                        _2842 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2808 + 448]
                        mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2808 + 448])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2808 + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2808 + 448])]
                        if _2842 % 32:
                            mem[floor32(_2842) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_2842) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2842 % 32) + 512 len _2842 % 32]
                    require ext_code.size(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20])
                    call mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor19[msg.sender] = block.timestamp
                    emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, msg.sender, 1);
            else:
                if stor18 / 10^18 >= 5 * 10^6:
                    if not ext_call.return_data[0] / 10:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / stor18 / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_472 + _448 + ceil32(return_data.size) + 453 len 31]
                    if not s:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _1420 = mem[_472 + _448 + ceil32(return_data.size) + 448]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1420))
                            staticcall address(_1420).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                            require return_data.size >= 128
                            _1468 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                            require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                            _1525 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1468 + 448]
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1468 + 448])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1468 + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1468 + 448])]
                            if _1525 % 32:
                                mem[floor32(_1525) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_1525) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1525 % 32) + 512 len _1525 % 32]
                        else:
                            mem[0] = 11
                            mem[_472 + _448 + ceil32(return_data.size) + 448] = address(stor11.field_0)
                            idx = _472 + _448 + ceil32(return_data.size) + 448
                            s = 0
                            while _472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _2745 = mem[_472 + _448 + ceil32(return_data.size) + 448]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_2745))
                            staticcall address(_2745).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                            require return_data.size >= 128
                            _2798 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                            require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                            _2837 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2798 + 448]
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2798 + 448])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2798 + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2798 + 448])]
                            if _2837 % 32:
                                mem[floor32(_2837) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_2837) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2837 % 32) + 512 len _2837 % 32]
                        require ext_code.size(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20])
                        call mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, msg.sender, 1);
                    else:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                            return 0
                        if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 != 11:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_472 + _448 + ceil32(return_data.size) + 517 len 31]
                        if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10:
                            emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _1591 = mem[_472 + _448 + ceil32(return_data.size) + 512]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1591))
                            staticcall address(_1591).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512
                            require return_data.size >= 128
                            _1637 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512]
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] <= 4294967296
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 <= return_data.size
                            require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] <= 4294967296
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512]
                            _1689 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1637 + 512]
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1637 + 512])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1637 + 544 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1637 + 512])]
                            if _1689 % 32:
                                mem[floor32(_1689) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_1689) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1689 % 32) + 576 len _1689 % 32]
                        else:
                            mem[0] = 11
                            mem[_472 + _448 + ceil32(return_data.size) + 512] = address(stor11.field_0)
                            idx = _472 + _448 + ceil32(return_data.size) + 512
                            s = 0
                            while _472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _2748 = mem[_472 + _448 + ceil32(return_data.size) + 512]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_2748))
                            staticcall address(_2748).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512
                            require return_data.size >= 128
                            _2800 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512]
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] <= 4294967296
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 <= return_data.size
                            require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] <= 4294967296
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512]
                            _2838 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2800 + 512]
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2800 + 512])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2800 + 544 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2800 + 512])]
                            if _2838 % 32:
                                mem[floor32(_2838) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_2838) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2838 % 32) + 576 len _2838 % 32]
                        require ext_code.size(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 588 len 20])
                        call mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 588 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, msg.sender, 1);
                else:
                    if not ext_call.return_data[0] / 30:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 0 / stor18 / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_472 + _448 + ceil32(return_data.size) + 453 len 31]
                    if not s:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _1425 = mem[_472 + _448 + ceil32(return_data.size) + 448]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1425))
                            staticcall address(_1425).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                            require return_data.size >= 128
                            _1472 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                            require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                            _1527 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1472 + 448]
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1472 + 448])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1472 + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1472 + 448])]
                            if _1527 % 32:
                                mem[floor32(_1527) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_1527) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1527 % 32) + 512 len _1527 % 32]
                        else:
                            mem[0] = 11
                            mem[_472 + _448 + ceil32(return_data.size) + 448] = address(stor11.field_0)
                            idx = _472 + _448 + ceil32(return_data.size) + 448
                            s = 0
                            while _472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _2751 = mem[_472 + _448 + ceil32(return_data.size) + 448]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_2751))
                            staticcall address(_2751).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                            require return_data.size >= 128
                            _2802 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                            require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                            _2839 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2802 + 448]
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2802 + 448])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2802 + 480 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2802 + 448])]
                            if _2839 % 32:
                                mem[floor32(_2839) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_2839) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2839 % 32) + 512 len _2839 % 32]
                        require ext_code.size(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20])
                        call mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, msg.sender, 1);
                    else:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                            return 0
                        if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 != 11:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_472 + _448 + ceil32(return_data.size) + 517 len 31]
                        if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10:
                            emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _1596 = mem[_472 + _448 + ceil32(return_data.size) + 512]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1596))
                            staticcall address(_1596).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512
                            require return_data.size >= 128
                            _1642 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512]
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] <= 4294967296
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 <= return_data.size
                            require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] <= 4294967296
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512]
                            _1692 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1642 + 512]
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1642 + 512])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1642 + 544 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1642 + 512])]
                            if _1692 % 32:
                                mem[floor32(_1692) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_1692) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1692 % 32) + 576 len _1692 % 32]
                        else:
                            mem[0] = 11
                            mem[_472 + _448 + ceil32(return_data.size) + 512] = address(stor11.field_0)
                            idx = _472 + _448 + ceil32(return_data.size) + 512
                            s = 0
                            while _472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _2754 = mem[_472 + _448 + ceil32(return_data.size) + 512]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_2754))
                            staticcall address(_2754).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512
                            require return_data.size >= 128
                            _2804 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512]
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] <= 4294967296
                            require mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 <= return_data.size
                            require return_data.size >= mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 and mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] <= 4294967296
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512]
                            _2840 = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2804 + 512]
                            mem[_472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2804 + 512])] = mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2804 + 544 len ceil32(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2804 + 512])]
                            if _2840 % 32:
                                mem[floor32(_2840) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_2840) + _472 + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2840 % 32) + 576 len _2840 % 32]
                        require ext_code.size(mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 588 len 20])
                        call mem[_472 + _448 + ceil32(return_data.size) + (32 * stor11.length) + 588 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10, msg.sender, 1);
        else:
            mem[floor32(_472) + _448 + ceil32(return_data.size) + 32] = mem[floor32(_472) + _448 + ceil32(return_data.size) + -(_472 % 32) + 64 len _472 % 32]
            mem[64] = floor32(_472) + _448 + ceil32(return_data.size) + 64
            require ext_code.size(mem[_448 + 76 len 20])
            staticcall mem[_448 + 76 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor18 / 10^18:
                revert with 0, 'SafeMath: division by zero'
            if stor18 / 10^18 < 500000:
                if not ext_call.return_data[0] / 100:
                    emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                    return 0
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_472) + _448 + ceil32(return_data.size) + 421 len 31]
                if not s:
                    if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, msg.sender, 0);
                        return 0
                    if not stor11.length:
                        require 0 < stor11.length
                        _1377 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 416]
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_1377))
                        staticcall address(_1377).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        _1408 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416]
                        require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] <= 4294967296
                        require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416] <= 4294967296
                        mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416]
                        _1433 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1408 + 416]
                        mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1408 + 416])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1408 + 448 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1408 + 416])]
                        if _1433 % 32:
                            mem[floor32(_1433) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[floor32(_1433) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1433 % 32) + 480 len _1433 % 32]
                    else:
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + 416] = address(stor11.field_0)
                        idx = floor32(_472) + _448 + ceil32(return_data.size) + 416
                        s = 0
                        while floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 384 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require 0 < stor11.length
                        _2775 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 416]
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_2775))
                        staticcall address(_2775).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        _2818 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416]
                        require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] <= 4294967296
                        require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416] <= 4294967296
                        mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416]
                        _2847 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2818 + 416]
                        mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2818 + 416])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2818 + 448 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2818 + 416])]
                        if _2847 % 32:
                            mem[floor32(_2847) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[floor32(_2847) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2847 % 32) + 480 len _2847 % 32]
                    require ext_code.size(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 492 len 20])
                    call mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 492 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor19[msg.sender] = block.timestamp
                    emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, msg.sender, 1);
                else:
                    if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 != 11:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_472) + _448 + ceil32(return_data.size) + 485 len 31]
                    if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10:
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, msg.sender, 0);
                        return 0
                    if not stor11.length:
                        require 0 < stor11.length
                        _1522 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 480]
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_1522))
                        staticcall address(_1522).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                        require return_data.size >= 128
                        _1558 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                        require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                        require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                        mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                        _1609 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1558 + 480]
                        mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1558 + 480])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1558 + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1558 + 480])]
                        if _1609 % 32:
                            mem[floor32(_1609) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_1609) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1609 % 32) + 544 len _1609 % 32]
                    else:
                        mem[0] = 11
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + 480] = address(stor11.field_0)
                        idx = floor32(_472) + _448 + ceil32(return_data.size) + 480
                        s = 0
                        while floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require 0 < stor11.length
                        _2778 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 480]
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_2778))
                        staticcall address(_2778).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                        require return_data.size >= 128
                        _2820 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                        require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                        require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                        mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                        _2848 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2820 + 480]
                        mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2820 + 480])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2820 + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2820 + 480])]
                        if _2848 % 32:
                            mem[floor32(_2848) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_2848) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2848 % 32) + 544 len _2848 % 32]
                    require ext_code.size(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20])
                    call mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor19[msg.sender] = block.timestamp
                    emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, msg.sender, 1);
            else:
                if stor18 / 10^18 >= 5 * 10^6:
                    if not ext_call.return_data[0] / 10:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / stor18 / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_472) + _448 + ceil32(return_data.size) + 485 len 31]
                    if not s:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _1440 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 480]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1440))
                            staticcall address(_1440).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                            require return_data.size >= 128
                            _1501 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                            _1542 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1501 + 480]
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1501 + 480])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1501 + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1501 + 480])]
                            if _1542 % 32:
                                mem[floor32(_1542) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_1542) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1542 % 32) + 544 len _1542 % 32]
                        else:
                            mem[0] = 11
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + 480] = address(stor11.field_0)
                            idx = floor32(_472) + _448 + ceil32(return_data.size) + 480
                            s = 0
                            while floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _2763 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 480]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_2763))
                            staticcall address(_2763).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                            require return_data.size >= 128
                            _2810 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                            _2843 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2810 + 480]
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2810 + 480])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2810 + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2810 + 480])]
                            if _2843 % 32:
                                mem[floor32(_2843) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_2843) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2843 % 32) + 544 len _2843 % 32]
                        require ext_code.size(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20])
                        call mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, msg.sender, 1);
                    else:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                            return 0
                        if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 != 11:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[floor32(_472) + _448 + ceil32(return_data.size) + 549 len 31]
                        if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10:
                            emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _1615 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 544]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1615))
                            staticcall address(_1615).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544
                            require return_data.size >= 128
                            _1664 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544]
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] <= 4294967296
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] <= 4294967296
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544]
                            _1707 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1664 + 544]
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1664 + 544])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1664 + 576 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1664 + 544])]
                            if _1707 % 32:
                                mem[floor32(_1707) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576] = mem[floor32(_1707) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1707 % 32) + 608 len _1707 % 32]
                        else:
                            mem[0] = 11
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + 544] = address(stor11.field_0)
                            idx = floor32(_472) + _448 + ceil32(return_data.size) + 544
                            s = 0
                            while floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _2766 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 544]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_2766))
                            staticcall address(_2766).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544
                            require return_data.size >= 128
                            _2812 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544]
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] <= 4294967296
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] <= 4294967296
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544]
                            _2844 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2812 + 544]
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2812 + 544])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2812 + 576 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2812 + 544])]
                            if _2844 % 32:
                                mem[floor32(_2844) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576] = mem[floor32(_2844) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2844 % 32) + 608 len _2844 % 32]
                        require ext_code.size(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 620 len 20])
                        call mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 620 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, msg.sender, 1);
                else:
                    if not ext_call.return_data[0] / 30:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 0 / stor18 / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_472) + _448 + ceil32(return_data.size) + 485 len 31]
                    if not s:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _1445 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 480]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1445))
                            staticcall address(_1445).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                            require return_data.size >= 128
                            _1505 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                            _1544 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1505 + 480]
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1505 + 480])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1505 + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1505 + 480])]
                            if _1544 % 32:
                                mem[floor32(_1544) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_1544) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1544 % 32) + 544 len _1544 % 32]
                        else:
                            mem[0] = 11
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + 480] = address(stor11.field_0)
                            idx = floor32(_472) + _448 + ceil32(return_data.size) + 480
                            s = 0
                            while floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 448 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _2769 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 480]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_2769))
                            staticcall address(_2769).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                            require return_data.size >= 128
                            _2814 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                            _2845 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2814 + 480]
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2814 + 480])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2814 + 512 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2814 + 480])]
                            if _2845 % 32:
                                mem[floor32(_2845) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_2845) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2845 % 32) + 544 len _2845 % 32]
                        require ext_code.size(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20])
                        call mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, msg.sender, 1);
                    else:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                            return 0
                        if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 != 11:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[floor32(_472) + _448 + ceil32(return_data.size) + 549 len 31]
                        if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10:
                            emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _1620 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 544]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1620))
                            staticcall address(_1620).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544
                            require return_data.size >= 128
                            _1669 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544]
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] <= 4294967296
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] <= 4294967296
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544]
                            _1710 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1669 + 544]
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1669 + 544])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1669 + 576 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _1669 + 544])]
                            if _1710 % 32:
                                mem[floor32(_1710) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576] = mem[floor32(_1710) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_1710 % 32) + 608 len _1710 % 32]
                        else:
                            mem[0] = 11
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + 544] = address(stor11.field_0)
                            idx = floor32(_472) + _448 + ceil32(return_data.size) + 544
                            s = 0
                            while floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 512 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _2772 = mem[floor32(_472) + _448 + ceil32(return_data.size) + 544]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_2772))
                            staticcall address(_2772).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544
                            require return_data.size >= 128
                            _2816 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544]
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] <= 4294967296
                            require mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 and mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] <= 4294967296
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544]
                            _2846 = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2816 + 544]
                            mem[floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2816 + 544])] = mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2816 + 576 len ceil32(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + _2816 + 544])]
                            if _2846 % 32:
                                mem[floor32(_2846) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576] = mem[floor32(_2846) + floor32(_472) + _448 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_2846 % 32) + 608 len _2846 % 32]
                        require ext_code.size(mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 620 len 20])
                        call mem[floor32(_472) + _448 + ceil32(return_data.size) + (32 * stor11.length) + 620 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10, msg.sender, 1);
    else:
        mem[0] = 11
        mem[_435 + 32] = address(stor11.field_0)
        idx = _435 + 32
        t = 0
        while _435 + (32 * stor11.length) > idx:
            mem[idx + 32] = stor11[t].field_256
            idx = idx + 32
            t = t + 1
            continue 
        require 0 < stor11.length
        _1929 = mem[_435 + 32]
        mem[mem[64]] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_1929))
        staticcall address(_1929).getInfoPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1968 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2005 = mem[_1968]
        require mem[_1968] <= 4294967296
        require mem[_1968] + 32 <= return_data.size
        require return_data.size >= mem[_1968 + mem[_1968]] + mem[_1968] + 32 and mem[_1968 + mem[_1968]] <= 4294967296
        mem[_1968 + ceil32(return_data.size)] = mem[_1968 + mem[_1968]]
        _2080 = mem[_1968 + _2005]
        mem[_1968 + ceil32(return_data.size) + 32 len ceil32(mem[_1968 + _2005])] = mem[_1968 + _2005 + 32 len ceil32(mem[_1968 + _2005])]
        if _2080 % 32:
            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 32] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + -(_2080 % 32) + 64 len _2080 % 32]
            mem[64] = floor32(_2080) + _1968 + ceil32(return_data.size) + 64
            require ext_code.size(mem[_1968 + 76 len 20])
            staticcall mem[_1968 + 76 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor18 / 10^18:
                revert with 0, 'SafeMath: division by zero'
            if stor18 / 10^18 < 500000:
                if not ext_call.return_data[0] / 100:
                    emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                    return 0
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 421 len 31]
                if not s:
                    if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, msg.sender, 0);
                        return 0
                    if not stor11.length:
                        require 0 < stor11.length
                        _3290 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 416]
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_3290))
                        staticcall address(_3290).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        _3321 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416]
                        require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] <= 4294967296
                        require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416] <= 4294967296
                        mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416]
                        _3346 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3321 + 416]
                        mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3321 + 416])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3321 + 448 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3321 + 416])]
                        var119001 = ceil32(_3346)
                        if _3346 % 32:
                            mem[floor32(_3346) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[floor32(_3346) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3346 % 32) + 480 len _3346 % 32]
                    else:
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 416] = address(stor11.field_0)
                        idx = floor32(_2080) + _1968 + ceil32(return_data.size) + 416
                        s = 0
                        while floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require 0 < stor11.length
                        _4267 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 416]
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_4267))
                        staticcall address(_4267).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        _4305 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416]
                        require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] <= 4294967296
                        require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416] <= 4294967296
                        mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416] + 416]
                        _4331 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4305 + 416]
                        mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4305 + 416])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4305 + 448 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4305 + 416])]
                        if _4331 % 32:
                            mem[floor32(_4331) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[floor32(_4331) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4331 % 32) + 480 len _4331 % 32]
                    require ext_code.size(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 492 len 20])
                    call mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 492 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor19[msg.sender] = block.timestamp
                    emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, msg.sender, 1);
                else:
                    if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 != 11:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 485 len 31]
                    if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10:
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, msg.sender, 0);
                        return 0
                    if not stor11.length:
                        require 0 < stor11.length
                        _3435 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 480]
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_3435))
                        staticcall address(_3435).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                        require return_data.size >= 128
                        _3471 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                        require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                        require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                        mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                        _3522 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3471 + 480]
                        mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3471 + 480])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3471 + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3471 + 480])]
                        if _3522 % 32:
                            mem[floor32(_3522) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_3522) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3522 % 32) + 544 len _3522 % 32]
                    else:
                        mem[0] = 11
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 480] = address(stor11.field_0)
                        idx = floor32(_2080) + _1968 + ceil32(return_data.size) + 480
                        s = 0
                        while floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require 0 < stor11.length
                        _4270 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 480]
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_4270))
                        staticcall address(_4270).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                        require return_data.size >= 128
                        _4307 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                        require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                        require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                        require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                        mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                        _4332 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4307 + 480]
                        mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4307 + 480])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4307 + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4307 + 480])]
                        if _4332 % 32:
                            mem[floor32(_4332) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_4332) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4332 % 32) + 544 len _4332 % 32]
                    require ext_code.size(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20])
                    call mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor19[msg.sender] = block.timestamp
                    emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, msg.sender, 1);
            else:
                if stor18 / 10^18 >= 5 * 10^6:
                    if not ext_call.return_data[0] / 10:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / stor18 / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 485 len 31]
                    if not s:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _3353 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 480]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3353))
                            staticcall address(_3353).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                            require return_data.size >= 128
                            _3414 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                            _3455 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3414 + 480]
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3414 + 480])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3414 + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3414 + 480])]
                            var126001 = ceil32(_3455)
                            if _3455 % 32:
                                mem[floor32(_3455) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_3455) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3455 % 32) + 544 len _3455 % 32]
                        else:
                            mem[0] = 11
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 480] = address(stor11.field_0)
                            idx = floor32(_2080) + _1968 + ceil32(return_data.size) + 480
                            s = 0
                            while floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _4255 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 480]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_4255))
                            staticcall address(_4255).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                            require return_data.size >= 128
                            _4297 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                            _4327 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4297 + 480]
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4297 + 480])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4297 + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4297 + 480])]
                            if _4327 % 32:
                                mem[floor32(_4327) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_4327) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4327 % 32) + 544 len _4327 % 32]
                        require ext_code.size(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20])
                        call mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, msg.sender, 1);
                    else:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                            return 0
                        if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 != 11:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 549 len 31]
                        if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10:
                            emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _3528 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 544]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3528))
                            staticcall address(_3528).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544
                            require return_data.size >= 128
                            _3577 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544]
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] <= 4294967296
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] <= 4294967296
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544]
                            _3620 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3577 + 544]
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3577 + 544])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3577 + 576 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3577 + 544])]
                            if _3620 % 32:
                                mem[floor32(_3620) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576] = mem[floor32(_3620) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3620 % 32) + 608 len _3620 % 32]
                        else:
                            mem[0] = 11
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 544] = address(stor11.field_0)
                            idx = floor32(_2080) + _1968 + ceil32(return_data.size) + 544
                            s = 0
                            while floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _4258 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 544]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_4258))
                            staticcall address(_4258).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544
                            require return_data.size >= 128
                            _4299 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544]
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] <= 4294967296
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] <= 4294967296
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544]
                            _4328 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4299 + 544]
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4299 + 544])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4299 + 576 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4299 + 544])]
                            if _4328 % 32:
                                mem[floor32(_4328) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576] = mem[floor32(_4328) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4328 % 32) + 608 len _4328 % 32]
                        require ext_code.size(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 620 len 20])
                        call mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 620 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, msg.sender, 1);
                else:
                    if not ext_call.return_data[0] / 30:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 0 / stor18 / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 485 len 31]
                    if not s:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _3358 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 480]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3358))
                            staticcall address(_3358).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                            require return_data.size >= 128
                            _3418 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                            _3457 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3418 + 480]
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3418 + 480])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3418 + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3418 + 480])]
                            var126001 = ceil32(_3457)
                            if _3457 % 32:
                                mem[floor32(_3457) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_3457) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3457 % 32) + 544 len _3457 % 32]
                        else:
                            mem[0] = 11
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 480] = address(stor11.field_0)
                            idx = floor32(_2080) + _1968 + ceil32(return_data.size) + 480
                            s = 0
                            while floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _4261 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 480]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_4261))
                            staticcall address(_4261).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480
                            require return_data.size >= 128
                            _4301 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480]
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] <= 4294967296
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480] <= 4294967296
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480] + 480]
                            _4329 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4301 + 480]
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4301 + 480])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4301 + 512 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4301 + 480])]
                            if _4329 % 32:
                                mem[floor32(_4329) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[floor32(_4329) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4329 % 32) + 544 len _4329 % 32]
                        require ext_code.size(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20])
                        call mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 556 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, msg.sender, 1);
                    else:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                            return 0
                        if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 != 11:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 549 len 31]
                        if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10:
                            emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _3533 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 544]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3533))
                            staticcall address(_3533).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544
                            require return_data.size >= 128
                            _3582 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544]
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] <= 4294967296
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] <= 4294967296
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544]
                            _3623 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3582 + 544]
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3582 + 544])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3582 + 576 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3582 + 544])]
                            if _3623 % 32:
                                mem[floor32(_3623) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576] = mem[floor32(_3623) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3623 % 32) + 608 len _3623 % 32]
                        else:
                            mem[0] = 11
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 544] = address(stor11.field_0)
                            idx = floor32(_2080) + _1968 + ceil32(return_data.size) + 544
                            s = 0
                            while floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _4264 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + 544]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_4264))
                            staticcall address(_4264).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544
                            require return_data.size >= 128
                            _4303 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544]
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] <= 4294967296
                            require mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 32 and mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544] <= 4294967296
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 544] + 544]
                            _4330 = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4303 + 544]
                            mem[floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4303 + 544])] = mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4303 + 576 len ceil32(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4303 + 544])]
                            if _4330 % 32:
                                mem[floor32(_4330) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 576] = mem[floor32(_4330) + floor32(_2080) + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4330 % 32) + 608 len _4330 % 32]
                        require ext_code.size(mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 620 len 20])
                        call mem[floor32(_2080) + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 620 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10, msg.sender, 1);
        else:
            mem[64] = _2080 + _1968 + ceil32(return_data.size) + 32
            require ext_code.size(mem[_1968 + 76 len 20])
            staticcall mem[_1968 + 76 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_2080 + _1968 + ceil32(return_data.size) + 32] = 26
            mem[_2080 + _1968 + ceil32(return_data.size) + 64] = 'SafeMath: division by zero'
            if stor18 / 10^18 < 500000:
                if not stor18 / 10^18:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] / 100:
                    emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                    return 0
                if 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 0 / stor18 / 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_2080 + _1968 + ceil32(return_data.size) + 389 len 31]
                if not s:
                    if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, msg.sender, 0);
                        return 0
                    if not stor11.length:
                        require 0 < stor11.length
                        _3272 = mem[_2080 + _1968 + ceil32(return_data.size) + 384]
                        mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_3272))
                        staticcall address(_3272).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        _3306 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384]
                        require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] <= 4294967296
                        require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 32 <= return_data.size
                        require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384] <= 4294967296
                        mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 384] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384]
                        _3330 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3306 + 384]
                        mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3306 + 384])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3306 + 416 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3306 + 384])]
                        var118001 = ceil32(_3330)
                        if _3330 % 32:
                            mem[floor32(_3330) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416] = mem[floor32(_3330) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3330 % 32) + 448 len _3330 % 32]
                    else:
                        mem[_2080 + _1968 + ceil32(return_data.size) + 384] = address(stor11.field_0)
                        idx = _2080 + _1968 + ceil32(return_data.size) + 384
                        s = 0
                        while _2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 352 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require 0 < stor11.length
                        _4249 = mem[_2080 + _1968 + ceil32(return_data.size) + 384]
                        mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_4249))
                        staticcall address(_4249).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        _4293 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384]
                        require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] <= 4294967296
                        require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 32 <= return_data.size
                        require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384] <= 4294967296
                        mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 384] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 384] + 384]
                        _4325 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4293 + 384]
                        mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4293 + 384])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4293 + 416 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4293 + 384])]
                        if _4325 % 32:
                            mem[floor32(_4325) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 416] = mem[floor32(_4325) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4325 % 32) + 448 len _4325 % 32]
                    require ext_code.size(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 460 len 20])
                    call mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 460 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor19[msg.sender] = block.timestamp
                    emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000, msg.sender, 1);
                else:
                    if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 != 11:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_2080 + _1968 + ceil32(return_data.size) + 453 len 31]
                    if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10:
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, msg.sender, 0);
                        return 0
                    if not stor11.length:
                        require 0 < stor11.length
                        _3411 = mem[_2080 + _1968 + ceil32(return_data.size) + 448]
                        mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_3411))
                        staticcall address(_3411).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                        require return_data.size >= 128
                        _3453 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                        require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                        require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                        require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                        mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                        _3494 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3453 + 448]
                        mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3453 + 448])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3453 + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3453 + 448])]
                        if _3494 % 32:
                            mem[floor32(_3494) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_3494) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3494 % 32) + 512 len _3494 % 32]
                    else:
                        mem[0] = 11
                        mem[_2080 + _1968 + ceil32(return_data.size) + 448] = address(stor11.field_0)
                        idx = _2080 + _1968 + ceil32(return_data.size) + 448
                        s = 0
                        while _2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require 0 < stor11.length
                        _4252 = mem[_2080 + _1968 + ceil32(return_data.size) + 448]
                        mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_4252))
                        staticcall address(_4252).getInfoPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                        require return_data.size >= 128
                        _4295 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                        require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                        require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                        require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                        mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                        _4326 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4295 + 448]
                        mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4295 + 448])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4295 + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4295 + 448])]
                        if _4326 % 32:
                            mem[floor32(_4326) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_4326) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4326 % 32) + 512 len _4326 % 32]
                    require ext_code.size(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20])
                    call mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor19[msg.sender] = block.timestamp
                    emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 100 / 10000 / 10, msg.sender, 1);
            else:
                mem[_2080 + _1968 + ceil32(return_data.size) + 96] = 26
                mem[_2080 + _1968 + ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                mem[_2080 + _1968 + ceil32(return_data.size) + 160] = 26
                mem[_2080 + _1968 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                mem[_2080 + _1968 + ceil32(return_data.size) + 224] = 26
                mem[_2080 + _1968 + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
                mem[_2080 + _1968 + ceil32(return_data.size) + 288] = 26
                mem[_2080 + _1968 + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                if not stor18 / 10^18:
                    revert with 0, 'SafeMath: division by zero'
                if stor18 / 10^18 >= 5 * 10^6:
                    if not ext_call.return_data[0] / 10:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / stor18 / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_2080 + _1968 + ceil32(return_data.size) + 453 len 31]
                    if not s:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _3333 = mem[_2080 + _1968 + ceil32(return_data.size) + 448]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3333))
                            staticcall address(_3333).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                            require return_data.size >= 128
                            _3381 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                            require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                            _3438 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3381 + 448]
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3381 + 448])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3381 + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3381 + 448])]
                            var125001 = ceil32(_3438)
                            if _3438 % 32:
                                mem[floor32(_3438) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_3438) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3438 % 32) + 512 len _3438 % 32]
                        else:
                            mem[0] = 11
                            mem[_2080 + _1968 + ceil32(return_data.size) + 448] = address(stor11.field_0)
                            idx = _2080 + _1968 + ceil32(return_data.size) + 448
                            s = 0
                            while _2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _4237 = mem[_2080 + _1968 + ceil32(return_data.size) + 448]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_4237))
                            staticcall address(_4237).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                            require return_data.size >= 128
                            _4285 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                            require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                            _4321 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4285 + 448]
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4285 + 448])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4285 + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4285 + 448])]
                            if _4321 % 32:
                                mem[floor32(_4321) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_4321) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4321 % 32) + 512 len _4321 % 32]
                        require ext_code.size(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20])
                        call mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000, msg.sender, 1);
                    else:
                        mem[_2080 + _1968 + ceil32(return_data.size) + 352] = 26
                        mem[_2080 + _1968 + ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                            return 0
                        if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 != 11:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_2080 + _1968 + ceil32(return_data.size) + 517 len 31]
                        mem[_2080 + _1968 + ceil32(return_data.size) + 416] = 26
                        mem[_2080 + _1968 + ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                        if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10:
                            emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, msg.sender, 0);
                            return 0
                        mem[_2080 + _1968 + ceil32(return_data.size) + 480] = stor11.length
                        if not stor11.length:
                            require 0 < stor11.length
                            _3504 = mem[_2080 + _1968 + ceil32(return_data.size) + 512]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3504))
                            staticcall address(_3504).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512
                            require return_data.size >= 128
                            _3550 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512]
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] <= 4294967296
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 <= return_data.size
                            require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] <= 4294967296
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512]
                            _3602 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3550 + 512]
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3550 + 512])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3550 + 544 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3550 + 512])]
                            if _3602 % 32:
                                mem[floor32(_3602) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_3602) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3602 % 32) + 576 len _3602 % 32]
                        else:
                            mem[0] = 11
                            mem[_2080 + _1968 + ceil32(return_data.size) + 512] = address(stor11.field_0)
                            idx = _2080 + _1968 + ceil32(return_data.size) + 512
                            s = 0
                            while _2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _4240 = mem[_2080 + _1968 + ceil32(return_data.size) + 512]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_4240))
                            staticcall address(_4240).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512
                            require return_data.size >= 128
                            _4287 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512]
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] <= 4294967296
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 <= return_data.size
                            require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] <= 4294967296
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512]
                            _4322 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4287 + 512]
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4287 + 512])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4287 + 544 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4287 + 512])]
                            if _4322 % 32:
                                mem[floor32(_4322) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_4322) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4322 % 32) + 576 len _4322 % 32]
                        require ext_code.size(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 588 len 20])
                        call mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 588 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 10 / 10000 / 10, msg.sender, 1);
                else:
                    if not ext_call.return_data[0] / 30:
                        emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                        return 0
                    if 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 0 / stor18 / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_2080 + _1968 + ceil32(return_data.size) + 453 len 31]
                    if not s:
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, msg.sender, 0);
                            return 0
                        if not stor11.length:
                            require 0 < stor11.length
                            _3338 = mem[_2080 + _1968 + ceil32(return_data.size) + 448]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3338))
                            staticcall address(_3338).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                            require return_data.size >= 128
                            _3385 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                            require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                            _3440 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3385 + 448]
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3385 + 448])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3385 + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3385 + 448])]
                            var125001 = ceil32(_3440)
                            if _3440 % 32:
                                mem[floor32(_3440) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_3440) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3440 % 32) + 512 len _3440 % 32]
                        else:
                            mem[0] = 11
                            mem[_2080 + _1968 + ceil32(return_data.size) + 448] = address(stor11.field_0)
                            idx = _2080 + _1968 + ceil32(return_data.size) + 448
                            s = 0
                            while _2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 416 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _4243 = mem[_2080 + _1968 + ceil32(return_data.size) + 448]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_4243))
                            staticcall address(_4243).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448
                            require return_data.size >= 128
                            _4289 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448]
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] <= 4294967296
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 <= return_data.size
                            require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448] <= 4294967296
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 448] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 448] + 448]
                            _4323 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4289 + 448]
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4289 + 448])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4289 + 480 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4289 + 448])]
                            if _4323 % 32:
                                mem[floor32(_4323) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 480] = mem[floor32(_4323) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4323 % 32) + 512 len _4323 % 32]
                        require ext_code.size(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20])
                        call mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 524 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000, msg.sender, 1);
                    else:
                        mem[_2080 + _1968 + ceil32(return_data.size) + 352] = 26
                        mem[_2080 + _1968 + ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
                        if not 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000:
                            emit ClaimFreeTokens(address(arg1), 0, msg.sender, 0);
                            return 0
                        if 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 != 11:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_2080 + _1968 + ceil32(return_data.size) + 517 len 31]
                        mem[_2080 + _1968 + ceil32(return_data.size) + 416] = 26
                        mem[_2080 + _1968 + ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                        if not 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10:
                            emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10, msg.sender, 0);
                            return 0
                        mem[_2080 + _1968 + ceil32(return_data.size) + 480] = stor11.length
                        if not stor11.length:
                            require 0 < stor11.length
                            _3509 = mem[_2080 + _1968 + ceil32(return_data.size) + 512]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3509))
                            staticcall address(_3509).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512
                            require return_data.size >= 128
                            _3555 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512]
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] <= 4294967296
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 <= return_data.size
                            require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] <= 4294967296
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512]
                            _3605 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3555 + 512]
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3555 + 512])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3555 + 544 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _3555 + 512])]
                            if _3605 % 32:
                                mem[floor32(_3605) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_3605) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_3605 % 32) + 576 len _3605 % 32]
                        else:
                            mem[0] = 11
                            mem[_2080 + _1968 + ceil32(return_data.size) + 512] = address(stor11.field_0)
                            idx = _2080 + _1968 + ceil32(return_data.size) + 512
                            s = 0
                            while _2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 480 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require 0 < stor11.length
                            _4246 = mem[_2080 + _1968 + ceil32(return_data.size) + 512]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] = 0xd2f0d2a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_4246))
                            staticcall address(_4246).getInfoPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512
                            require return_data.size >= 128
                            _4291 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512]
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] <= 4294967296
                            require mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 <= return_data.size
                            require return_data.size >= mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 32 and mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512] <= 4294967296
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 512] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 512] + 512]
                            _4324 = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4291 + 512]
                            mem[_2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4291 + 512])] = mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4291 + 544 len ceil32(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + _4291 + 512])]
                            if _4324 % 32:
                                mem[floor32(_4324) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + 544] = mem[floor32(_4324) + _2080 + _1968 + (2 * ceil32(return_data.size)) + (32 * stor11.length) + -(_4324 % 32) + 576 len _4324 % 32]
                        require ext_code.size(mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 588 len 20])
                        call mem[_2080 + _1968 + ceil32(return_data.size) + (32 * stor11.length) + 588 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor19[msg.sender] = block.timestamp
                        emit ClaimFreeTokens(address(arg1), 11 * 0 / stor18 / 10^18 * ext_call.return_data[0] / 30 / 10000 / 10, msg.sender, 1);
    return 1
}



}
