contract main {




// =====================  Runtime code  =====================


const FARM_DYNAMIC_TIMER_DEDUCT_BP_TIER3 = (3 * 3600)

const FARM_DYNAMIC_TIMER_DEDUCT_BP_TIER4 = (6 * 3600)

const FARM_DYNAMIC_BALANCE_TIER2 = 40 * 10^18

const FARM_DYNAMIC_BALANCE_TIER1 = 10 * 10^18

const FARM_DYNAMIC_BALANCE_TIER3 = 100 * 10^18

const FARM_DYNAMIC_TIMER_DEDUCT_BP_TIER1 = 2160

const FARM_DYNAMIC_BALANCE_TIER4 = 200 * 10^18

const FARM_DYNAMIC_TIMER_DEDUCT_BP_TIER2 = 5400


address owner;
address holderTokenAddress;

function holderToken() payable {
    return holderTokenAddress
}

function owner() payable {
    return owner
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

function setHolderToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    holderTokenAddress = arg1
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

function getExactFarmHarvestIntervalBpForSpnHolder(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(holderTokenAddress)
    staticcall holderTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 10 * 10^18:
        return arg1
    if ext_call.return_data[0] < 40 * 10^18:
        if arg1 < 2160:
            revert with 'NH{q', 17
        return (arg1 - 2160)
    if ext_call.return_data[0] < 100 * 10^18:
        if arg1 < 5400:
            revert with 'NH{q', 17
        return (arg1 - 5400)
    if ext_call.return_data[0] < 200 * 10^18:
        if arg1 < 3 * 3600:
            revert with 'NH{q', 17
        return (arg1 - (3 * 3600))
    if arg1 < 6 * 3600:
        revert with 'NH{q', 17
    if arg1 - (6 * 3600) > -2:
        revert with 'NH{q', 17
    return (arg1 - 21599)
}



}
