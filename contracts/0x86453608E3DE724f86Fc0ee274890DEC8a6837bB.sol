contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address governorAddress;
address rewardAddress;
address storB531;

function governor() payable {
    return governorAddress
}

function reward() payable {
    return rewardAddress
}

function _fallback() payable {
    revert
}

function renounceGovernorship() payable {
    if governorAddress != msg.sender:
        require msg.sender == storB531
    emit GovernorshipTransferred(governorAddress, 0);
    governorAddress = 0
}

function __Mine_init_unchained(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require msg.sender == storB531
    rewardAddress = arg1
}

function transferGovernorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require msg.sender == storB531
    require arg1
    emit GovernorshipTransferred(governorAddress, arg1);
    governorAddress = arg1
}

function approvePool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if governorAddress != msg.sender:
        require msg.sender == storB531
    require ext_code.size(rewardAddress)
    call rewardAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if governorAddress != msg.sender:
        require msg.sender == storB531
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function __Governable_init_unchained(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
            uint8(stor0.field_8) = 0
}

function __Mine_init(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
    if governorAddress != msg.sender:
        require msg.sender == storB531
    rewardAddress = arg2
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
