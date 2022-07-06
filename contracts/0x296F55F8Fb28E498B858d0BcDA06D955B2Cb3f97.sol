contract main {




// =====================  Runtime code  =====================


const getVersion = '', 0

const sub_abe685cd(?) = 10000


address owner;
address factoryAddress;
uint256 sub_98a6c1cf;
uint256 sub_c5fba0b8;
uint256 sub_cc95f9b7;
uint256 sub_838aa646;

function sub_838aa646(?) payable {
    return sub_838aa646
}

function owner() payable {
    return owner
}

function sub_98a6c1cf(?) payable {
    return sub_98a6c1cf
}

function factory() payable {
    return factoryAddress
}

function sub_c5fba0b8(?) payable {
    return sub_c5fba0b8
}

function sub_cc95f9b7(?) payable {
    return sub_cc95f9b7
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 + arg3 + arg2 + arg1 > 10000:
        revert with 0, 'FeeLibrary: sum fees > 100%'
    if sub_838aa646 > sub_cc95f9b7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FeeLibrary: eq fee param incorrect'
    sub_98a6c1cf = arg1
    sub_c5fba0b8 = arg2
    sub_cc95f9b7 = arg3
    sub_838aa646 = arg4
    emit FeesUpdated(arg1, arg2);
}

function sub_1ab62430(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    if not arg3:
        if not arg3:
            if not arg3:
                if not arg3:
                    return 0
                if sub_838aa646 * arg3 / arg3 != sub_838aa646:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return 0, 0, sub_838aa646 * arg3 / 10000, 0, 0, 0
            if sub_cc95f9b7 * arg3 / arg3 != sub_cc95f9b7:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not arg3:
                return 0, sub_cc95f9b7 * arg3 / 10000, 0, 0, 0, 0
            if sub_838aa646 * arg3 / arg3 != sub_838aa646:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            return 0, sub_cc95f9b7 * arg3 / 10000, sub_838aa646 * arg3 / 10000, 0, 0, 0
        if sub_98a6c1cf * arg3 / arg3 != sub_98a6c1cf:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not arg3:
            if not arg3:
                return 0, 0, 0, sub_98a6c1cf * arg3 / 10000, 0, 0
            if sub_838aa646 * arg3 / arg3 != sub_838aa646:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            return 0, 0, sub_838aa646 * arg3 / 10000, sub_98a6c1cf * arg3 / 10000, 0, 0
        if sub_cc95f9b7 * arg3 / arg3 != sub_cc95f9b7:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not arg3:
            return 0, sub_cc95f9b7 * arg3 / 10000, 0, sub_98a6c1cf * arg3 / 10000, 0, 0
        if sub_838aa646 * arg3 / arg3 != sub_838aa646:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return 0, sub_cc95f9b7 * arg3 / 10000, sub_838aa646 * arg3 / 10000, sub_98a6c1cf * arg3 / 10000, 0, 0
    if sub_c5fba0b8 * arg3 / arg3 != sub_c5fba0b8:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not arg3:
        if not arg3:
            if not arg3:
                return 0, 0, 0, 0, sub_c5fba0b8 * arg3 / 10000, 0
            if sub_838aa646 * arg3 / arg3 != sub_838aa646:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            return 0, 0, sub_838aa646 * arg3 / 10000, 0, sub_c5fba0b8 * arg3 / 10000, 0
        if sub_cc95f9b7 * arg3 / arg3 != sub_cc95f9b7:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not arg3:
            return 0, sub_cc95f9b7 * arg3 / 10000, 0, 0, sub_c5fba0b8 * arg3 / 10000, 0
        if sub_838aa646 * arg3 / arg3 != sub_838aa646:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return 0, sub_cc95f9b7 * arg3 / 10000, sub_838aa646 * arg3 / 10000, 0, sub_c5fba0b8 * arg3 / 10000, 0
    if sub_98a6c1cf * arg3 / arg3 != sub_98a6c1cf:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not arg3:
        if not arg3:
            return 0, 0, 0, sub_98a6c1cf * arg3 / 10000, sub_c5fba0b8 * arg3 / 10000, 0
        if sub_838aa646 * arg3 / arg3 != sub_838aa646:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return 0, 0, sub_838aa646 * arg3 / 10000, sub_98a6c1cf * arg3 / 10000, sub_c5fba0b8 * arg3 / 10000, 0
    if sub_cc95f9b7 * arg3 / arg3 != sub_cc95f9b7:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not arg3:
        return 0, sub_cc95f9b7 * arg3 / 10000, 0, sub_98a6c1cf * arg3 / 10000, sub_c5fba0b8 * arg3 / 10000, 0
    if sub_838aa646 * arg3 / arg3 != sub_838aa646:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    return 0, 
           sub_cc95f9b7 * arg3 / 10000,
           sub_838aa646 * arg3 / 10000,
           sub_98a6c1cf * arg3 / 10000,
           sub_c5fba0b8 * arg3 / 10000,
           0
}



}
