contract main {




// =====================  Runtime code  =====================


#
#  - deposit(bytes32 arg1, uint8 arg2, uint64 arg3, address arg4, bytes arg5)
#  - fundERC20(address arg1, address arg2, uint256 arg3)
#  - withdraw(address arg1, address arg2, uint256 arg3)
#  - executeProposal(bytes32 arg1, bytes arg2)
#
address _bridgeAddress;
mapping of address _resourceIDToTokenContract;
mapping of uint256 _tokenContract;
mapping of uint8 stor3;
mapping of uint8 stor4;
address owner;
address routerAddress;
address sub_d8ac49cfAddress;
mapping of struct stor8;

function _resourceIDToTokenContractAddress(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return _resourceIDToTokenContract[arg1]
}

function _bridgeAddress() {
    return _bridgeAddress
}

function _burnList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function _contractWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function _tokenContractAddressToResourceID(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _tokenContract[arg1]
}

function sub_d8ac49cf(?) {
    return sub_d8ac49cfAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function setResource(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    _resourceIDToTokenContract[arg1] = arg2
    _tokenContract[address(arg2)] = arg1
    stor3[address(arg2)] = 1
}

function setBurnable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'provided contract is not whitelisted'
    stor4[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _depositRecords(uint8 arg1, uint64 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[128] = stor8[arg1][arg2][2].field_0
    idx = 128
    s = 0
    while stor8[arg1][arg2][2].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor8[arg1][arg2].field_0, 
           stor8[arg1][arg2].field_0,
           stor8[arg1][arg2].field_256,
           Array(len=stor8[arg1][arg2][2].length, data=mem[128 len ceil32(stor8[arg1][arg2][2].length)])
}

function getDepositRecord(uint64 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[384] = stor8[arg2 << 248][arg1 << 192][2].field_0
    idx = 384
    s = 0
    while stor8[arg2 << 248][arg1 << 192][2].length + 352 > idx:
        mem[idx + 32] = stor8[arg2 << 248][arg1 << 192][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, stor8[arg2 << 248][arg1 << 192].field_0, 
           stor8[arg2 << 248][arg1 << 192].field_0,
           stor8[arg2 << 248][arg1 << 192].field_256,
           128,
           stor8[arg2 << 248][arg1 << 192][2].length,
           mem[384 len ceil32(stor8[arg2 << 248][arg1 << 192][2].length)]
}



}
