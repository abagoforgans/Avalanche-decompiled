contract main {




// =====================  Runtime code  =====================


const sub_4bfe4a57(?) = (25 * 3600)

const sub_a12a580f(?) = 150000

const sub_ceb54fb2(?) = 800000

const sub_f757c758(?) = 150000

const sub_f8c32124(?) = 50000


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address treasuryAddress;
uint256 idleCollateralUtilizationRatio;
uint256 reservedCollateralThreshold;
uint256 redemption_fee;
uint256 minting_fee;
uint256 excess_collateral_safety_margin;

function treasury() payable {
    return treasuryAddress
}

function idleCollateralUtilizationRatio() payable {
    return idleCollateralUtilizationRatio
}

function owner() payable {
    return owner
}

function reservedCollateralThreshold() payable {
    return reservedCollateralThreshold
}

function minting_fee() payable {
    return minting_fee
}

function redemption_fee() payable {
    return redemption_fee
}

function excess_collateral_safety_margin() payable {
    return excess_collateral_safety_margin
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

function setMintingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 50000:
        revert with 0, '>MINTING_FEE_MAX'
    minting_fee = arg1
}

function setRedemptionFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 25 * 3600:
        revert with 0, '>REDEMPTION_FEE_MAX'
    redemption_fee = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
}

function setReservedCollateralThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 150000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '<RESERVE_COLLATERAL_THRESHOLD_MIN'
    reservedCollateralThreshold = arg1
}

function setExcessCollateralSafetyMargin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 150000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '<EXCESS_COLLATERAL_SAFETY_MARGIN_MIN'
    excess_collateral_safety_margin = arg1
}

function setIdleCollateralUtilizationRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 800000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '>IDLE_COLLATERAL_UTILIZATION_RATION_MAX'
    idleCollateralUtilizationRatio = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 50000:
        revert with 0, '>MINTING_FEE_MAX'
    minting_fee = arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 25 * 3600:
        revert with 0, '>REDEMPTION_FEE_MAX'
    redemption_fee = arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 < 150000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '<EXCESS_COLLATERAL_SAFETY_MARGIN_MIN'
    excess_collateral_safety_margin = arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg5 > 800000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '>IDLE_COLLATERAL_UTILIZATION_RATION_MAX'
    idleCollateralUtilizationRatio = arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg6 < 150000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '<RESERVE_COLLATERAL_THRESHOLD_MIN'
    reservedCollateralThreshold = arg6
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}



}
