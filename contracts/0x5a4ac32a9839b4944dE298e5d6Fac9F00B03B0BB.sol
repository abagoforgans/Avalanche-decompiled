contract main {




// =====================  Runtime code  =====================


#
#  - redeem(uint256 arg1, uint256 arg2, uint256 arg3)
#
const sub_4bfe4a57(?) = 9000

const sub_7622fdfb(?) = 1

const sub_f8c32124(?) = 5000

const PRECISION = 10^6


address owner;
uint256 stor1;
address oracleAddress;
address xTokenAddress;
address sub_49bfcca1Address;
address sub_37042142Address;
uint32 stor6;
address sub_8088c318Address;
uint256 stor6;
uint32 stor7;
address treasuryAddress;
uint256 stor7;
mapping of struct userInfo;
uint256 sub_1be626c1;
uint256 sub_2ebfa5bd;
uint256 sub_d3001386;
uint8 mintPaused;
uint8 redeemPaused; offset 8
uint256 stor12; offset 16
uint256 stor12; offset 8
uint256 collateralRatio;
uint256 sub_868a2724;
uint256 sub_ea5f7abe;
uint256 sub_0b68acac;
uint256 sub_80fe2b75;
uint256 sub_a8508d3e;
uint256 sub_9f1bf63e;
uint256 minCollateralRatio;
uint8 sub_7a991b6d;
uint256 redemptionFee;
uint256 mintingFee;
uint256 sub_10b0e7e8;

function xToken() {
    return xTokenAddress
}

function sub_0b68acac(?) {
    return sub_0b68acac
}

function sub_10b0e7e8(?) {
    return sub_10b0e7e8
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function sub_1be626c1(?) {
    return sub_1be626c1
}

function sub_2ebfa5bd(?) {
    return sub_2ebfa5bd
}

function sub_37042142(?) {
    return sub_37042142Address
}

function redemptionFee() {
    return redemptionFee
}

function sub_49bfcca1(?) {
    return sub_49bfcca1Address
}

function mintingFee() {
    return mintingFee
}

function treasury() {
    return address(treasuryAddress)
}

function sub_7a991b6d(?) {
    return bool(sub_7a991b6d)
}

function oracle() {
    return oracleAddress
}

function mintPaused() {
    return bool(mintPaused)
}

function sub_8088c318(?) {
    return address(sub_8088c318Address)
}

function sub_80fe2b75(?) {
    return sub_80fe2b75
}

function minCollateralRatio() {
    return minCollateralRatio
}

function sub_868a2724(?) {
    return sub_868a2724
}

function owner() {
    return owner
}

function sub_9f1bf63e(?) {
    return sub_9f1bf63e
}

function sub_a8508d3e(?) {
    return sub_a8508d3e
}

function redeemPaused() {
    return bool(redeemPaused)
}

function collateralRatio() {
    return collateralRatio
}

function sub_d3001386(?) {
    return sub_d3001386
}

function sub_ea5f7abe(?) {
    return sub_ea5f7abe
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(treasuryAddress):
        revert with 0, 'Pool::setTreasury: not allowed'
    address(treasuryAddress) = arg1
    emit TreasurySet(arg1);
}

function sub_73b82edd(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0b68acac = arg1
    sub_80fe2b75 = arg2
    sub_9f1bf63e = arg3
    sub_ea5f7abe = arg4
    emit 0x38f57571: arg1, arg2, arg3, arg4
}

function sub_d5d0cb16(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(arg1) != bool(sub_7a991b6d):
        sub_7a991b6d = uint8(bool(arg1))
        emit 0xe9b03f52: bool(arg1)
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Pool::setOracle: invalid address'
    oracleAddress = arg1
    emit OracleChanged(arg1);
}

function setMinCollateralRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pool::setMinCollateralRatio: >COLLATERAL_RATIO_MAX'
    minCollateralRatio = arg1
    emit 0x5982e574: arg1
}

function sub_c97b4960(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 300000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Pool::setYTokenSlippage: yTokenSlippage cannot be more than 30%'
    sub_10b0e7e8 = arg1
    emit 0xd86c2dfa: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_c29118fc(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintPaused = uint8(bool(arg1))
    Mask(248, 0, stor12.field_8) = Mask(248, 0, bool(arg2))
    Mask(240, 0, stor12.field_16) = Mask(240, 16, bool(arg1)) >> 16
    emit 0xe4e27596: bool(arg1), bool(arg2)
}

function sub_3e09a95f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pool::setSwapStrategy: invalid address'
    address(sub_8088c318Address) = address(arg1)
    emit 0xf42b2d61: address(arg1)
}

function setFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5000:
        revert with 0, 'Pool::setFees:>MINTING_FEE_MAX'
    if arg2 > 9000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pool::setFees:>REDEMPTION_FEE_MAX'
    redemptionFee = arg2
    mintingFee = arg1
    emit FeesUpdated(arg1, arg2);
}

function sub_4ebf4418(?) payable {
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pool::recollateralize: Invalid amount'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbcce7923: msg.value, msg.sender
}

function sub_a85ebc5c(?) {
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_1be626c1:
        return 0
    if ext_call.return_data[0] < sub_1be626c1:
        revert with 0, 17
    return (ext_call.return_data[0] - sub_1be626c1)
}

function info() {
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_1be626c1:
        return collateralRatio, sub_868a2724, mintingFee, redemptionFee, bool(mintPaused), bool(redeemPaused), 0
    if ext_call.return_data[0] < sub_1be626c1:
        revert with 0, 17
    return collateralRatio, 
           sub_868a2724,
           mintingFee,
           redemptionFee,
           bool(mintPaused),
           bool(redeemPaused),
           ext_call.return_data[0] - sub_1be626c1
}

function calcMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x5f4370a5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Pool::calcMint: Invalid YToken price'
    if 10^6 < collateralRatio:
        revert with 0, 17
    if arg1 and -collateralRatio + 10^6 > -1 / arg1:
        revert with 0, 17
    if (10^6 * arg1) - (collateralRatio * arg1) / 10^6 and 10^18 > -1 / (10^6 * arg1) - (collateralRatio * arg1) / 10^6:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if arg1 and mintingFee > -1 / arg1:
        revert with 0, 17
    if arg1 * mintingFee and collateralRatio > -1 / arg1 * mintingFee:
        revert with 0, 17
    if arg1 and mintingFee > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * mintingFee / 10^6:
        revert with 0, 17
    return arg1 - (arg1 * mintingFee / 10^6), 
           10^18 * (10^6 * arg1) - (collateralRatio * arg1) / 10^6 / ext_call.return_data[0],
           arg1 * mintingFee * collateralRatio / 10^6 / 10^6,
           (10^6 * arg1) - (collateralRatio * arg1) / 10^6
}

function sub_514330cb(?) {
    require ext_code.size(xTokenAddress)
    staticcall xTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and collateralRatio > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_1be626c1:
        if 0 >= ext_call.return_data[0] * collateralRatio / 10^6:
            return -ext_call.return_data[0] * collateralRatio / 10^6, 1
        if ext_call.return_data[0] * collateralRatio / 10^6 < 0:
            revert with 0, 17
        return ext_call.return_data[0] * collateralRatio / 10^6, 0
    if ext_call.return_data[0] < sub_1be626c1:
        revert with 0, 17
    if ext_call.return_data[0] - sub_1be626c1 >= ext_call.return_data[0] * collateralRatio / 10^6:
        return ext_call.return_data[0] - sub_1be626c1 - (ext_call.return_data[0] * collateralRatio / 10^6), 1
    if ext_call.return_data[0] * collateralRatio / 10^6 < ext_call.return_data[0] - sub_1be626c1:
        revert with 0, 17
    return (ext_call.return_data[0] * collateralRatio / 10^6) - ext_call.return_data[0] + sub_1be626c1, 0
}

function refreshCollateralRatio() {
    if sub_7a991b6d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Pool::refreshCollateralRatio: Collateral Ratio has been paused'
    if block.timestamp < sub_868a2724:
        revert with 0, 17
    if block.timestamp - sub_868a2724 < sub_ea5f7abe:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Pool::refreshCollateralRatio: Must wait for the refresh cooldown since last refresh'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xc0ce6238 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_a8508d3e > !sub_9f1bf63e:
        revert with 0, 17
    if ext_call.return_data[0] > sub_a8508d3e + sub_9f1bf63e:
        if collateralRatio <= sub_80fe2b75:
            collateralRatio = 0
        else:
            if collateralRatio < sub_80fe2b75:
                revert with 0, 17
            if collateralRatio - sub_80fe2b75 > minCollateralRatio:
                collateralRatio -= sub_80fe2b75
            else:
                collateralRatio = minCollateralRatio
    else:
        if sub_a8508d3e < sub_9f1bf63e:
            revert with 0, 17
        if ext_call.return_data[0] < sub_a8508d3e - sub_9f1bf63e:
            if collateralRatio > !sub_0b68acac:
                revert with 0, 17
            if collateralRatio + sub_0b68acac >= 10^6:
                collateralRatio = 10^6
            else:
                if collateralRatio > !sub_0b68acac:
                    revert with 0, 17
                collateralRatio += sub_0b68acac
    sub_868a2724 = block.timestamp
    emit 0x43dd06cd: collateralRatio
}

function calcRedeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x6e16399c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x5f4370a5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Pool::calcRedeem: Invalid YToken price'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Pool::calcRedeem: Invalid yTokenTWAP'
    if arg1 and collateralRatio > -1 / arg1:
        revert with 0, 17
    if collateralRatio >= 10^6:
        if not collateralRatio:
            return 0, 0, 0, 0, arg1 * collateralRatio / 10^6
        if 10^6 < redemptionFee:
            revert with 0, 17
        if arg1 and collateralRatio > -1 / arg1:
            revert with 0, 17
        if arg1 * collateralRatio and -redemptionFee + 10^6 > -1 / arg1 * collateralRatio:
            revert with 0, 17
        if arg1 and collateralRatio > -1 / arg1:
            revert with 0, 17
        if arg1 * collateralRatio and redemptionFee > -1 / arg1 * collateralRatio:
            revert with 0, 17
        return (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6, 
               0,
               0,
               arg1 * collateralRatio * redemptionFee / 10^6 / 10^6,
               arg1 * collateralRatio / 10^6
    if 10^6 < redemptionFee:
        revert with 0, 17
    if 10^6 < collateralRatio:
        revert with 0, 17
    if arg1 and -collateralRatio + 10^6 > -1 / arg1:
        revert with 0, 17
    if (10^6 * arg1) - (collateralRatio * arg1) and -redemptionFee + 10^6 > -1 / (10^6 * arg1) - (collateralRatio * arg1):
        revert with 0, 17
    if (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1) and 10^18 > -1 / (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 10^6 < redemptionFee:
        revert with 0, 17
    if 10^6 < collateralRatio:
        revert with 0, 17
    if arg1 and -collateralRatio + 10^6 > -1 / arg1:
        revert with 0, 17
    if (10^6 * arg1) - (collateralRatio * arg1) and -redemptionFee + 10^6 > -1 / (10^6 * arg1) - (collateralRatio * arg1):
        revert with 0, 17
    if (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1) and 10^18 > -1 / (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if not collateralRatio:
        return 0, 
               (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0],
               (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0],
               0,
               arg1 * collateralRatio / 10^6
    if 10^6 < redemptionFee:
        revert with 0, 17
    if arg1 and collateralRatio > -1 / arg1:
        revert with 0, 17
    if arg1 * collateralRatio and -redemptionFee + 10^6 > -1 / arg1 * collateralRatio:
        revert with 0, 17
    if arg1 and collateralRatio > -1 / arg1:
        revert with 0, 17
    if arg1 * collateralRatio and redemptionFee > -1 / arg1 * collateralRatio:
        revert with 0, 17
    return (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6, 
           (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0],
           (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0],
           arg1 * collateralRatio * redemptionFee / 10^6 / 10^6,
           arg1 * collateralRatio / 10^6
}

function sub_e969355f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(xTokenAddress)
    staticcall xTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and collateralRatio > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_1be626c1:
        if 0 < ext_call.return_data[0] * collateralRatio / 10^6:
            if ext_call.return_data[0] * collateralRatio / 10^6 < 0:
                revert with 0, 17
        else:
            if -ext_call.return_data[0] * collateralRatio / 10^6 > 0:
                if arg1 > -ext_call.return_data[0] * collateralRatio / 10^6:
                    revert with 0, 'Pool::reduceExcessCollateral: The amount is too large'
                if not address(treasuryAddress):
                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                if arg1:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(treasuryAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor7)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if ext_call.return_data[0] < sub_1be626c1:
            revert with 0, 17
        if ext_call.return_data[0] - sub_1be626c1 < ext_call.return_data[0] * collateralRatio / 10^6:
            if ext_call.return_data[0] * collateralRatio / 10^6 < ext_call.return_data[0] - sub_1be626c1:
                revert with 0, 17
        else:
            if ext_call.return_data[0] - sub_1be626c1 - (ext_call.return_data[0] * collateralRatio / 10^6) > 0:
                if arg1 > ext_call.return_data[0] - sub_1be626c1 - (ext_call.return_data[0] * collateralRatio / 10^6):
                    revert with 0, 'Pool::reduceExcessCollateral: The amount is too large'
                if not address(treasuryAddress):
                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                if arg1:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(treasuryAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor7)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function collect() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.number <= userInfo[msg.sender].field_768:
        revert with 0, 'Pool::collect: <minimum_delay'
    if not userInfo[address(msg.sender)].field_0:
        if not userInfo[address(msg.sender)].field_256:
            if userInfo[address(msg.sender)].field_512:
                userInfo[address(msg.sender)].field_512 = 0
                if sub_1be626c1 < userInfo[address(msg.sender)].field_512:
                    revert with 0, 17
                sub_1be626c1 -= userInfo[address(msg.sender)].field_512
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args userInfo[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < userInfo[address(msg.sender)].field_512:
                    revert with 0, 'Address: insufficient balance'
                call msg.sender with:
                   value userInfo[address(msg.sender)].field_512 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Address: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                ('bool', 'ext_call.success')
        else:
            userInfo[address(msg.sender)].field_256 = 0
            if sub_d3001386 < userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            sub_d3001386 -= userInfo[address(msg.sender)].field_256
            if not userInfo[address(msg.sender)].field_512:
                require ext_code.size(sub_37042142Address)
                call sub_37042142Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                userInfo[address(msg.sender)].field_512 = 0
                if sub_1be626c1 < userInfo[address(msg.sender)].field_512:
                    revert with 0, 17
                sub_1be626c1 -= userInfo[address(msg.sender)].field_512
                require ext_code.size(sub_37042142Address)
                call sub_37042142Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args userInfo[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < userInfo[address(msg.sender)].field_512:
                    revert with 0, 'Address: insufficient balance'
                call msg.sender with:
                   value userInfo[address(msg.sender)].field_512 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Address: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
            ('bool', 'ext_call.success')
    else:
        userInfo[address(msg.sender)].field_0 = 0
        if sub_2ebfa5bd < userInfo[address(msg.sender)].field_0:
            revert with 0, 17
        sub_2ebfa5bd -= userInfo[address(msg.sender)].field_0
        if not userInfo[address(msg.sender)].field_256:
            if not userInfo[address(msg.sender)].field_512:
                require ext_code.size(xTokenAddress)
                call xTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                userInfo[address(msg.sender)].field_512 = 0
                if sub_1be626c1 < userInfo[address(msg.sender)].field_512:
                    revert with 0, 17
                sub_1be626c1 -= userInfo[address(msg.sender)].field_512
                require ext_code.size(xTokenAddress)
                call xTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args userInfo[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < userInfo[address(msg.sender)].field_512:
                    revert with 0, 'Address: insufficient balance'
                call msg.sender with:
                   value userInfo[address(msg.sender)].field_512 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Address: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            userInfo[address(msg.sender)].field_256 = 0
            if sub_d3001386 < userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            sub_d3001386 -= userInfo[address(msg.sender)].field_256
            if not userInfo[address(msg.sender)].field_512:
                require ext_code.size(xTokenAddress)
                call xTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_37042142Address)
                call sub_37042142Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                userInfo[address(msg.sender)].field_512 = 0
                if sub_1be626c1 < userInfo[address(msg.sender)].field_512:
                    revert with 0, 17
                sub_1be626c1 -= userInfo[address(msg.sender)].field_512
                require ext_code.size(xTokenAddress)
                call xTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_37042142Address)
                call sub_37042142Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args userInfo[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < userInfo[address(msg.sender)].field_512:
                    revert with 0, 'Address: insufficient balance'
                call msg.sender with:
                   value userInfo[address(msg.sender)].field_512 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Address: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
    stor1 = 1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if mintPaused:
        revert with 0, 'Pool::mint: Minting is paused'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x5f4370a5 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Pool::calcMint: Invalid YToken price'
    if 10^6 < collateralRatio:
        revert with 0, 17
    if msg.value and -collateralRatio + 10^6 > -1 / msg.value:
        revert with 0, 17
    if (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 and 10^18 > -1 / (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if msg.value and mintingFee > -1 / msg.value:
        revert with 0, 17
    if msg.value * mintingFee and collateralRatio > -1 / msg.value * mintingFee:
        revert with 0, 17
    if msg.value and mintingFee > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value * mintingFee / 10^6:
        revert with 0, 17
    if msg.value - (msg.value * mintingFee / 10^6) < arg1:
        revert with 0, 'Pool::mint: > slippage'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 10^18 * (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 / ext_call.return_data[0] <= 0:
        if msg.value - (msg.value * mintingFee / 10^6):
            if userInfo[address(msg.sender)].field_0 > !(msg.value - (msg.value * mintingFee / 10^6)):
                revert with 0, 17
            userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + msg.value - (msg.value * mintingFee / 10^6)
            if sub_2ebfa5bd > !(msg.value - (msg.value * mintingFee / 10^6)):
                revert with 0, 17
            sub_2ebfa5bd = sub_2ebfa5bd + msg.value - (msg.value * mintingFee / 10^6)
        if not address(treasuryAddress):
            revert with 0, 'Pool::transferToTreasury:Invalid address'
        if msg.value * mintingFee * collateralRatio / 10^6 / 10^6:
            mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
            mem[ceil32(return_data.size) + 164] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor7)
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0
            mem[ceil32(return_data.size) + 328] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
    else:
        if (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 <= 0:
            if msg.value - (msg.value * mintingFee / 10^6):
                if userInfo[address(msg.sender)].field_0 > !(msg.value - (msg.value * mintingFee / 10^6)):
                    revert with 0, 17
                userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + msg.value - (msg.value * mintingFee / 10^6)
                if sub_2ebfa5bd > !(msg.value - (msg.value * mintingFee / 10^6)):
                    revert with 0, 17
                sub_2ebfa5bd = sub_2ebfa5bd + msg.value - (msg.value * mintingFee / 10^6)
            if not address(treasuryAddress):
                revert with 0, 'Pool::transferToTreasury:Invalid address'
            if msg.value * mintingFee * collateralRatio / 10^6 / 10^6:
                mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
                mem[ceil32(return_data.size) + 164] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor7)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0
                mem[ceil32(return_data.size) + 328] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = address(sub_8088c318Address)
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(sub_8088c318Address)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6):
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 132] = address(sub_8088c318Address)
            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] + ((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6)
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor6)
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0] + ((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6), 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0] + ((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0] + ((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(sub_8088c318Address))
                call address(sub_8088c318Address).execute(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6, 10^18 * (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value - (msg.value * mintingFee / 10^6):
                    if userInfo[address(msg.sender)].field_0 > !(msg.value - (msg.value * mintingFee / 10^6)):
                        revert with 0, 17
                    userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + msg.value - (msg.value * mintingFee / 10^6)
                    if sub_2ebfa5bd > !(msg.value - (msg.value * mintingFee / 10^6)):
                        revert with 0, 17
                    sub_2ebfa5bd = sub_2ebfa5bd + msg.value - (msg.value * mintingFee / 10^6)
                if not address(treasuryAddress):
                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                if msg.value * mintingFee * collateralRatio / 10^6 / 10^6:
                    mem[(2 * ceil32(return_data.size)) + 296] = address(treasuryAddress)
                    mem[(2 * ceil32(return_data.size)) + 328] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
                    mem[(2 * ceil32(return_data.size)) + 260] = 68
                    mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 360] = 32
                    mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0
                    mem[(2 * ceil32(return_data.size)) + 492] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct Mask(32, 224, 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                            if not mem[(2 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
            else:
                mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(sub_8088c318Address))
                call address(sub_8088c318Address).execute(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6, 10^18 * (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value - (msg.value * mintingFee / 10^6):
                    if userInfo[address(msg.sender)].field_0 > !(msg.value - (msg.value * mintingFee / 10^6)):
                        revert with 0, 17
                    userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + msg.value - (msg.value * mintingFee / 10^6)
                    if sub_2ebfa5bd > !(msg.value - (msg.value * mintingFee / 10^6)):
                        revert with 0, 17
                    sub_2ebfa5bd = sub_2ebfa5bd + msg.value - (msg.value * mintingFee / 10^6)
                if not address(treasuryAddress):
                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                if not msg.value * mintingFee * collateralRatio / 10^6 / 10^6:
                    emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(treasuryAddress)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct Mask(32, 224, 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 430] = 32
                            mem[(4 * ceil32(return_data.size)) + 462] = 32
                            mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 426
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 430] = 32
                                mem[(4 * ceil32(return_data.size)) + 462] = 42
                                mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 426
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 426] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 458] = msg.value - (msg.value * mintingFee / 10^6)
                        mem[(4 * ceil32(return_data.size)) + 490] = msg.value
                        mem[(4 * ceil32(return_data.size)) + 522] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
                        emit Mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                                  mem[(4 * ceil32(return_data.size)) + 426 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
    stor1 = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x7e4831d3(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x458f5815(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x61d027b3(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x7622fdfb(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x7622fdfb(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 1
                        if unknown_0x7a991b6d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(sub_7a991b6d)
                        if uint32(call.func_hash) >> 224 != unknown_0x7adbf973(?????):
                            require unknown_0x7dc0d1d0(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return oracleAddress
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Pool::setOracle: invalid address'
                        oracleAddress = address(arg1)
                        emit OracleChanged(address(arg1));
                    else:
                        if unknown_0x61d027b3(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return address(treasuryAddress)
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        else:
                            require unknown_0x73b82edd(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 128
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            sub_0b68acac = arg1
                            sub_80fe2b75 = arg2
                            sub_9f1bf63e = arg3
                            sub_ea5f7abe = arg4
                            emit 0x38f57571: arg1, arg2, arg3, arg4
                if unknown_0x458f5815(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return redemptionFee
                if unknown_0x49bfcca1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_49bfcca1Address
                if unknown_0x4bfe4a57(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 9000
                if unknown_0x4ebf4418(?????) == uint32(call.func_hash) >> 224:
                    if not msg.value:
                        revert with 0, 'Pool::recollateralize: Invalid amount'
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xbcce7923: msg.value, msg.sender
                if uint32(call.func_hash) >> 224 != unknown_0x514330cb(?????):
                    require unknown_0x5a64ad95(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return mintingFee
                require not msg.value
                require ext_code.size(xTokenAddress)
                staticcall xTokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and collateralRatio > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_1be626c1:
                    if 0 >= ext_call.return_data[0] * collateralRatio / 10^6:
                        return -ext_call.return_data[0] * collateralRatio / 10^6, 1
                    if ext_call.return_data[0] * collateralRatio / 10^6 < 0:
                        revert with 0, 17
                    return ext_call.return_data[0] * collateralRatio / 10^6, 0
                if ext_call.return_data[0] < sub_1be626c1:
                    revert with 0, 17
                if ext_call.return_data[0] - sub_1be626c1 >= ext_call.return_data[0] * collateralRatio / 10^6:
                    return ext_call.return_data[0] - sub_1be626c1 - (ext_call.return_data[0] * collateralRatio / 10^6), 1
                if ext_call.return_data[0] * collateralRatio / 10^6 < ext_call.return_data[0] - sub_1be626c1:
                    revert with 0, 17
                return (ext_call.return_data[0] * collateralRatio / 10^6) - ext_call.return_data[0] + sub_1be626c1, 0
            if unknown_0x2ebfa5bd(?????) > uint32(call.func_hash) >> 224:
                if xToken() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return xTokenAddress
                if unknown_0x0b68acac(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_0b68acac
                if uint32(call.func_hash) >> 224 != setFees(uint256 arg1, uint256 arg2):
                    if unknown_0x10b0e7e8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_10b0e7e8
                    if uint32(call.func_hash) >> 224 != unknown_0x1959a002(?????):
                        require unknown_0x1be626c1(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_1be626c1
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
                require not msg.value
                require calldata.size - 4 >= 64
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg1 > 5000:
                    revert with 0, 'Pool::setFees:>MINTING_FEE_MAX'
                if arg2 > 9000:
                    revert with 0, 'Pool::setFees:>REDEMPTION_FEE_MAX'
                redemptionFee = arg2
                mintingFee = arg1
                emit FeesUpdated(arg1, arg2);
            else:
                if unknown_0x2ebfa5bd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_2ebfa5bd
                if unknown_0x370158ea(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= sub_1be626c1:
                        return collateralRatio, sub_868a2724, mintingFee, redemptionFee, bool(mintPaused), bool(redeemPaused), 0
                    if ext_call.return_data[0] < sub_1be626c1:
                        revert with 0, 17
                    return collateralRatio, 
                           sub_868a2724,
                           mintingFee,
                           redemptionFee,
                           bool(mintPaused),
                           bool(redeemPaused),
                           ext_call.return_data[0] - sub_1be626c1
                if unknown_0x37042142(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_37042142Address
                if unknown_0x38536275(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 > 10^6:
                        revert with 0, 'Pool::setMinCollateralRatio: >COLLATERAL_RATIO_MAX'
                    minCollateralRatio = arg1
                    emit 0x5982e574: arg1
                else:
                    if unknown_0x3e09a95f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Pool::setSwapStrategy: invalid address'
                        address(sub_8088c318Address) = address(arg1)
                        emit 0xf42b2d61: address(arg1)
                    else:
                        require unknown_0x4013124a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if sub_7a991b6d:
                            revert with 0, 'Pool::refreshCollateralRatio: Collateral Ratio has been paused'
                        if block.timestamp < sub_868a2724:
                            revert with 0, 17
                        if block.timestamp - sub_868a2724 < sub_ea5f7abe:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Pool::refreshCollateralRatio: Must wait for the refresh cooldown since last refresh'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.0xc0ce6238 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a8508d3e > !sub_9f1bf63e:
                            revert with 0, 17
                        if ext_call.return_data[0] > sub_a8508d3e + sub_9f1bf63e:
                            if collateralRatio <= sub_80fe2b75:
                                collateralRatio = 0
                            else:
                                if collateralRatio < sub_80fe2b75:
                                    revert with 0, 17
                                if collateralRatio - sub_80fe2b75 > minCollateralRatio:
                                    collateralRatio -= sub_80fe2b75
                                else:
                                    collateralRatio = minCollateralRatio
                        else:
                            if sub_a8508d3e < sub_9f1bf63e:
                                revert with 0, 17
                            if ext_call.return_data[0] < sub_a8508d3e - sub_9f1bf63e:
                                if collateralRatio > !sub_0b68acac:
                                    revert with 0, 17
                                if collateralRatio + sub_0b68acac >= 10^6:
                                    collateralRatio = 10^6
                                else:
                                    if collateralRatio > !sub_0b68acac:
                                        revert with 0, 17
                                    collateralRatio += sub_0b68acac
                        sub_868a2724 = block.timestamp
                        emit 0x43dd06cd: collateralRatio
        else:
            if unknown_0xb8192205(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9f1bf63e(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x7e4831d3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(mintPaused)
                    if unknown_0x8088c318(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return address(sub_8088c318Address)
                    if unknown_0x80fe2b75(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_80fe2b75
                    if unknown_0x84da2666(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return minCollateralRatio
                    if unknown_0x868a2724(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_868a2724
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                if unknown_0xa85ebc5c(?????) <= uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xa85ebc5c(?????):
                        if unknown_0xaaf5eb68(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 10^6
                        if unknown_0xb235d468(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(redeemPaused)
                        require unknown_0xb4eae1cb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return collateralRatio
                    require not msg.value
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= sub_1be626c1:
                        return 0
                    if ext_call.return_data[0] < sub_1be626c1:
                        revert with 0, 17
                    return (ext_call.return_data[0] - sub_1be626c1)
                if unknown_0x9f1bf63e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_9f1bf63e
                if uint32(call.func_hash) >> 224 != unknown_0xa0712d68(?????):
                    require unknown_0xa8508d3e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_a8508d3e
                require calldata.size - 4 >= 32
                if stor1 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor1 = 2
                if mintPaused:
                    revert with 0, 'Pool::mint: Minting is paused'
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.0x5f4370a5 with:
                        gas gas_remaining wei
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Pool::calcMint: Invalid YToken price'
                if 10^6 < collateralRatio:
                    revert with 0, 17
                if msg.value and -collateralRatio + 10^6 > -1 / msg.value:
                    revert with 0, 17
                if (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 and 10^18 > -1 / (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if msg.value and mintingFee > -1 / msg.value:
                    revert with 0, 17
                if msg.value * mintingFee and collateralRatio > -1 / msg.value * mintingFee:
                    revert with 0, 17
                if msg.value and mintingFee > -1 / msg.value:
                    revert with 0, 17
                if msg.value < msg.value * mintingFee / 10^6:
                    revert with 0, 17
                if msg.value - (msg.value * mintingFee / 10^6) < arg1:
                    revert with 0, 'Pool::mint: > slippage'
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
                   value msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 10^18 * (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 / ext_call.return_data[0] <= 0:
                    if msg.value - (msg.value * mintingFee / 10^6):
                        if userInfo[address(msg.sender)].field_0 > !(msg.value - (msg.value * mintingFee / 10^6)):
                            revert with 0, 17
                        userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + msg.value - (msg.value * mintingFee / 10^6)
                        if sub_2ebfa5bd > !(msg.value - (msg.value * mintingFee / 10^6)):
                            revert with 0, 17
                        sub_2ebfa5bd = sub_2ebfa5bd + msg.value - (msg.value * mintingFee / 10^6)
                    if not address(treasuryAddress):
                        revert with 0, 'Pool::transferToTreasury:Invalid address'
                    if msg.value * mintingFee * collateralRatio / 10^6 / 10^6:
                        mem[ceil32(return_data.size) + 164] = address(treasuryAddress)
                        mem[ceil32(return_data.size) + 196] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
                        mem[ceil32(return_data.size) + 128] = 68
                        mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor7)
                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 228] = 32
                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0
                        mem[ceil32(return_data.size) + 360] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                if not mem[ceil32(return_data.size) + 324]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
                else:
                    if (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 <= 0:
                        if msg.value - (msg.value * mintingFee / 10^6):
                            if userInfo[address(msg.sender)].field_0 > !(msg.value - (msg.value * mintingFee / 10^6)):
                                revert with 0, 17
                            userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + msg.value - (msg.value * mintingFee / 10^6)
                            if sub_2ebfa5bd > !(msg.value - (msg.value * mintingFee / 10^6)):
                                revert with 0, 17
                            sub_2ebfa5bd = sub_2ebfa5bd + msg.value - (msg.value * mintingFee / 10^6)
                        if not address(treasuryAddress):
                            revert with 0, 'Pool::transferToTreasury:Invalid address'
                        if msg.value * mintingFee * collateralRatio / 10^6 / 10^6:
                            mem[ceil32(return_data.size) + 164] = address(treasuryAddress)
                            mem[ceil32(return_data.size) + 196] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
                            mem[ceil32(return_data.size) + 128] = 68
                            mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor7)
                            mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 228] = 32
                            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0
                            mem[ceil32(return_data.size) + 360] = 0
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                    if not mem[ceil32(return_data.size) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
                    else:
                        mem[ceil32(return_data.size) + 132] = this.address
                        mem[ceil32(return_data.size) + 164] = address(sub_8088c318Address)
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(sub_8088c318Address)
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6):
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 164] = address(sub_8088c318Address)
                        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] + ((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6)
                        mem[(2 * ceil32(return_data.size)) + 128] = 68
                        mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor6)
                        mem[(2 * ceil32(return_data.size)) + 160 len 4] = approve(address arg1, uint256 arg2)
                        mem[(2 * ceil32(return_data.size)) + 228] = 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 292 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0] + ((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6), 0
                        mem[(2 * ceil32(return_data.size)) + 360] = 0
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0] + ((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0] + ((10^6 * msg.value) - (collateralRatio * msg.value) / 10^6), 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(sub_8088c318Address))
                            call address(sub_8088c318Address).execute(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6, 10^18 * (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.value - (msg.value * mintingFee / 10^6):
                                if userInfo[address(msg.sender)].field_0 > !(msg.value - (msg.value * mintingFee / 10^6)):
                                    revert with 0, 17
                                userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + msg.value - (msg.value * mintingFee / 10^6)
                                if sub_2ebfa5bd > !(msg.value - (msg.value * mintingFee / 10^6)):
                                    revert with 0, 17
                                sub_2ebfa5bd = sub_2ebfa5bd + msg.value - (msg.value * mintingFee / 10^6)
                            if not address(treasuryAddress):
                                revert with 0, 'Pool::transferToTreasury:Invalid address'
                            if msg.value * mintingFee * collateralRatio / 10^6 / 10^6:
                                mem[(2 * ceil32(return_data.size)) + 328] = address(treasuryAddress)
                                mem[(2 * ceil32(return_data.size)) + 360] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
                                mem[(2 * ceil32(return_data.size)) + 292] = 68
                                mem[(2 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                mem[(2 * ceil32(return_data.size)) + 392] = 32
                                mem[(2 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 456 len 96] = 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0
                                mem[(2 * ceil32(return_data.size)) + 524] = 0
                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                                   funct Mask(32, 224, 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(2 * ceil32(return_data.size)) + 488] == bool(mem[(2 * ceil32(return_data.size)) + 488])
                                        if not mem[(2 * ceil32(return_data.size)) + 488]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
                        else:
                            mem[(2 * ceil32(return_data.size)) + 292] = return_data.size
                            mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                                if not mem[(2 * ceil32(return_data.size)) + 324]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(sub_8088c318Address))
                            call address(sub_8088c318Address).execute(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6, 10^18 * (10^6 * msg.value) - (collateralRatio * msg.value) / 10^6 / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.value - (msg.value * mintingFee / 10^6):
                                if userInfo[address(msg.sender)].field_0 > !(msg.value - (msg.value * mintingFee / 10^6)):
                                    revert with 0, 17
                                userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + msg.value - (msg.value * mintingFee / 10^6)
                                if sub_2ebfa5bd > !(msg.value - (msg.value * mintingFee / 10^6)):
                                    revert with 0, 17
                                sub_2ebfa5bd = sub_2ebfa5bd + msg.value - (msg.value * mintingFee / 10^6)
                            if not address(treasuryAddress):
                                revert with 0, 'Pool::transferToTreasury:Invalid address'
                            if not msg.value * mintingFee * collateralRatio / 10^6 / 10^6:
                                emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(treasuryAddress)
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                                   funct Mask(32, 224, 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(treasuryAddress), msg.value * mintingFee * collateralRatio / 10^6 / 10^6, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    emit Mint(msg.sender, msg.value - (msg.value * mintingFee / 10^6), msg.value, msg.value * mintingFee * collateralRatio / 10^6 / 10^6);
                                else:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 462] = 32
                                        mem[(4 * ceil32(return_data.size)) + 494] = 32
                                        mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 458
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                            mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 462] = 32
                                            mem[(4 * ceil32(return_data.size)) + 494] = 42
                                            mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                                            mem[(4 * ceil32(return_data.size)) + 558] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 458
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[(4 * ceil32(return_data.size)) + 458] = msg.sender
                                    mem[(4 * ceil32(return_data.size)) + 490] = msg.value - (msg.value * mintingFee / 10^6)
                                    mem[(4 * ceil32(return_data.size)) + 522] = msg.value
                                    mem[(4 * ceil32(return_data.size)) + 554] = msg.value * mintingFee * collateralRatio / 10^6 / 10^6
                                    emit Mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                                              mem[(4 * ceil32(return_data.size)) + 458 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
                stor1 = 1
            else:
                if unknown_0xe969355f(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf0f44260(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0xf0f44260(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if address(treasuryAddress):
                                revert with 0, 'Pool::setTreasury: not allowed'
                            address(treasuryAddress) = address(arg1)
                            emit TreasurySet(address(arg1));
                        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(arg1):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(arg1)
                            emit OwnershipTransferred(owner, address(arg1));
                        if uint32(call.func_hash) >> 224 != unknown_0xf84dfc66(?????):
                            require unknown_0xf8c32124(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return 5000
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.0x5f4370a5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Pool::calcMint: Invalid YToken price'
                        if 10^6 < collateralRatio:
                            revert with 0, 17
                        if arg1 and -collateralRatio + 10^6 > -1 / arg1:
                            revert with 0, 17
                        if (10^6 * arg1) - (collateralRatio * arg1) / 10^6 and 10^18 > -1 / (10^6 * arg1) - (collateralRatio * arg1) / 10^6:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if arg1 and mintingFee > -1 / arg1:
                            revert with 0, 17
                        if arg1 * mintingFee and collateralRatio > -1 / arg1 * mintingFee:
                            revert with 0, 17
                        if arg1 and mintingFee > -1 / arg1:
                            revert with 0, 17
                        if arg1 < arg1 * mintingFee / 10^6:
                            revert with 0, 17
                        return arg1 - (arg1 * mintingFee / 10^6), 
                               10^18 * (10^6 * arg1) - (collateralRatio * arg1) / 10^6 / ext_call.return_data[0],
                               arg1 * mintingFee * collateralRatio / 10^6 / 10^6,
                               (10^6 * arg1) - (collateralRatio * arg1) / 10^6
                    if uint32(call.func_hash) >> 224 != unknown_0xe969355f(?????):
                        if unknown_0xea5f7abe(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_ea5f7abe
                        require unknown_0xed21b975(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.0x6e16399c with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.0x5f4370a5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Pool::calcRedeem: Invalid YToken price'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Pool::calcRedeem: Invalid yTokenTWAP'
                        if arg1 and collateralRatio > -1 / arg1:
                            revert with 0, 17
                        if collateralRatio >= 10^6:
                            if not collateralRatio:
                                return 0, 0, 0, 0, arg1 * collateralRatio / 10^6
                            if 10^6 < redemptionFee:
                                revert with 0, 17
                            if arg1 and collateralRatio > -1 / arg1:
                                revert with 0, 17
                            if arg1 * collateralRatio and -redemptionFee + 10^6 > -1 / arg1 * collateralRatio:
                                revert with 0, 17
                            if arg1 and collateralRatio > -1 / arg1:
                                revert with 0, 17
                            if arg1 * collateralRatio and redemptionFee > -1 / arg1 * collateralRatio:
                                revert with 0, 17
                            return (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6, 
                                   0,
                                   0,
                                   arg1 * collateralRatio * redemptionFee / 10^6 / 10^6,
                                   arg1 * collateralRatio / 10^6
                        if 10^6 < redemptionFee:
                            revert with 0, 17
                        if 10^6 < collateralRatio:
                            revert with 0, 17
                        if arg1 and -collateralRatio + 10^6 > -1 / arg1:
                            revert with 0, 17
                        if (10^6 * arg1) - (collateralRatio * arg1) and -redemptionFee + 10^6 > -1 / (10^6 * arg1) - (collateralRatio * arg1):
                            revert with 0, 17
                        if (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1) and 10^18 > -1 / (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 10^6 < redemptionFee:
                            revert with 0, 17
                        if 10^6 < collateralRatio:
                            revert with 0, 17
                        if arg1 and -collateralRatio + 10^6 > -1 / arg1:
                            revert with 0, 17
                        if (10^6 * arg1) - (collateralRatio * arg1) and -redemptionFee + 10^6 > -1 / (10^6 * arg1) - (collateralRatio * arg1):
                            revert with 0, 17
                        if (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1) and 10^18 > -1 / (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not collateralRatio:
                            return 0, 
                                   (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0],
                                   (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0],
                                   0,
                                   arg1 * collateralRatio / 10^6
                        if 10^6 < redemptionFee:
                            revert with 0, 17
                        if arg1 and collateralRatio > -1 / arg1:
                            revert with 0, 17
                        if arg1 * collateralRatio and -redemptionFee + 10^6 > -1 / arg1 * collateralRatio:
                            revert with 0, 17
                        if arg1 and collateralRatio > -1 / arg1:
                            revert with 0, 17
                        if arg1 * collateralRatio and redemptionFee > -1 / arg1 * collateralRatio:
                            revert with 0, 17
                        return (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6, 
                               (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0],
                               (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0],
                               arg1 * collateralRatio * redemptionFee / 10^6 / 10^6,
                               arg1 * collateralRatio / 10^6
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(xTokenAddress)
                    staticcall xTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and collateralRatio > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 132] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= sub_1be626c1:
                        if 0 < ext_call.return_data[0] * collateralRatio / 10^6:
                            if ext_call.return_data[0] * collateralRatio / 10^6 < 0:
                                revert with 0, 17
                        else:
                            if -ext_call.return_data[0] * collateralRatio / 10^6 > 0:
                                if arg1 > -ext_call.return_data[0] * collateralRatio / 10^6:
                                    revert with 0, 'Pool::reduceExcessCollateral: The amount is too large'
                                if not address(treasuryAddress):
                                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                                if arg1:
                                    mem[(2 * ceil32(return_data.size)) + 164] = address(treasuryAddress)
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[(2 * ceil32(return_data.size)) + 128] = 68
                                    mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor7)
                                    mem[(2 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(2 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0
                                    mem[(2 * ceil32(return_data.size)) + 360] = 0
                                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                                            if not mem[(2 * ceil32(return_data.size)) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ext_call.return_data[0] < sub_1be626c1:
                            revert with 0, 17
                        if ext_call.return_data[0] - sub_1be626c1 < ext_call.return_data[0] * collateralRatio / 10^6:
                            if ext_call.return_data[0] * collateralRatio / 10^6 < ext_call.return_data[0] - sub_1be626c1:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[0] - sub_1be626c1 - (ext_call.return_data[0] * collateralRatio / 10^6) > 0:
                                if arg1 > ext_call.return_data[0] - sub_1be626c1 - (ext_call.return_data[0] * collateralRatio / 10^6):
                                    revert with 0, 'Pool::reduceExcessCollateral: The amount is too large'
                                if not address(treasuryAddress):
                                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                                if arg1:
                                    mem[(2 * ceil32(return_data.size)) + 164] = address(treasuryAddress)
                                    mem[(2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[(2 * ceil32(return_data.size)) + 128] = 68
                                    mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor7)
                                    mem[(2 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(2 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0
                                    mem[(2 * ceil32(return_data.size)) + 360] = 0
                                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                                            if not mem[(2 * ceil32(return_data.size)) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xb8192205(?????):
                        if unknown_0xc29118fc(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == bool(arg1)
                            require arg2 == bool(arg2)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mintPaused = uint8(bool(arg1))
                            Mask(248, 0, stor12.field_8) = Mask(248, 0, bool(arg2))
                            Mask(240, 0, stor12.field_16) = Mask(240, 16, bool(arg1)) >> 16
                            emit 0xe4e27596: bool(arg1), bool(arg2)
                        else:
                            if unknown_0xc97b4960(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if arg1 > 300000:
                                    revert with 0, 'Pool::setYTokenSlippage: yTokenSlippage cannot be more than 30%'
                                sub_10b0e7e8 = arg1
                                emit 0xd86c2dfa: arg1
                            else:
                                if unknown_0xd3001386(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return sub_d3001386
                                if unknown_0xd5d0cb16(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require arg1 == bool(arg1)
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    if bool(arg1) != bool(sub_7a991b6d):
                                        sub_7a991b6d = uint8(bool(arg1))
                                        emit 0xe9b03f52: bool(arg1)
                                else:
                                    require unknown_0xe5225381(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    if stor1 == 2:
                                        revert with 0, 'ReentrancyGuard: reentrant call'
                                    stor1 = 2
                                    if block.number <= userInfo[msg.sender].field_768:
                                        revert with 0, 'Pool::collect: <minimum_delay'
                                    if not userInfo[address(msg.sender)].field_0:
                                        if not userInfo[address(msg.sender)].field_256:
                                            if userInfo[address(msg.sender)].field_512:
                                                userInfo[address(msg.sender)].field_512 = 0
                                                if sub_1be626c1 < userInfo[address(msg.sender)].field_512:
                                                    revert with 0, 17
                                                sub_1be626c1 -= userInfo[address(msg.sender)].field_512
                                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args userInfo[address(msg.sender)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < userInfo[address(msg.sender)].field_512:
                                                    revert with 0, 'Address: insufficient balance'
                                                call msg.sender with:
                                                   value userInfo[address(msg.sender)].field_512 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            userInfo[address(msg.sender)].field_256 = 0
                                            if sub_d3001386 < userInfo[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            sub_d3001386 -= userInfo[address(msg.sender)].field_256
                                            if not userInfo[address(msg.sender)].field_512:
                                                require ext_code.size(sub_37042142Address)
                                                call sub_37042142Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, userInfo[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                userInfo[address(msg.sender)].field_512 = 0
                                                if sub_1be626c1 < userInfo[address(msg.sender)].field_512:
                                                    revert with 0, 17
                                                sub_1be626c1 -= userInfo[address(msg.sender)].field_512
                                                require ext_code.size(sub_37042142Address)
                                                call sub_37042142Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, userInfo[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args userInfo[address(msg.sender)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < userInfo[address(msg.sender)].field_512:
                                                    revert with 0, 'Address: insufficient balance'
                                                call msg.sender with:
                                                   value userInfo[address(msg.sender)].field_512 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            ('bool', 'ext_call.success')
                                    else:
                                        userInfo[address(msg.sender)].field_0 = 0
                                        if sub_2ebfa5bd < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        sub_2ebfa5bd -= userInfo[address(msg.sender)].field_0
                                        if not userInfo[address(msg.sender)].field_256:
                                            if not userInfo[address(msg.sender)].field_512:
                                                require ext_code.size(xTokenAddress)
                                                call xTokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, userInfo[address(msg.sender)].field_0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                userInfo[address(msg.sender)].field_512 = 0
                                                if sub_1be626c1 < userInfo[address(msg.sender)].field_512:
                                                    revert with 0, 17
                                                sub_1be626c1 -= userInfo[address(msg.sender)].field_512
                                                require ext_code.size(xTokenAddress)
                                                call xTokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, userInfo[address(msg.sender)].field_0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args userInfo[address(msg.sender)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < userInfo[address(msg.sender)].field_512:
                                                    revert with 0, 'Address: insufficient balance'
                                                call msg.sender with:
                                                   value userInfo[address(msg.sender)].field_512 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            userInfo[address(msg.sender)].field_256 = 0
                                            if sub_d3001386 < userInfo[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            sub_d3001386 -= userInfo[address(msg.sender)].field_256
                                            if not userInfo[address(msg.sender)].field_512:
                                                require ext_code.size(xTokenAddress)
                                                call xTokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, userInfo[address(msg.sender)].field_0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(sub_37042142Address)
                                                call sub_37042142Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, userInfo[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                userInfo[address(msg.sender)].field_512 = 0
                                                if sub_1be626c1 < userInfo[address(msg.sender)].field_512:
                                                    revert with 0, 17
                                                sub_1be626c1 -= userInfo[address(msg.sender)].field_512
                                                require ext_code.size(xTokenAddress)
                                                call xTokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, userInfo[address(msg.sender)].field_0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(sub_37042142Address)
                                                call sub_37042142Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, userInfo[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args userInfo[address(msg.sender)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < userInfo[address(msg.sender)].field_512:
                                                    revert with 0, 'Address: insufficient balance'
                                                call msg.sender with:
                                                   value userInfo[address(msg.sender)].field_512 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        ('bool', 'ext_call.success')
                                    stor1 = 1
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        if stor1 == 2:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor1 = 2
                        if redeemPaused:
                            revert with 0, 'Pool::redeem: Redeeming is paused'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.0x6e16399c with:
                                gas gas_remaining wei
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.0x5f4370a5 with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Pool::calcRedeem: Invalid YToken price'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Pool::calcRedeem: Invalid yTokenTWAP'
                        if arg1 and collateralRatio > -1 / arg1:
                            revert with 0, 17
                        if collateralRatio >= 10^6:
                            if not collateralRatio:
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= sub_1be626c1:
                                    if arg1 * collateralRatio / 10^6 > 0:
                                        revert with 0, 'Pool::redeem: > ETH balance'
                                else:
                                    if ext_call.return_data[0] < sub_1be626c1:
                                        revert with 0, 17
                                    if arg1 * collateralRatio / 10^6 > ext_call.return_data[0] - sub_1be626c1:
                                        revert with 0, 'Pool::redeem: > ETH balance'
                                if sub_10b0e7e8 != 10^6:
                                    if False and sub_10b0e7e8 > 0:
                                        revert with 0, 17
                                if arg3 > 0:
                                    revert with 0, 'Pool::redeem: >slippage'
                                if arg2 > 0:
                                    revert with 0, 'Pool::redeem: >slippage'
                                userInfo[address(msg.sender)].field_768 = block.number
                                require ext_code.size(xTokenAddress)
                                call xTokenAddress.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(treasuryAddress):
                                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                                emit Redeem(msg.sender, arg1, 0, 0, 0);
                            else:
                                if 10^6 < redemptionFee:
                                    revert with 0, 17
                                if arg1 and collateralRatio > -1 / arg1:
                                    revert with 0, 17
                                if arg1 * collateralRatio and -redemptionFee + 10^6 > -1 / arg1 * collateralRatio:
                                    revert with 0, 17
                                if arg1 and collateralRatio > -1 / arg1:
                                    revert with 0, 17
                                if arg1 * collateralRatio and redemptionFee > -1 / arg1 * collateralRatio:
                                    revert with 0, 17
                                mem[(2 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= sub_1be626c1:
                                    if arg1 * collateralRatio / 10^6 > 0:
                                        revert with 0, 'Pool::redeem: > ETH balance'
                                else:
                                    if ext_call.return_data[0] < sub_1be626c1:
                                        revert with 0, 17
                                    if arg1 * collateralRatio / 10^6 > ext_call.return_data[0] - sub_1be626c1:
                                        revert with 0, 'Pool::redeem: > ETH balance'
                                if sub_10b0e7e8 != 10^6:
                                    if False and sub_10b0e7e8 > 0:
                                        revert with 0, 17
                                if arg3 > (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6:
                                    revert with 0, 'Pool::redeem: >slippage'
                                if arg2 > 0:
                                    revert with 0, 'Pool::redeem: >slippage'
                                if (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6:
                                    if userInfo[address(msg.sender)].field_512 > !((10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6):
                                        revert with 0, 17
                                    userInfo[address(msg.sender)].field_512 += (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6
                                    if sub_1be626c1 > !((10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6):
                                        revert with 0, 17
                                    sub_1be626c1 += (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6
                                userInfo[address(msg.sender)].field_768 = block.number
                                require ext_code.size(xTokenAddress)
                                call xTokenAddress.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(treasuryAddress):
                                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                                if arg1 * collateralRatio * redemptionFee / 10^6 / 10^6:
                                    mem[(4 * ceil32(return_data.size)) + 164] = address(treasuryAddress)
                                    mem[(4 * ceil32(return_data.size)) + 196] = arg1 * collateralRatio * redemptionFee / 10^6 / 10^6
                                    mem[(4 * ceil32(return_data.size)) + 128] = 68
                                    mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor7)
                                    mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                    mem[(4 * ceil32(return_data.size)) + 228] = 32
                                    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(4 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1 * collateralRatio * redemptionFee / 10^6 / 10^6, 0
                                    mem[(4 * ceil32(return_data.size)) + 360] = 0
                                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1 * collateralRatio * redemptionFee / 10^6 / 10^6, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1 * collateralRatio * redemptionFee / 10^6 / 10^6, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                            if not mem[(4 * ceil32(return_data.size)) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit Redeem(msg.sender, arg1, (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6, 0, arg1 * collateralRatio * redemptionFee / 10^6 / 10^6);
                        else:
                            if 10^6 < redemptionFee:
                                revert with 0, 17
                            if 10^6 < collateralRatio:
                                revert with 0, 17
                            if arg1 and -collateralRatio + 10^6 > -1 / arg1:
                                revert with 0, 17
                            if (10^6 * arg1) - (collateralRatio * arg1) and -redemptionFee + 10^6 > -1 / (10^6 * arg1) - (collateralRatio * arg1):
                                revert with 0, 17
                            if (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1) and 10^18 > -1 / (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if 10^6 < redemptionFee:
                                revert with 0, 17
                            if 10^6 < collateralRatio:
                                revert with 0, 17
                            if arg1 and -collateralRatio + 10^6 > -1 / arg1:
                                revert with 0, 17
                            if (10^6 * arg1) - (collateralRatio * arg1) and -redemptionFee + 10^6 > -1 / (10^6 * arg1) - (collateralRatio * arg1):
                                revert with 0, 17
                            if (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1) and 10^18 > -1 / (10^12 * arg1) - (10^6 * redemptionFee * arg1) - (10^6 * collateralRatio * arg1) + (redemptionFee * collateralRatio * arg1):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if not collateralRatio:
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= sub_1be626c1:
                                    if arg1 * collateralRatio / 10^6 > 0:
                                        revert with 0, 'Pool::redeem: > ETH balance'
                                else:
                                    if ext_call.return_data[0] < sub_1be626c1:
                                        revert with 0, 17
                                    if arg1 * collateralRatio / 10^6 > ext_call.return_data[0] - sub_1be626c1:
                                        revert with 0, 'Pool::redeem: > ETH balance'
                                if sub_10b0e7e8 != 10^6:
                                    if (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0] < (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0] and sub_10b0e7e8 > -1 / (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if 0 > (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0] * sub_10b0e7e8 / 10^6:
                                        revert with 0, 'Pool::checkPriceFluctuation: > yTokenSlippage'
                                if arg3 > 0:
                                    revert with 0, 'Pool::redeem: >slippage'
                                if arg2 > (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]:
                                    revert with 0, 'Pool::redeem: >slippage'
                                if (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]:
                                    if userInfo[address(msg.sender)].field_256 > !((1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]):
                                        revert with 0, 17
                                    userInfo[address(msg.sender)].field_256 += (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]
                                    if sub_d3001386 > !((1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]):
                                        revert with 0, 17
                                    sub_d3001386 += (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]
                                userInfo[address(msg.sender)].field_768 = block.number
                                require ext_code.size(xTokenAddress)
                                call xTokenAddress.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(treasuryAddress):
                                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                                emit Redeem(msg.sender, arg1, 0, (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0], 0);
                            else:
                                if 10^6 < redemptionFee:
                                    revert with 0, 17
                                if arg1 and collateralRatio > -1 / arg1:
                                    revert with 0, 17
                                if arg1 * collateralRatio and -redemptionFee + 10^6 > -1 / arg1 * collateralRatio:
                                    revert with 0, 17
                                if arg1 and collateralRatio > -1 / arg1:
                                    revert with 0, 17
                                if arg1 * collateralRatio and redemptionFee > -1 / arg1 * collateralRatio:
                                    revert with 0, 17
                                mem[(2 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= sub_1be626c1:
                                    if arg1 * collateralRatio / 10^6 > 0:
                                        revert with 0, 'Pool::redeem: > ETH balance'
                                else:
                                    if ext_call.return_data[0] < sub_1be626c1:
                                        revert with 0, 17
                                    if arg1 * collateralRatio / 10^6 > ext_call.return_data[0] - sub_1be626c1:
                                        revert with 0, 'Pool::redeem: > ETH balance'
                                if sub_10b0e7e8 != 10^6:
                                    if (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0] < (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0] and sub_10b0e7e8 > -1 / (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if 0 > (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0] * sub_10b0e7e8 / 10^6:
                                        revert with 0, 'Pool::checkPriceFluctuation: > yTokenSlippage'
                                if arg3 > (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6:
                                    revert with 0, 'Pool::redeem: >slippage'
                                if arg2 > (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]:
                                    revert with 0, 'Pool::redeem: >slippage'
                                if (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6:
                                    if userInfo[address(msg.sender)].field_512 > !((10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6):
                                        revert with 0, 17
                                    userInfo[address(msg.sender)].field_512 += (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6
                                    if sub_1be626c1 > !((10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6):
                                        revert with 0, 17
                                    sub_1be626c1 += (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6
                                if (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]:
                                    if userInfo[address(msg.sender)].field_256 > !((1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]):
                                        revert with 0, 17
                                    userInfo[address(msg.sender)].field_256 += (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]
                                    if sub_d3001386 > !((1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]):
                                        revert with 0, 17
                                    sub_d3001386 += (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0]
                                userInfo[address(msg.sender)].field_768 = block.number
                                require ext_code.size(xTokenAddress)
                                call xTokenAddress.0x79cc6790 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(treasuryAddress):
                                    revert with 0, 'Pool::transferToTreasury:Invalid address'
                                if arg1 * collateralRatio * redemptionFee / 10^6 / 10^6:
                                    mem[(4 * ceil32(return_data.size)) + 164] = address(treasuryAddress)
                                    mem[(4 * ceil32(return_data.size)) + 196] = arg1 * collateralRatio * redemptionFee / 10^6 / 10^6
                                    mem[(4 * ceil32(return_data.size)) + 128] = 68
                                    mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor7)
                                    mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                    mem[(4 * ceil32(return_data.size)) + 228] = 32
                                    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(4 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1 * collateralRatio * redemptionFee / 10^6 / 10^6, 0
                                    mem[(4 * ceil32(return_data.size)) + 360] = 0
                                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1 * collateralRatio * redemptionFee / 10^6 / 10^6, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), arg1 * collateralRatio * redemptionFee / 10^6 / 10^6, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                            if not mem[(4 * ceil32(return_data.size)) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit Redeem(msg.sender, arg1, (10^6 * arg1 * collateralRatio) - (redemptionFee * arg1 * collateralRatio) / 10^6 / 10^6, (1000000000000 * 10^18 * arg1) - (1000000 * 10^18 * redemptionFee * arg1) - (1000000 * 10^18 * collateralRatio * arg1) + (10^18 * redemptionFee * collateralRatio * arg1) / 10^6 / 10^6 / ext_call.return_data[0], arg1 * collateralRatio * redemptionFee / 10^6 / 10^6);
                        stor1 = 1
}



}
