contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
mapping of uint8 stor4;
uint256 stor5;
address adminAddress;
address tokenAddress;
uint256 nonce;
mapping of uint8 stor9;
uint256 fee;
address feeAddress;

function feeAddress() payable {
    return feeAddress
}

function isApprover(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor1[address(arg1)])
}

function owner() payable {
    return owner
}

function processedNonces(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function nonce() payable {
    return nonce
}

function fee() payable {
    return fee
}

function admin() payable {
    return adminAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sign() payable {
    if stor2 != msg.sender:
        require msg.sender == stor3
    require not stor4[address(msg.sender)]
    stor4[address(msg.sender)] = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function changeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
}

function changeFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
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

function renounceApprover() payable {
    require stor4[stor2]
    require stor4[stor3]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(msg.sender)] = 0
    emit ApproverRemoved(msg.sender);
    stor4[stor2] = 0
    stor4[stor3] = 0
}

function transferTokenOwnership() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    require stor1[address(msg.sender)]
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    require ext_code.size(tokenAddress)
    call tokenAddress.updateAdmin(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5 = 1
}

function addApprover(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    require stor1[address(msg.sender)]
    require stor4[stor2]
    require stor4[stor3]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit ApproverAdded(arg1);
    stor4[stor2] = 0
    stor4[stor3] = 0
}

function removeApprover(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    require stor1[address(msg.sender)]
    require stor4[stor2]
    require stor4[stor3]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(arg1)] = 0
    emit ApproverRemoved(arg1);
    stor4[stor2] = 0
    stor4[stor3] = 0
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    require stor1[address(msg.sender)]
    if stor9[arg3]:
        revert with 0, 'transfer already processed'
    stor9[arg3] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x27757542: address(msg.sender), address(arg1), arg2, block.timestamp, arg3
    emit 0x1: address(msg.sender), address(arg1), arg2, block.timestamp, arg3
    stor5 = 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    require arg2 > fee
    if fee > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < fee:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg2 - fee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args feeAddress, fee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if fee > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < fee:
        revert with 'NH{q', 17
    emit 0x27757542: msg.sender, address(arg1), arg2 - fee, block.timestamp, nonce
    emit 0x0: msg.sender, address(arg1), arg2 - fee, block.timestamp, nonce
    if nonce > -2:
        revert with 'NH{q', 17
    if nonce + 1 < nonce:
        revert with 0, 'SafeMath: addition overflow'
    nonce++
    stor5 = 1
}



}
