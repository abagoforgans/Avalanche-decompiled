contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_41d01f7c;
uint256 sub_26af7b0c;
address sub_30067190Address;
address tokenFeeAddress;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 sub_8a52ce2a;
address sub_7408bf4aAddress;

function sub_26af7b0c(?) payable {
    return sub_26af7b0c
}

function sub_30067190(?) payable {
    return sub_30067190Address
}

function sub_41d01f7c(?) payable {
    return sub_41d01f7c
}

function getTokenFeeAddress() payable {
    return tokenFeeAddress
}

function sub_7408bf4a(?) payable {
    return sub_7408bf4aAddress
}

function sub_8a52ce2a(?) payable {
    return sub_8a52ce2a
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getUNCLInfo() payable {
    return stor6, stor5, stor7, stor8
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6a52b0d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8a52ce2a = arg1
}

function sub_c5efbd6c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_41d01f7c = arg1
}

function setRewardTokenFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_26af7b0c = arg1
}

function sub_56afa012(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7408bf4aAddress = address(arg1)
}

function SETTINGS() payable {
    return sub_41d01f7c, 
           sub_26af7b0c,
           sub_30067190Address,
           tokenFeeAddress,
           stor5,
           stor6,
           stor7,
           stor8,
           sub_8a52ce2a,
           sub_7408bf4aAddress
}

function setFeeAddresses(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_30067190Address = arg1
    tokenFeeAddress = arg2
}

function sub_83dda52d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = address(arg1)
    stor5 = address(arg2)
    stor7 = arg3
    stor8 = arg4
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



}
