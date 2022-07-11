contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const vestingDuration = (4320 * 24 * 3600)

const vestingStart = (457821 * 3600)

const sub_889646ea(?) = 3000000 * 10^18

const allocation = 3000000 * 10^18

const sub_cfd11c4f(?) = (457821 * 3600)

const VESTING_DURATION = (4320 * 24 * 3600)


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address sub_02c7dba8Address;
uint256 claimedAmount;

function sub_02c7dba8(?) payable {
    return sub_02c7dba8Address
}

function owner() payable {
    return owner
}

function claimedAmount() payable {
    return claimedAmount
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function currentBalance() payable {
    require ext_code.size(sub_02c7dba8Address)
    staticcall sub_02c7dba8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function vestedBalance() payable {
    if 457821 * 3600 >= block.timestamp:
        return 0
    if block.timestamp > 462141 * 3600:
        return 3000000 * 10^18
    if block.timestamp < 457821 * 3600:
        revert with 'NH{q', 17
    if block.timestamp - (457821 * 3600) > 0x6729633382f8d2372db6f1b9a1a62381e508240e8a26:
        revert with 'NH{q', 17
    return ((3000000 * 10^18 * block.timestamp) - (381517500 * 10^18 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_168):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_168):
        uint16(stor0.field_160) = 257
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fund::constructor: Invalid address'
    sub_02c7dba8Address = arg1
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function claimable() payable {
    if 457821 * 3600 >= block.timestamp:
        if 0 < claimedAmount:
            revert with 'NH{q', 17
        return -claimedAmount
    if block.timestamp > 462141 * 3600:
        if 3000000 * 10^18 < claimedAmount:
            revert with 'NH{q', 17
        return (-claimedAmount + 3000000 * 10^18)
    if block.timestamp < 457821 * 3600:
        revert with 'NH{q', 17
    if block.timestamp - (457821 * 3600) > 0x6729633382f8d2372db6f1b9a1a62381e508240e8a26:
        revert with 'NH{q', 17
    if (3000000 * 10^18 * block.timestamp) - (381517500 * 10^18 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600 < claimedAmount:
        revert with 'NH{q', 17
    return (((3000000 * 10^18 * block.timestamp) - (381517500 * 10^18 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600) - claimedAmount)
}

function sub_8a3eabcd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'balance is 0'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
