contract main {




// =====================  Runtime code  =====================


address owner;
address sub_99119d22Address;
address eggAddress;
address treasuryAddress;
address devAddress;
address farmAddress;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 startDate;

function startDate() payable {
    return startDate
}

function devAddress() payable {
    return devAddress
}

function owner() payable {
    return owner
}

function sub_99119d22(?) payable {
    return sub_99119d22Address
}

function treasuryAddress() payable {
    return treasuryAddress
}

function farmAddress() payable {
    return farmAddress
}

function eggAddress() payable {
    return eggAddress
}

function _fallback() payable {
    revert
}

function devAllocation() payable {
    return stor8, stor9
}

function sub_4f3147ba(?) payable {
    return stor6, stor7
}

function rewardsAllocation() payable {
    return stor12, stor13
}

function reserveAllocation() payable {
    return stor10, stor11
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = arg1
}

function setFarmAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    farmAddress = arg1
}

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0, 'ERC721: caller is not the minter'
    treasuryAddress = arg1
}

function setTokenAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_99119d22Address = arg1
    eggAddress = arg1
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

function sub_81b5359a(?) payable {
    if block.timestamp < startDate:
        revert with 0, 17
    if block.timestamp - startDate / 24 * 3600 >= 1000:
        if stor8 < stor9:
            revert with 0, 17
        return (stor8 - stor9)
    if stor8 / 1000 and block.timestamp - startDate / 24 * 3600 > -1 / stor8 / 1000:
        revert with 0, 17
    if stor8 / 1000 * block.timestamp - startDate / 24 * 3600 < stor9:
        revert with 0, 17
    return ((stor8 / 1000 * block.timestamp - startDate / 24 * 3600) - stor9)
}

function transferToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b439ac74(?) payable {
    require calldata.size - 4 >= 32
    if treasuryAddress != msg.sender:
        revert with 0, 'ERC721: caller is not the minter'
    if stor7 > !arg1:
        revert with 0, 17
    if stor7 + arg1 >= stor6:
        revert with 0, 'Amount exceeds allocation.'
    if stor7 > !arg1:
        revert with 0, 17
    stor7 += arg1
    require ext_code.size(sub_99119d22Address)
    call sub_99119d22Address.0x40c10f19 with:
         gas gas_remaining wei
        args treasuryAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if farmAddress != msg.sender:
        revert with 0, 'Only farm can call this function'
    if stor13 > !arg1:
        revert with 0, 17
    if stor13 + arg1 >= stor12:
        revert with 0, 'Amount exceeds allocation.'
    if stor13 > !arg1:
        revert with 0, 17
    stor13 += arg1
    require ext_code.size(sub_99119d22Address)
    call sub_99119d22Address.0x40c10f19 with:
         gas gas_remaining wei
        args farmAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintReserves(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0, 'ERC721: caller is not the minter'
    if stor11 > !arg2:
        revert with 0, 17
    if stor11 + arg2 >= stor10:
        revert with 0, 'Amount exceeds allocation.'
    if stor11 > !arg2:
        revert with 0, 17
    stor11 += arg2
    require ext_code.size(sub_99119d22Address)
    call sub_99119d22Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintDev(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'ERC721: caller is not the minter'
    if block.timestamp < startDate:
        revert with 0, 17
    if block.timestamp - startDate / 24 * 3600 >= 1000:
        if stor8 < stor9:
            revert with 0, 17
        if stor9 > !arg2:
            revert with 0, 17
        if stor9 + arg2 >= stor8 - stor9:
            revert with 0, 'Amount exceeds allocation.'
    else:
        if stor8 / 1000 and block.timestamp - startDate / 24 * 3600 > -1 / stor8 / 1000:
            revert with 0, 17
        if stor8 / 1000 * block.timestamp - startDate / 24 * 3600 < stor9:
            revert with 0, 17
        if stor9 > !arg2:
            revert with 0, 17
        if stor9 + arg2 >= (stor8 / 1000 * block.timestamp - startDate / 24 * 3600) - stor9:
            revert with 0, 'Amount exceeds allocation.'
    if stor9 > !arg2:
        revert with 0, 17
    stor9 += arg2
    require ext_code.size(sub_99119d22Address)
    call sub_99119d22Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
