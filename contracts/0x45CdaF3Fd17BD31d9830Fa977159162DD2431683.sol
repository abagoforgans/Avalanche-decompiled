contract main {




// =====================  Runtime code  =====================


const name = 'KIOO', 0

const decimals = 18

const symbol = 'KIOO', 0


address owner;
uint256 stor1;
uint256 totalSupply;
uint256 totalFees;
uint256 totalBurn;
uint256 balanceLimit;
mapping of uint256 stor6;
mapping of uint256 allowance;

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function totalBurn() payable {
    return totalBurn
}

function balanceLimit() payable {
    return balanceLimit
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function setBalanceLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'K.setBalanceLimit: error addr(0)'
    balanceLimit = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'K._approve: from the address(0)'
    if not arg1:
        revert with 0, 'K._approve: to the address(0)'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)] > stor1:
        revert with 0, 'K.balanceOf: ! <= total reflect'
    if not totalSupply:
        revert with 'NH{q', 18
    if stor1 / totalSupply <= 0:
        revert with 0, 'K.balanceOf: current rate ! > 0'
    if not stor1 / totalSupply:
        revert with 'NH{q', 18
    return (stor6[address(arg1)] / stor1 / totalSupply)
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'K._approve: from the address(0)'
    if not arg1:
        revert with 0, 'K._approve: to the address(0)'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 'K.decreaseAllowance: < zero'
    if not msg.sender:
        revert with 0, 'K._approve: from the address(0)'
    if not arg1:
        revert with 0, 'K._approve: to the address(0)'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function reflect(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 and 3 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 and 1 > -1 / arg1:
        revert with 'NH{q', 17
    if 3 * arg1 / 100 > !(arg1 / 100):
        revert with 'NH{q', 17
    if arg1 < (3 * arg1 / 100) + (arg1 / 100):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if 3 * arg1 / 100 and stor1 / totalSupply > -1 / 3 * arg1 / 100:
        revert with 'NH{q', 17
    if arg1 / 100 and stor1 / totalSupply > -1 / arg1 / 100:
        revert with 'NH{q', 17
    if arg1 and stor1 / totalSupply > -1 / arg1:
        revert with 'NH{q', 17
    if 3 * arg1 / 100 * stor1 / totalSupply > !(arg1 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    if arg1 * stor1 / totalSupply < (3 * arg1 / 100 * stor1 / totalSupply) + (arg1 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    if arg1 * stor1 / totalSupply > stor6[address(msg.sender)]:
        revert with 0, 'K.reflect: insuffisant balance'
    if stor6[address(msg.sender)] < arg1 * stor1 / totalSupply:
        revert with 'NH{q', 17
    stor6[address(msg.sender)] += -1 * arg1 * stor1 / totalSupply
    if stor1 < arg1 * stor1 / totalSupply:
        revert with 'NH{q', 17
    stor1 += -1 * arg1 * stor1 / totalSupply
    if totalFees > !arg1:
        revert with 'NH{q', 17
    totalFees += arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'K._transfer: from address(0)'
    if not arg1:
        revert with 0, 'K._transfer: to the address(0)'
    if arg2 <= 0:
        revert with 0, 'K._transfer: amount ! > 0'
    if stor6[address(msg.sender)] > stor1:
        revert with 0, 'K.balanceOf: ! <= total reflect'
    if not totalSupply:
        revert with 'NH{q', 18
    if stor1 / totalSupply <= 0:
        revert with 0, 'K.balanceOf: current rate ! > 0'
    if not stor1 / totalSupply:
        revert with 'NH{q', 18
    if stor6[address(msg.sender)] / stor1 / totalSupply < arg2:
        revert with 0, 'K._transfer: amount > balance'
    if balanceLimit:
        if stor6[address(arg1)] > stor1:
            revert with 0, 'K.balanceOf: ! <= total reflect'
        if not totalSupply:
            revert with 'NH{q', 18
        if stor1 / totalSupply <= 0:
            revert with 0, 'K.balanceOf: current rate ! > 0'
        if not stor1 / totalSupply:
            revert with 'NH{q', 18
        if stor6[address(arg1)] / stor1 / totalSupply > !arg2:
            revert with 'NH{q', 17
        if (stor6[address(arg1)] / stor1 / totalSupply) + arg2 > balanceLimit:
            revert with 0, 'K._transfer: balance > limit'
    if arg2 and 3 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 and 1 > -1 / arg2:
        revert with 'NH{q', 17
    if 3 * arg2 / 100 > !(arg2 / 100):
        revert with 'NH{q', 17
    if arg2 < (3 * arg2 / 100) + (arg2 / 100):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if 3 * arg2 / 100 and stor1 / totalSupply > -1 / 3 * arg2 / 100:
        revert with 'NH{q', 17
    if arg2 / 100 and stor1 / totalSupply > -1 / arg2 / 100:
        revert with 'NH{q', 17
    if arg2 and stor1 / totalSupply > -1 / arg2:
        revert with 'NH{q', 17
    if 3 * arg2 / 100 * stor1 / totalSupply > !(arg2 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    if arg2 * stor1 / totalSupply < (3 * arg2 / 100 * stor1 / totalSupply) + (arg2 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    if stor6[address(msg.sender)] < arg2 * stor1 / totalSupply:
        revert with 'NH{q', 17
    stor6[address(msg.sender)] += -1 * arg2 * stor1 / totalSupply
    if stor6[address(arg1)] > !((arg2 * stor1 / totalSupply) - (3 * arg2 / 100 * stor1 / totalSupply) - (arg2 / 100 * stor1 / totalSupply)):
        revert with 'NH{q', 17
    stor6[address(arg1)] = stor6[address(arg1)] + (arg2 * stor1 / totalSupply) - (3 * arg2 / 100 * stor1 / totalSupply) - (arg2 / 100 * stor1 / totalSupply)
    if 3 * arg2 / 100 * stor1 / totalSupply > !(arg2 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    if stor1 < (3 * arg2 / 100 * stor1 / totalSupply) + (arg2 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    stor1 = stor1 - (3 * arg2 / 100 * stor1 / totalSupply) - (arg2 / 100 * stor1 / totalSupply)
    if totalFees > !(3 * arg2 / 100):
        revert with 'NH{q', 17
    totalFees += 3 * arg2 / 100
    if totalBurn > !(arg2 / 100):
        revert with 'NH{q', 17
    totalBurn += arg2 / 100
    if totalSupply < arg2 / 100:
        revert with 'NH{q', 17
    totalSupply -= arg2 / 100
    emit Transfer((arg2 - (3 * arg2 / 100) - (arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0, 'K._transfer: from address(0)'
    if not arg2:
        revert with 0, 'K._transfer: to the address(0)'
    if arg3 <= 0:
        revert with 0, 'K._transfer: amount ! > 0'
    if stor6[address(arg1)] > stor1:
        revert with 0, 'K.balanceOf: ! <= total reflect'
    if not totalSupply:
        revert with 'NH{q', 18
    if stor1 / totalSupply <= 0:
        revert with 0, 'K.balanceOf: current rate ! > 0'
    if not stor1 / totalSupply:
        revert with 'NH{q', 18
    if stor6[address(arg1)] / stor1 / totalSupply < arg3:
        revert with 0, 'K._transfer: amount > balance'
    if balanceLimit:
        if stor6[address(arg2)] > stor1:
            revert with 0, 'K.balanceOf: ! <= total reflect'
        if not totalSupply:
            revert with 'NH{q', 18
        if stor1 / totalSupply <= 0:
            revert with 0, 'K.balanceOf: current rate ! > 0'
        if not stor1 / totalSupply:
            revert with 'NH{q', 18
        if stor6[address(arg2)] / stor1 / totalSupply > !arg3:
            revert with 'NH{q', 17
        if (stor6[address(arg2)] / stor1 / totalSupply) + arg3 > balanceLimit:
            revert with 0, 'K._transfer: balance > limit'
    if arg3 and 3 > -1 / arg3:
        revert with 'NH{q', 17
    if arg3 and 1 > -1 / arg3:
        revert with 'NH{q', 17
    if 3 * arg3 / 100 > !(arg3 / 100):
        revert with 'NH{q', 17
    if arg3 < (3 * arg3 / 100) + (arg3 / 100):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if 3 * arg3 / 100 and stor1 / totalSupply > -1 / 3 * arg3 / 100:
        revert with 'NH{q', 17
    if arg3 / 100 and stor1 / totalSupply > -1 / arg3 / 100:
        revert with 'NH{q', 17
    if arg3 and stor1 / totalSupply > -1 / arg3:
        revert with 'NH{q', 17
    if 3 * arg3 / 100 * stor1 / totalSupply > !(arg3 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    if arg3 * stor1 / totalSupply < (3 * arg3 / 100 * stor1 / totalSupply) + (arg3 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    if stor6[address(arg1)] < arg3 * stor1 / totalSupply:
        revert with 'NH{q', 17
    stor6[address(arg1)] += -1 * arg3 * stor1 / totalSupply
    if stor6[address(arg2)] > !((arg3 * stor1 / totalSupply) - (3 * arg3 / 100 * stor1 / totalSupply) - (arg3 / 100 * stor1 / totalSupply)):
        revert with 'NH{q', 17
    stor6[address(arg2)] = stor6[address(arg2)] + (arg3 * stor1 / totalSupply) - (3 * arg3 / 100 * stor1 / totalSupply) - (arg3 / 100 * stor1 / totalSupply)
    if 3 * arg3 / 100 * stor1 / totalSupply > !(arg3 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    if stor1 < (3 * arg3 / 100 * stor1 / totalSupply) + (arg3 / 100 * stor1 / totalSupply):
        revert with 'NH{q', 17
    stor1 = stor1 - (3 * arg3 / 100 * stor1 / totalSupply) - (arg3 / 100 * stor1 / totalSupply)
    if totalFees > !(3 * arg3 / 100):
        revert with 'NH{q', 17
    totalFees += 3 * arg3 / 100
    if totalBurn > !(arg3 / 100):
        revert with 'NH{q', 17
    totalBurn += arg3 / 100
    if totalSupply < arg3 / 100:
        revert with 'NH{q', 17
    totalSupply -= arg3 / 100
    emit Transfer((arg3 - (3 * arg3 / 100) - (arg3 / 100)), arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 'K.transferFrom: tx > allowance'
    if not arg1:
        revert with 0, 'K._approve: from the address(0)'
    if not msg.sender:
        revert with 0, 'K._approve: to the address(0)'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
