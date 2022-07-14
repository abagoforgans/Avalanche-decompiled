contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#
const sub_355f2863(?) = 10^6


address owner;
uint256 stor1;
address sub_f514bf42Address;
address WAVAXAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address devaddr;
mapping of struct userInfo;
mapping of uint8 stor6;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function WAVAX() payable {
    return WAVAXAddress
}

function owner() payable {
    return owner
}

function claimable() payable {
    return bool(uint8(stor4.field_160))
}

function sub_c0f074b9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userInfo[address(arg1)].field_256
}

function devaddr() payable {
    return devaddr
}

function Whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function sub_f514bf42(?) payable {
    return sub_f514bf42Address
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

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function addWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function setClaimable(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
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

function sub_69beeb13(?) payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor4.field_160):
        revert with 0, 'not claimable yet'
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0, 'not whitelisted'
    userInfo[address(msg.sender)].field_256 = 0
    require ext_code.size(sub_f514bf42Address)
    staticcall sub_f514bf42Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_f514bf42Address)
    if userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
        call sub_f514bf42Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, userInfo[address(msg.sender)].field_256
    else:
        call sub_f514bf42Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x1139a2b6: userInfo[address(msg.sender)].field_256
    stor1 = 1
}



}
