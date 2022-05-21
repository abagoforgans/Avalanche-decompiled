contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 contractVersion;
uint256 sub_fea201bc;
mapping of uint8 stor103;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor103[address(arg1)])
}

function sub_66c5563c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor103[arg1])
}

function owner() payable {
    return owner
}

function contractVersion() payable {
    return contractVersion
}

function sub_fea201bc(?) payable {
    return sub_fea201bc
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

function updateVersion(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[address(msg.sender)]:
        revert with 0, '!Admin'
    if arg1 <= contractVersion:
        revert with 0, '!NewVersion'
    contractVersion = arg1
}

function renounceAdmin() payable {
    if not stor103[address(msg.sender)]:
        revert with 0, '!Admin'
    if sub_fea201bc <= 1:
        revert with 0, 'Cannot remove last admin'
    if 1 > sub_fea201bc:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_fea201bc--
    stor103[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
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

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor103[address(msg.sender)]:
        revert with 0, '!Admin'
    if sub_fea201bc <= 1:
        revert with 0, 'Cannot remove last admin'
    if 1 > sub_fea201bc:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_fea201bc--
    stor103[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor103[address(msg.sender)]:
        revert with 0, '!Admin'
    if not arg1:
        revert with 0, 'Not a valid address!'
    if stor103[address(arg1)]:
        revert with 0, ' Address already Administrator'
    if sub_fea201bc + 1 < sub_fea201bc:
        revert with 0, 'SafeMath: addition overflow'
    sub_fea201bc++
    stor103[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if sub_fea201bc + 1 < sub_fea201bc:
        revert with 0, 'SafeMath: addition overflow'
    sub_fea201bc++
    stor103[address(msg.sender)] = 1
    emit AdminAdded(msg.sender);
    contractVersion = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
