contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address sub_b16ce460Address;
address dollarAddress;
address treasuryAddress;
uint256 target_collateral_ratio;
uint256 effective_collateral_ratio;
uint256 sub_6ae74488;
uint256 refresh_cooldown;
uint256 sub_ac4f843e;
uint256 price_target;
uint256 price_band;
uint8 stor11;
uint8 stor11; offset 8
uint256 stor11; offset 8
uint256 stor11;

function price_band() payable {
    return price_band
}

function sub_2988b66d(?) payable {
    return bool(uint8(stor11.field_8))
}

function price_target() payable {
    return price_target
}

function target_collateral_ratio() payable {
    return target_collateral_ratio
}

function dollar() payable {
    return dollarAddress
}

function treasury() payable {
    return treasuryAddress
}

function sub_6ae74488(?) payable {
    return sub_6ae74488
}

function collateral_ratio_paused() payable {
    return bool(uint8(stor11.field_0))
}

function owner() payable {
    return owner
}

function sub_ac4f843e(?) payable {
    return sub_ac4f843e
}

function effective_collateral_ratio() payable {
    return effective_collateral_ratio
}

function sub_b16ce460(?) payable {
    return sub_b16ce460Address
}

function refresh_cooldown() payable {
    return refresh_cooldown
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

function setPriceBand(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price_band = arg1
}

function setRatioStep(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ac4f843e = arg1
}

function setPriceTarget(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price_target = arg1
}

function setRefreshCooldown(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    refresh_cooldown = arg1
}

function toggleEffectiveCollateralRatio() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor11.field_8) = Mask(248, 0, not uint8(stor11.field_8))
}

function toggleCollateralRatio() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor11.field_0) = not uint8(stor11.field_0) or Mask(248, 8, uint256(stor11.field_0))
}

function setDollar(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    dollarAddress = arg1
}

function setOracleDollar(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_b16ce460Address = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
}

function reset(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^6:
        revert with 0, 'invalidRatio'
    if arg2 > 10^6:
        revert with 0, 'invalidRatio'
    target_collateral_ratio = arg1
    effective_collateral_ratio = arg2
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

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'invalidAddress'
    dollarAddress = arg2
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function calcEffectiveCollateralRatio() payable {
    if not uint8(stor11.field_8):
        return target_collateral_ratio
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xd2d97b06 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x95227705 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] <= 10^6:
            return (10^6 * ext_call.return_data[0] / ext_call.return_data[0])
    return 10^6
}

function refreshCollateralRatio() payable {
    if uint8(stor11.field_0):
        revert with 0, 'Collateral Ratio has been paused'
    if block.timestamp < sub_6ae74488:
        revert with 0, 17
    if block.timestamp - sub_6ae74488 < refresh_cooldown:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Must wait for the refresh cooldown since last refresh'
    require ext_code.size(sub_b16ce460Address)
    staticcall sub_b16ce460Address.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if price_target > !price_band:
        revert with 0, 17
    if ext_call.return_data[0] > price_target + price_band:
        if target_collateral_ratio <= sub_ac4f843e:
            target_collateral_ratio = 0
        else:
            if target_collateral_ratio < sub_ac4f843e:
                revert with 0, 17
            target_collateral_ratio -= sub_ac4f843e
    else:
        if price_target < price_band:
            revert with 0, 17
        if ext_call.return_data[0] < price_target - price_band:
            if target_collateral_ratio > !sub_ac4f843e:
                revert with 0, 17
            if target_collateral_ratio + sub_ac4f843e >= 10^6:
                target_collateral_ratio = 10^6
            else:
                if target_collateral_ratio > !sub_ac4f843e:
                    revert with 0, 17
                target_collateral_ratio += sub_ac4f843e
    if not uint8(stor11.field_8):
        effective_collateral_ratio = target_collateral_ratio
    else:
        if not uint8(stor11.field_8):
            effective_collateral_ratio = target_collateral_ratio
        else:
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0xd2d97b06 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x95227705 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                effective_collateral_ratio = 10^6
            else:
                if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] <= 10^6:
                    effective_collateral_ratio = 10^6 * ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    effective_collateral_ratio = 10^6
    sub_6ae74488 = block.timestamp
}



}
