contract main {




// =====================  Runtime code  =====================


const sub_7f635cc0(?) = 1000

const WITHDRAWAL_FEE_CAP = 50

const FEE_BASE = 10000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 withdrawalFee;
uint256 totalFee;
uint256 sub_10070c19;
uint256 harvestFee;
uint256 protocolFee;
address protocolFeeRecipientAddress;
address strategyDevAddress;

function sub_10070c19(?) payable {
    return sub_10070c19
}

function totalFee() payable {
    return totalFee
}

function protocolFeeRecipient() payable {
    return protocolFeeRecipientAddress
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function protocolFee() payable {
    return protocolFee
}

function harvestFee() payable {
    return harvestFee
}

function strategyDev() payable {
    return strategyDevAddress
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

function sub_f831505a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and harvestFee > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * harvestFee / 10000)
}

function sub_9c7c270c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and protocolFee > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * protocolFee / 10000)
}

function sub_a51704c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and sub_10070c19 > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * sub_10070c19 / 10000)
}

function sub_18e1b3bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and withdrawalFee > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * withdrawalFee / 10000)
}

function calculateTotalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and totalFee > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * totalFee / 10000)
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 50:
        revert with 0, 'Fee cannot exceed the cap'
    withdrawalFee = arg1
    emit 0x48dcfdaa: withdrawalFee
}

function setProtocolFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid protocol fee address'
    protocolFeeRecipientAddress = arg1
    emit 0xaa9ba2b1: protocolFeeRecipientAddress
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

function setStrategyDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'invalid strategy devaddress'
    if strategyDevAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only strategy dev can update the address'
    strategyDevAddress = arg1
    emit 0xd947fbc2: strategyDevAddress
}

function sub_3a1e167b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, 'max total fee violation'
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg2 + arg3 + arg4 > 10000:
        revert with 0, 'fees do not add up'
    totalFee = arg1
    sub_10070c19 = arg2
    harvestFee = arg3
    protocolFee = arg4
    emit 0x881a9a21: totalFee, sub_10070c19, harvestFee, protocolFee
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    if not arg1:
        revert with 0, 'invalid strategy devaddress'
    if not arg2:
        revert with 0, 'invalid protocol fee address'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    Mask(248, 0, stor0.field_8) = 0
                    Mask(248, 0, stor0.field_8) = 0
    strategyDevAddress = arg1
    protocolFeeRecipientAddress = arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 1000:
        revert with 0, 'max total fee violation'
    if arg4 > -arg5 - 1:
        revert with 'NH{q', 17
    if arg4 + arg5 > -arg6 - 1:
        revert with 'NH{q', 17
    if arg4 + arg5 + arg6 > 10000:
        revert with 0, 'fees do not add up'
    totalFee = arg3
    sub_10070c19 = arg4
    harvestFee = arg5
    protocolFee = arg6
    emit 0x881a9a21: totalFee, sub_10070c19, harvestFee, protocolFee
    withdrawalFee = 20
    totalFee = 500
    sub_10070c19 = 2000
    harvestFee = 1000
    protocolFee = 7000
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}



}
