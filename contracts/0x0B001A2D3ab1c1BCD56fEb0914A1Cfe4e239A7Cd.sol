contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferWithData(address arg1, uint256 arg2, bytes arg3)
#  - sub_2d10fa28(?)
#  - transferFromWithData(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5)
#  - transfer(address arg1, uint256 arg2)
#  - issue(address arg1, uint256 arg2, bytes arg3)
#  - redeem(uint256 arg1, bytes arg2)
#  - redeemFrom(address arg1, uint256 arg2, bytes arg3, bytes arg4)
#
const decimals = 0


uint8 ownerCounter; offset 160
address owner;
mapping of uint8 stor1;
uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 checkCount;
address sub_c8614aecAddress;
address stor6;
address stor7;
array of struct stor8;
mapping of uint256 stor10;
array of struct stor11;
array of struct stor12;
uint256 granularity;
uint256 totalSupply;
uint256 _cap;
uint8 stor16;
uint8 stor16; offset 8
uint8 stor16; offset 16
mapping of uint256 balanceOf;
array of struct tokenHolders;
mapping of uint8 is;
uint8 stor20;
mapping of uint8 stor21;
array of struct stor22;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of uint256 allowance;

function _cap() payable {
    return _cap
}

function totalSupply() payable {
    return totalSupply
}

function ownerCounter() payable {
    return ownerCounter
}

function granularity() payable {
    return granularity
}

function checkCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return checkCount[address(arg1)]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function certificateSigners(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function owner() payable {
    return owner
}

function tokenHolders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenHolders.length
    return tokenHolders[arg1].field_0
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1
    return bool(stor24[address(arg1)])
}

function sub_c8614aec(?) payable {
    return sub_c8614aecAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function certificateControllerActivated() payable {
    return bool(stor2)
}

function isAddressExist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return is[arg1]
}

function closeERC1400() payable {
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isSuperAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only SuperAdmin can destroy Contract'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function basicCap() payable {
    if _cap and stor20 > -1 / _cap:
        revert with 0, 17
    return (_cap * stor20 / 100)
}

function renounceMinter() payable {
    require msg.sender
    require stor24[address(msg.sender)]
    stor24[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function canImplementInterfaceForAddress(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor1[arg1]:
        return 0
    return sha3('ERC1820_ACCEPT_MAGIC')
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0, 'A5'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender
    require stor24[address(msg.sender)]
    require arg1
    require not stor24[address(arg1)]
    stor24[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function isOperator(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        return True
    if stor21[address(arg1)][address(arg2)]:
        return bool(stor21[address(arg1)][address(arg2)])
    if not uint8(stor16.field_16):
        return bool(uint8(stor16.field_16))
    return bool(stor23[address(arg1)])
}

function cap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor16.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only STO deployer set Cap ERC11400 Value and Once a time'
    if arg1 <= 0:
        revert with 0, 'Cap must be greater than 0'
    _cap = arg1
    if uint8(stor16.field_0) == 255:
        revert with 0, 17
    uint8(stor16.field_0) = uint8(uint8(stor16.field_0) + 1)
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
    if 1 > -ownerCounter + 255:
        revert with 0, 17
    ownerCounter = uint8(ownerCounter + 1)
}

function sub_9445ff28(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    stor6 = address(arg1)
}

function changeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    sub_c8614aecAddress = arg1
    return 1
}

function sub_1783c147(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    if not ext_code.size(arg1):
        if stor10[address(arg1)] < arg2:
            revert with 0, 17
        stor10[address(arg1)] -= arg2
    return 1
}

function sub_0c014c68(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    if not ext_code.size(arg1):
        if stor10[address(arg1)] > !arg2:
            revert with 0, 17
        stor10[address(arg1)] += arg2
    return 1
}

function getInvestors() payable {
    if stor8.length:
        mem[128] = address(stor8.field_0)
        if (32 * stor8.length) + 32 > 64:
            mem[160] = address(stor8.field_256)
            idx = 160
            s = 1
            while (32 * stor8.length) + 96 > idx:
                mem[idx + 32] = stor8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor8.length) + 128] = 32
    mem[(32 * stor8.length) + 160] = stor8.length
    idx = 0
    s = 128
    t = (32 * stor8.length) + 192
    while idx < stor8.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor8.length) + 128
       len (96 * stor8.length) + 64
}

function controllers() payable {
    if stor22.length:
        mem[128] = address(stor22.field_0)
        if (32 * stor22.length) + 32 > 64:
            mem[160] = address(stor22.field_256)
            idx = 160
            s = 1
            while (32 * stor22.length) + 96 > idx:
                mem[idx + 32] = stor22[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor22.length) + 128] = 32
    mem[(32 * stor22.length) + 160] = stor22.length
    idx = 0
    s = 128
    t = (32 * stor22.length) + 192
    while idx < stor22.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor22.length) + 128
       len (96 * stor22.length) + 64
}

function migrate(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    call 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), sha3(327360762317738284377454), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        uint8(stor16.field_8) = 1
}

function revokeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 201:
        revert with 0, 'Security Token: Cannot send tokens outside AKRU'
    if ext_call.return_data[0] >= 121:
        if ext_call.return_data[0] != 140:
            revert with 0, 'Security Token: Cannot send tokens outside AKRU'
    require arg1 != msg.sender
    stor21[address(arg1)][msg.sender] = 0
    emit RevokedOperator(arg1, msg.sender);
}

function authorizeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isWhitelistedUser(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 201:
        revert with 0, 'Security Token: Cannot send tokens outside AKRU'
    if ext_call.return_data[0] >= 121:
        if ext_call.return_data[0] != 140:
            revert with 0, 'Security Token: Cannot send tokens outside AKRU'
    require arg1 != msg.sender
    stor21[address(arg1)][msg.sender] = 1
    emit AuthorizedOperator(arg1, msg.sender);
}

function sub_5a7a05b2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    if not ext_code.size(arg1):
        if stor10[address(arg1)] < arg2:
            revert with 0, 17
        stor10[address(arg1)] -= arg2
    return 1
}

function sub_86a84904(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    if not ext_code.size(arg1):
        if stor10[address(arg1)] > !arg2:
            revert with 0, 17
        stor10[address(arg1)] += arg2
    return 1
}

function addFromExchange(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    if not ext_code.size(arg1):
        if stor10[address(arg1)] > !arg2:
            revert with 0, 17
        stor10[address(arg1)] += arg2
    return 1
}

function updateFromExchange(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    if not ext_code.size(arg1):
        if stor10[address(arg1)] < arg2:
            revert with 0, 17
        stor10[address(arg1)] -= arg2
    return 1
}

function sub_6870713e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    mem[ceil32(return_data.size) + 128 len arg2.length] = arg2[all]
    mem[ceil32(return_data.size) + arg2.length + 128] = 0
    mem[ceil32(return_data.size) + ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[ceil32(return_data.size) + arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(return_data.size) + ceil32(arg2.length) + arg2.length + 160] = 0
    mem[ceil32(return_data.size) + ceil32(arg2.length) + 128] = arg2.length
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    call 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), sha3(mem[ceil32(return_data.size) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(return_data.size) + arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAllTokenHolders() payable {
    mem[100] = msg.sender
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    mem[64] = ceil32(return_data.size) + (32 * tokenHolders.length) + 128
    mem[ceil32(return_data.size) + 96] = tokenHolders.length
    if not tokenHolders.length:
        mem[ceil32(return_data.size) + (32 * tokenHolders.length) + 128] = 32
        mem[ceil32(return_data.size) + (32 * tokenHolders.length) + 160] = tokenHolders.length
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + (32 * tokenHolders.length) + 192
        while idx < tokenHolders.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from ceil32(return_data.size) + (32 * tokenHolders.length) + 128
           len (96 * tokenHolders.length) + 64
    mem[ceil32(return_data.size) + 128] = address(tokenHolders.field_0)
    idx = ceil32(return_data.size) + 128
    s = 0
    while ceil32(return_data.size) + (32 * tokenHolders.length) + 96 > idx:
        mem[idx + 32] = tokenHolders[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + (32 * tokenHolders.length) + 128] = 32
    mem[ceil32(return_data.size) + (32 * tokenHolders.length) + 160] = tokenHolders.length
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < tokenHolders.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len ceil32(return_data.size) + (64 * tokenHolders.length) + -mem[64] + 192
}

function name() payable {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function symbol() payable {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function getStoredAllData() payable {
    mem[100] = msg.sender
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only admin is allowed to send'
    if tokenHolders.length > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = tokenHolders.length
    if not tokenHolders.length:
        idx = 0
        while idx < tokenHolders.length:
            mem[0] = tokenHolders[idx].field_0
            mem[32] = 17
            if idx >= tokenHolders.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = balanceOf[stor18[idx].field_0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = ceil32(return_data.size) + (64 * tokenHolders.length) + 160
        mem[ceil32(return_data.size) + (32 * tokenHolders.length) + 128] = tokenHolders.length
        if not tokenHolders.length:
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 160] = 64
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 224] = tokenHolders.length
            idx = 0
            s = ceil32(return_data.size) + (32 * tokenHolders.length) + 160
            t = mem[64] + 96
            while idx < tokenHolders.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 192] = (32 * tokenHolders.length) + 96
            mem[ceil32(return_data.size) + (98 * tokenHolders.length) + 256] = mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (98 * tokenHolders.length) + 288 len 32 * mem[ceil32(return_data.size) + 96]] = mem[ceil32(return_data.size) + 128 len 32 * mem[ceil32(return_data.size) + 96]]
            var29001 = mem[ceil32(return_data.size) + 96]
        else:
            mem[ceil32(return_data.size) + (32 * tokenHolders.length) + 160] = address(tokenHolders.field_0)
            idx = ceil32(return_data.size) + (32 * tokenHolders.length) + 160
            s = 0
            while ceil32(return_data.size) + (64 * tokenHolders.length) + 128 > idx:
                mem[idx + 32] = tokenHolders[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 160] = 64
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 224] = tokenHolders.length
            idx = 0
            s = ceil32(return_data.size) + (32 * tokenHolders.length) + 160
            t = mem[64] + 96
            while idx < tokenHolders.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 192] = (32 * tokenHolders.length) + 96
            mem[ceil32(return_data.size) + (98 * tokenHolders.length) + 256] = mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (98 * tokenHolders.length) + 288 len 32 * mem[ceil32(return_data.size) + 96]] = mem[ceil32(return_data.size) + 128 len 32 * mem[ceil32(return_data.size) + 96]]
    else:
        mem[ceil32(return_data.size) + 128 len 32 * tokenHolders.length] = call.data[calldata.size len 32 * tokenHolders.length]
        idx = 0
        while idx < tokenHolders.length:
            mem[0] = tokenHolders[idx].field_0
            mem[32] = 17
            if idx >= tokenHolders.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = balanceOf[stor18[idx].field_0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = ceil32(return_data.size) + (64 * tokenHolders.length) + 160
        mem[ceil32(return_data.size) + (32 * tokenHolders.length) + 128] = tokenHolders.length
        if not tokenHolders.length:
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 160] = 64
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 224] = tokenHolders.length
            idx = 0
            s = ceil32(return_data.size) + (32 * tokenHolders.length) + 160
            t = mem[64] + 96
            while idx < tokenHolders.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 192] = (32 * tokenHolders.length) + 96
            mem[ceil32(return_data.size) + (98 * tokenHolders.length) + 256] = mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (98 * tokenHolders.length) + 288 len 32 * mem[ceil32(return_data.size) + 96]] = mem[ceil32(return_data.size) + 128 len 32 * mem[ceil32(return_data.size) + 96]]
            var30001 = mem[ceil32(return_data.size) + 96]
        else:
            mem[ceil32(return_data.size) + (32 * tokenHolders.length) + 160] = address(tokenHolders.field_0)
            idx = ceil32(return_data.size) + (32 * tokenHolders.length) + 160
            s = 0
            while ceil32(return_data.size) + (64 * tokenHolders.length) + 128 > idx:
                mem[idx + 32] = tokenHolders[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 160] = 64
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 224] = tokenHolders.length
            idx = 0
            s = ceil32(return_data.size) + (32 * tokenHolders.length) + 160
            t = mem[64] + 96
            while idx < tokenHolders.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (64 * tokenHolders.length) + 192] = (32 * tokenHolders.length) + 96
            mem[ceil32(return_data.size) + (98 * tokenHolders.length) + 256] = mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (98 * tokenHolders.length) + 288 len 32 * mem[ceil32(return_data.size) + 96]] = mem[ceil32(return_data.size) + 128 len 32 * mem[ceil32(return_data.size) + 96]]
    return memory
      from mem[64]
       len ceil32(return_data.size) + (98 * tokenHolders.length) + (32 * mem[ceil32(return_data.size) + 96]) + -mem[64] + 288
}

function sub_ed178aad(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[100] = msg.sender
    require ext_code.size(sub_c8614aecAddress)
    staticcall sub_c8614aecAddress.0x2f54bf6e with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if not stor8.length:
            revert with 0, ' There is no any Investor to distribute dividends'
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'You did not have this much AKUSD'
        s = 0
        t = 0
        idx = 0
        while uint8(idx) < stor8.length:
            if uint8(t) == 255:
                revert with 0, 17
            if uint8(idx) >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            mem[mem[64] + 4] = stor8[uint8(idx)].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args stor8[uint8(idx)].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _65 = mem[_63]
            if uint8(idx) >= stor8.length:
                revert with 0, 50
            mem[0] = stor8[uint8(idx)].field_0
            mem[32] = 10
            if _65 > !stor10[stor8[uint8(idx)].field_0]:
                revert with 0, 17
            if _65 + stor10[stor8[uint8(idx)].field_0] < 1:
                if uint8(idx) == 255:
                    revert with 0, 17
                s = s
                t = uint8(t) + 1
                idx = uint8(idx) + 1
                continue 
            if arg2 and _65 + stor10[stor8[uint8(idx)].field_0] > -1 / arg2:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if (_65 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3 >= 1:
                if uint8(idx) >= stor8.length:
                    revert with 0, 50
                mem[0] = 8
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor8[uint8(idx)].field_0
                mem[mem[64] + 68] = (_65 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3
                require ext_code.size(address(arg1))
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor8[uint8(idx)].field_0, (_65 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _77 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_77] == bool(mem[_77])
                if uint8(idx) >= stor8.length:
                    revert with 0, 50
                mem[0] = 8
                mem[mem[64]] = stor7
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = stor8[uint8(idx)].field_0
                mem[mem[64] + 96] = (_65 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3
                mem[mem[64] + 128] = 160
                mem[mem[64] + 160] = 20
                mem[mem[64] + 192] = 0x4469766964656e6473207472616e736665726564000000000000000000000000
                emit 0xbf44f94b: stor7, msg.sender, stor8[uint8(idx)].field_0, (_65 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3, 160, 20, 0x4469766964656e6473207472616e736665726564000000000000000000000000
            if uint8(idx) == 255:
                revert with 0, 17
            s = (_65 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3
            t = uint8(t) + 1
            idx = uint8(idx) + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(sub_c8614aecAddress)
        staticcall sub_c8614aecAddress.isAdmin(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Only Owner or Admin is allowed to send'
        if not stor8.length:
            revert with 0, ' There is no any Investor to distribute dividends'
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'You did not have this much AKUSD'
        s = 0
        t = 0
        idx = 0
        while uint8(idx) < stor8.length:
            if uint8(t) == 255:
                revert with 0, 17
            if uint8(idx) >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            mem[mem[64] + 4] = stor8[uint8(idx)].field_0
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args stor8[uint8(idx)].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _66 = mem[_64]
            if uint8(idx) >= stor8.length:
                revert with 0, 50
            mem[0] = stor8[uint8(idx)].field_0
            mem[32] = 10
            if _66 > !stor10[stor8[uint8(idx)].field_0]:
                revert with 0, 17
            if _66 + stor10[stor8[uint8(idx)].field_0] < 1:
                if uint8(idx) == 255:
                    revert with 0, 17
                s = s
                t = uint8(t) + 1
                idx = uint8(idx) + 1
                continue 
            if arg2 and _66 + stor10[stor8[uint8(idx)].field_0] > -1 / arg2:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if (_66 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3 >= 1:
                if uint8(idx) >= stor8.length:
                    revert with 0, 50
                mem[0] = 8
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor8[uint8(idx)].field_0
                mem[mem[64] + 68] = (_66 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3
                require ext_code.size(address(arg1))
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor8[uint8(idx)].field_0, (_66 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_78] == bool(mem[_78])
                if uint8(idx) >= stor8.length:
                    revert with 0, 50
                mem[0] = 8
                mem[mem[64]] = stor7
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = stor8[uint8(idx)].field_0
                mem[mem[64] + 96] = (_66 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3
                mem[mem[64] + 128] = 160
                mem[mem[64] + 160] = 20
                mem[mem[64] + 192] = 0x4469766964656e6473207472616e736665726564000000000000000000000000
                emit 0xbf44f94b: stor7, msg.sender, stor8[uint8(idx)].field_0, (_66 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3, 160, 20, 0x4469766964656e6473207472616e736665726564000000000000000000000000
            if uint8(idx) == 255:
                revert with 0, 17
            s = (_66 * arg2) + (stor10[stor8[uint8(idx)].field_0] * arg2) / arg3
            t = uint8(t) + 1
            idx = uint8(idx) + 1
            continue 
}



}
