contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address sub_5599bd9aAddress; offset 16
address rewarderAddress;
address poolAddress;

function pool() payable {
    return poolAddress
}

function sub_5599bd9a(?) payable {
    return sub_5599bd9aAddress
}

function rewarder() payable {
    return rewarderAddress
}

function _fallback() payable {
    revert
}

function setPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if poolAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SnowyReserve::setPool: NOT_ALLOWED'
    poolAddress = arg1
    return 1
}

function setRewarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewarderAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SnowyReserve::setRewarder: NOT_ALLOWED'
    rewarderAddress = arg1
    return 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SnowyReserve::constructor: Invalid address'
    sub_5599bd9aAddress = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
