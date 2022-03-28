contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address stor1;
uint256 stor2;
mapping of uint256 swappableAmount;

function getSwappableAmount(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return swappableAmount[address(arg1)][address(arg2)]
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor1 = arg1
    emit OwnershipTransferRequested(address(owner), arg1);
}

function acceptOwnership() payable {
    if stor1 != msg.sender:
        revert with 0, 'Must be proposed owner'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = 0
    emit OwnershipTransferred(address(owner), msg.sender);
}

function recoverStuckTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    emit StuckTokensRecovered(arg1, arg2);
    require ext_code.size(arg2)
    call arg2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function removeLiquidity(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if arg1 > swappableAmount[address(arg2)][address(arg3)]:
        revert with 0, 'SafeMath: subtraction overflow'
    swappableAmount[address(arg2)][address(arg3)] -= arg1
    emit LiquidityUpdated((swappableAmount[address(arg2)][address(arg3)] - arg1), arg2, arg3);
    require ext_code.size(arg3)
    call arg3.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function addLiquidity(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        if swappableAmount[address(arg2)][address(arg3)] <= 0:
            if swappableAmount[address(arg3)][address(arg2)] <= 0:
                revert with 0, 'only owner can add pairs'
    if arg1 + swappableAmount[address(arg2)][address(arg3)] < swappableAmount[address(arg2)][address(arg3)]:
        revert with 0, 'SafeMath: addition overflow'
    swappableAmount[address(arg2)][address(arg3)] += arg1
    emit LiquidityUpdated((arg1 + swappableAmount[address(arg2)][address(arg3)]), arg2, arg3);
    require ext_code.size(arg3)
    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom failed'
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg3.length >= 32
    if arg2 > swappableAmount[address(msg.sender)][address(cd[(arg3 + 36)])]:
        revert with 0, 'SafeMath: subtraction overflow'
    swappableAmount[address(msg.sender)][address(cd[(arg3 + 36)])] -= arg2
    emit LiquidityUpdated((swappableAmount[address(msg.sender)][address(cd[(arg3 + 36)])] - arg2), msg.sender, address(cd[(arg3 + 36)]));
    if arg2 + swappableAmount[address(cd[(arg3 + 36)])][address(msg.sender)] < swappableAmount[address(cd[(arg3 + 36)])][address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    swappableAmount[address(cd[(arg3 + 36)])][address(msg.sender)] += arg2
    emit LiquidityUpdated((arg2 + swappableAmount[address(cd[(arg3 + 36)])][address(msg.sender)]), address(cd[(arg3 + 36)]), msg.sender);
    emit TokensSwapped(arg2, msg.sender, address(cd[(arg3 + 36)]), arg1);
    require ext_code.size(address(cd[(arg3 + 36)]))
    call address(cd[(arg3 + 36)]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function swap(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if arg1 > swappableAmount[address(arg2)][address(arg3)]:
        revert with 0, 'SafeMath: subtraction overflow'
    swappableAmount[address(arg2)][address(arg3)] -= arg1
    emit LiquidityUpdated((swappableAmount[address(arg2)][address(arg3)] - arg1), arg2, arg3);
    if arg1 + swappableAmount[address(arg3)][address(arg2)] < swappableAmount[address(arg3)][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    swappableAmount[address(arg3)][address(arg2)] += arg1
    emit LiquidityUpdated((arg1 + swappableAmount[address(arg3)][address(arg2)]), arg3, arg2);
    emit TokensSwapped(arg1, arg2, arg3, msg.sender);
    require ext_code.size(arg2)
    call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom failed'
    require ext_code.size(arg3)
    call arg3.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    stor2 = 1
}



}
