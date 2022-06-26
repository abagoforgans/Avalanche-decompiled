contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#
const sub_b217f9d4(?) = (8760 * 24 * 3600)

const initialUnlock = 100 * 10^6


address owner;
uint256 startDate;
uint256 totalAdded;
address stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;

function startDate() payable {
    return startDate
}

function owner() payable {
    return owner
}

function totalAdded() payable {
    return totalAdded
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

function sub_13601816(?) payable {
    if block.timestamp < startDate:
        return 0
    if block.timestamp - startDate and 250000 * 3600 > -1 / block.timestamp - startDate:
        revert with 0, 17
    if (250000 * 3600 * block.timestamp) - (250000 * 3600 * startDate) / 8760 * 24 * 3600 > -100000001:
        revert with 0, 17
    if ((250000 * 3600 * block.timestamp) - (250000 * 3600 * startDate) / 8760 * 24 * 3600) + 100 * 10^6 <= 10^9:
        return (((250000 * 3600 * block.timestamp) - (250000 * 3600 * startDate) / 8760 * 24 * 3600) + 100 * 10^6)
    return 10^9
}

function add(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > startDate:
        revert with 0, 'Already started'
    if stor4[address(arg1)] > !arg2:
        revert with 0, 17
    stor4[address(arg1)] += arg2
    if totalAdded > !arg2:
        revert with 0, 17
    totalAdded += arg2
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= totalAdded:
        revert with 0, 'Not enough token in contract'
}

function available(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < startDate:
        if False and stor4[address(arg1)] > 0:
            revert with 0, 17
        if 0 < stor5[address(arg1)]:
            revert with 0, 17
        return -stor5[address(arg1)]
    if block.timestamp - startDate and 250000 * 3600 > -1 / block.timestamp - startDate:
        revert with 0, 17
    if (250000 * 3600 * block.timestamp) - (250000 * 3600 * startDate) / 8760 * 24 * 3600 > -100000001:
        revert with 0, 17
    if ((250000 * 3600 * block.timestamp) - (250000 * 3600 * startDate) / 8760 * 24 * 3600) + 100 * 10^6 <= 10^9:
        if ((250000 * 3600 * block.timestamp) - (250000 * 3600 * startDate) / 8760 * 24 * 3600) + 100 * 10^6 and stor4[address(arg1)] > -1 / ((250000 * 3600 * block.timestamp) - (250000 * 3600 * startDate) / 8760 * 24 * 3600) + 100 * 10^6:
            revert with 0, 17
        if (100 * 10^6 * stor4[address(arg1)]) + ((250000 * 3600 * block.timestamp) - (250000 * 3600 * startDate) / 8760 * 24 * 3600 * stor4[address(arg1)]) / 10^9 < stor5[address(arg1)]:
            revert with 0, 17
        return (((100 * 10^6 * stor4[address(arg1)]) + ((250000 * 3600 * block.timestamp) - (250000 * 3600 * startDate) / 8760 * 24 * 3600 * stor4[address(arg1)]) / 10^9) - stor5[address(arg1)])
    if stor4[address(arg1)] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if 10^9 * stor4[address(arg1)] / 10^9 < stor5[address(arg1)]:
        revert with 0, 17
    return ((10^9 * stor4[address(arg1)] / 10^9) - stor5[address(arg1)])
}



}
