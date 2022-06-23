contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint8 stor101; offset 160
address stor101;
uint256 stor101;
mapping of uint8 stor102;
mapping of uint8 stor103;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_fb9fc77f(?) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(128, 128, arg1)
    if not stor103[Mask(128, 128, arg1)]:
        return uint8(stor101.field_160)
    return stor102[Mask(128, 128, arg1)]
}

function setSystemAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Address cannot be null'
    address(stor101.field_0) = arg1
}

function sub_0ad09632(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) > 10:
        revert with 0, 'Fee cannot be > 10'
    uint8(stor101.field_160) = uint8(arg1)
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

function sub_d96d1fd7(?) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(128, 128, arg1)
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg2) > 10:
        revert with 0, 'Fee cannot be > 10'
    stor103[Mask(128, 128, arg1)] = 1
    stor102[Mask(128, 128, arg1)] = uint8(arg2)
    emit 0x890a796a: uint8(arg2), Mask(128, 128, arg1)
}

function initialize() {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        Mask(168, 0, stor101.field_0) = 0x526549316d976ca29406596f13cd27148a1703c4d
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    Mask(168, 0, stor101.field_0) = 0x526549316d976ca29406596f13cd27148a1703c4d
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
}

function sub_374834bf(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == Mask(128, 128, arg1)
    require arg2 == Mask(128, 128, arg2)
    require arg3 == address(arg3)
    if msg.value <= 0:
        revert with 0, 'Value should be > 0'
    if msg.value > -101:
        revert with 0, 17
    if msg.value + 100 < msg.value:
        revert with 0, 1
    if 1 > msg.value + 100:
        revert with 0, 1
    if msg.value + 100 < 1:
        revert with 0, 17
    if not stor103[Mask(128, 128, arg2)]:
        if not msg.value + 99 / 100:
            if False and uint8(stor101.field_160) > 0:
                revert with 0, 17
            if msg.value < 0:
                revert with 0, 17
            if msg.value > -1:
                revert with 0, 17
            if msg.value != msg.value:
                revert with 0, 1
            call address(arg3) with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed to send ETH'
            call address(stor101.field_0) with:
                 gas gas_remaining wei
        else:
            if msg.value + 99 / 100 and 100 > -1 / msg.value + 99 / 100:
                revert with 0, 17
            if not msg.value + 99 / 100:
                revert with 0, 18
            if 100 * msg.value + 99 / 100 / msg.value + 99 / 100 != 100:
                revert with 0, 1
            if not 100 * msg.value + 99 / 100:
                if False and uint8(stor101.field_160) > 0:
                    revert with 0, 17
                if msg.value < 0:
                    revert with 0, 17
                if msg.value > -1:
                    revert with 0, 17
                if msg.value != msg.value:
                    revert with 0, 1
                call address(arg3) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed to send ETH'
                call address(stor101.field_0) with:
                     gas gas_remaining wei
            else:
                if 100 * msg.value + 99 / 100 and 100 > -1 / 100 * msg.value + 99 / 100:
                    revert with 0, 17
                if not 100 * msg.value + 99 / 100:
                    revert with 0, 18
                if 10000 * msg.value + 99 / 100 / 100 * msg.value + 99 / 100 != 100:
                    revert with 0, 1
                if 10000 * msg.value + 99 / 100 / 10000 and uint8(stor101.field_160) > -1 / 10000 * msg.value + 99 / 100 / 10000:
                    revert with 0, 17
                if msg.value < 10000 * msg.value + 99 / 100 / 10000 * uint8(stor101.field_160):
                    revert with 0, 17
                if msg.value - (10000 * msg.value + 99 / 100 / 10000 * uint8(stor101.field_160)) > !(10000 * msg.value + 99 / 100 / 10000 * uint8(stor101.field_160)):
                    revert with 0, 17
                if msg.value - (10000 * msg.value + 99 / 100 / 10000 * uint8(stor101.field_160)) + (10000 * msg.value + 99 / 100 / 10000 * uint8(stor101.field_160)) != msg.value:
                    revert with 0, 1
                call address(arg3) with:
                   value msg.value - (10000 * msg.value + 99 / 100 / 10000 * uint8(stor101.field_160)) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed to send ETH'
                call address(stor101.field_0) with:
                   value 10000 * msg.value + 99 / 100 / 10000 * uint8(stor101.field_160) wei
                     gas gas_remaining wei
    else:
        if not msg.value + 99 / 100:
            if False and stor102[Mask(128, 128, arg2)] > 0:
                revert with 0, 17
            if msg.value < 0:
                revert with 0, 17
            if msg.value > -1:
                revert with 0, 17
            if msg.value != msg.value:
                revert with 0, 1
            call address(arg3) with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed to send ETH'
            call address(stor101.field_0) with:
                 gas gas_remaining wei
        else:
            if msg.value + 99 / 100 and 100 > -1 / msg.value + 99 / 100:
                revert with 0, 17
            if not msg.value + 99 / 100:
                revert with 0, 18
            if 100 * msg.value + 99 / 100 / msg.value + 99 / 100 != 100:
                revert with 0, 1
            if not 100 * msg.value + 99 / 100:
                if False and stor102[Mask(128, 128, arg2)] > 0:
                    revert with 0, 17
                if msg.value < 0:
                    revert with 0, 17
                if msg.value > -1:
                    revert with 0, 17
                if msg.value != msg.value:
                    revert with 0, 1
                call address(arg3) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed to send ETH'
                call address(stor101.field_0) with:
                     gas gas_remaining wei
            else:
                if 100 * msg.value + 99 / 100 and 100 > -1 / 100 * msg.value + 99 / 100:
                    revert with 0, 17
                if not 100 * msg.value + 99 / 100:
                    revert with 0, 18
                if 10000 * msg.value + 99 / 100 / 100 * msg.value + 99 / 100 != 100:
                    revert with 0, 1
                if 10000 * msg.value + 99 / 100 / 10000 and stor102[Mask(128, 128, arg2)] > -1 / 10000 * msg.value + 99 / 100 / 10000:
                    revert with 0, 17
                if msg.value < 10000 * msg.value + 99 / 100 / 10000 * stor102[Mask(128, 128, arg2)]:
                    revert with 0, 17
                if msg.value - (10000 * msg.value + 99 / 100 / 10000 * stor102[Mask(128, 128, arg2)]) > !(10000 * msg.value + 99 / 100 / 10000 * stor102[Mask(128, 128, arg2)]):
                    revert with 0, 17
                if msg.value - (10000 * msg.value + 99 / 100 / 10000 * stor102[Mask(128, 128, arg2)]) + (10000 * msg.value + 99 / 100 / 10000 * stor102[Mask(128, 128, arg2)]) != msg.value:
                    revert with 0, 1
                call address(arg3) with:
                   value msg.value - (10000 * msg.value + 99 / 100 / 10000 * stor102[Mask(128, 128, arg2)]) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed to send ETH'
                call address(stor101.field_0) with:
                   value 10000 * msg.value + 99 / 100 / 10000 * stor102[Mask(128, 128, arg2)] wei
                     gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send ETH'
    emit 0x3c5469fe: msg.value, Mask(128, 128, arg1), Mask(128, 128, arg2), address(arg3)
}



}
