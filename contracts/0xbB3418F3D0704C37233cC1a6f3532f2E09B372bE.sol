contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address masterAddress;
address lpAddress;
uint8 initialDistributionFinished; offset 160
uint128 stor5; offset 160
address lpContractAddress;
mapping of uint8 stor6;
uint256 totalSupply;
uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function lp() payable {
    return lpAddress
}

function decimals() payable {
    return decimals
}

function lpContract() payable {
    return lpContractAddress
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function initialDistributionFinished() payable {
    return bool(initialDistributionFinished)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function master() payable {
    return masterAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setInitialDistributionFinished() payable {
    require msg.sender == owner
    stor5 = 1
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function enableTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function setMaster(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    masterAddress = arg1
    return 0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor8 > 0
    require stor8
    return (stor9[address(arg1)] / stor8)
}

function setLP(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    lpAddress = arg1
    lpContractAddress = arg1
    return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor6[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor6[address(msg.sender)]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor6[address(msg.sender)]
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg2 != this.address
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not arg3:
        require 0 <= stor9[address(arg1)]
        require stor9[address(arg2)] >= stor9[address(arg2)]
    else:
        require arg3
        require arg3 * stor8 / arg3 == stor8
        require arg3 * stor8 <= stor9[address(arg1)]
        stor9[address(arg1)] += -1 * arg3 * stor8
        require stor9[address(arg2)] + (arg3 * stor8) >= stor9[address(arg2)]
        stor9[address(arg2)] += arg3 * stor8
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor6[address(msg.sender)]
    if not arg2:
        require 0 <= stor9[address(msg.sender)]
        require stor9[address(arg1)] >= stor9[address(arg1)]
    else:
        require arg2
        require arg2 * stor8 / arg2 == stor8
        require arg2 * stor8 <= stor9[address(msg.sender)]
        stor9[address(msg.sender)] += -1 * arg2 * stor8
        require stor9[address(arg1)] + (arg2 * stor8) >= stor9[address(arg1)]
        stor9[address(arg1)] += arg2 * stor8
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function rebase(uint256 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    if arg2:
        if arg2 >= 0:
            require totalSupply + arg2 >= totalSupply
        else:
            require -arg2 <= totalSupply
        totalSupply += arg2
        if totalSupply > test266151307():
            totalSupply = test266151307()
        require totalSupply > 0
        require totalSupply
        stor8 = -8007913129639936 / totalSupply
        require ext_code.size(lpContractAddress)
        call lpContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}



}
