contract main {




// =====================  Runtime code  =====================


const sub_505950fd(?) = 1


address owner;
uint256 stor1;
uint256 sub_c93de5f1;
uint256 presaleAmount;
uint8 stor4;
address sub_4ceeef7cAddress; offset 8
address presaleTokenAddress;
address presaleWalletAddress;
mapping of uint256 userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1]
}

function presaleWallet() payable {
    return presaleWalletAddress
}

function presaleToken() payable {
    return presaleTokenAddress
}

function sub_2c4d05e6(?) payable {
    return userInfo[address(msg.sender)]
}

function sub_4ceeef7c(?) payable {
    return sub_4ceeef7cAddress
}

function owner() payable {
    return owner
}

function presaleAmount() payable {
    return presaleAmount
}

function sub_c93de5f1(?) payable {
    return sub_c93de5f1
}

function canRedeem() payable {
    return bool(stor4)
}

function _fallback() payable {
    revert
}

function sub_32cbf8e2(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor4
    stor4 = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function redeem() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require stor4
    if userInfo[address(msg.sender)] < 0:
        revert with 0, 'withdraw: not good'
    userInfo[address(msg.sender)] = 0
    require ext_code.size(sub_4ceeef7cAddress)
    call sub_4ceeef7cAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userInfo[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 1
}

function sub_169372b9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 > 0
    require not stor4
    if sub_c93de5f1 and arg1 > -1 / sub_c93de5f1:
        revert with 'NH{q', 17
    if presaleAmount < arg1:
        revert with 'NH{q', 17
    require presaleAmount - arg1 >= 0
    require ext_code.size(presaleTokenAddress)
    staticcall presaleTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= sub_c93de5f1 * arg1
    require ext_code.size(presaleTokenAddress)
    call presaleTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, presaleWalletAddress, sub_c93de5f1 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)] += arg1
    stor1 = 1
}



}
