contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#
address owner;
address DAIAddress;
address sub_2739dd82Address;
address sub_138cc1fcAddress;
address routerAddress;
address daoAddress;
uint256 price;
uint256 maxAllocation;
uint256 sub_e93ed224;
uint256 totalDebt;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint8 stor12; offset 24
uint8 stor12; offset 32
uint256 stor12; offset 32
mapping of struct userInfo;
mapping of uint8 stor14;
mapping of uint256 sub_fba50126;

function ended() payable {
    return bool(uint8(stor12.field_8))
}

function sub_138cc1fc(?) payable {
    return sub_138cc1fcAddress
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, bool(userInfo[arg1].field_512)
}

function started() payable {
    return bool(uint8(stor12.field_0))
}

function sub_2739dd82(?) payable {
    return sub_2739dd82Address
}

function dao() payable {
    return daoAddress
}

function sub_7508f578(?) payable {
    return bool(uint8(stor12.field_24))
}

function sub_77bd1f28(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[arg1])
}

function contractPaused() payable {
    return bool(uint8(stor12.field_32))
}

function owner() payable {
    return owner
}

function maxAllocation() payable {
    return maxAllocation
}

function price() payable {
    return price
}

function claimable() payable {
    return bool(uint8(stor12.field_16))
}

function DAI() payable {
    return DAIAddress
}

function sub_e93ed224(?) payable {
    return sub_e93ed224
}

function router() payable {
    return routerAddress
}

function sub_fba50126(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fba50126[arg1]
}

function totalDebt() payable {
    return totalDebt
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

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 1
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 0
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(224, 0, stor12.field_32) = Mask(224, 0, not uint8(stor12.field_32))
    return bool(0 or uint8(not uint8(stor12.field_32)))
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor12.field_0):
        revert with 0, 'Sale has already started'
    uint8(stor12.field_0) = 1
    emit SaleStarted(block.number);
}

function end() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor12.field_0):
        revert with 0, 'Sale has not started'
    if uint8(stor12.field_8):
        revert with 0, 'Sale has already ended'
    uint8(stor12.field_8) = 1
    emit SaleEnded(block.number);
}

function sub_80fbd162(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor12.field_8):
        revert with 0, 'Sale has not ended'
    if uint8(stor12.field_16):
        revert with 0, 'Claim has already been unlocked'
    uint8(stor12.field_16) = 1
    emit 0xd82fec69: block.number
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

function sub_0799601e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args daoAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_22bb5cf0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor14[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender is not whitelisted user'
    if userInfo[address(arg1)].field_0 > maxAllocation:
        revert with 0, 'SafeMath: subtraction overflow'
    if maxAllocation < userInfo[address(arg1)].field_0:
        revert with 0, 17
    return (maxAllocation - userInfo[address(arg1)].field_0)
}

function sub_72941316(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > 333:
        revert with 0, 'too many addresses'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 14
        stor14[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_9a7ccbd3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(DAIAddress)
    staticcall DAIAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_138cc1fcAddress)
    call sub_138cc1fcAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_138cc1fcAddress)
    call sub_138cc1fcAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(DAIAddress)
    call DAIAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 1 > !block.timestamp:
        revert with 0, 17
    require ext_code.size(routerAddress)
    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args sub_138cc1fcAddress, DAIAddress, arg1, ext_call.return_data[0], 1, 1, daoAddress, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
