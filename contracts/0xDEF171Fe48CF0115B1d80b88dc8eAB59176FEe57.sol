contract main {




// =====================  Runtime code  =====================


#
#  - transferTokens(address arg1, address arg2, uint256 arg3)
#
const getVersion = '5.0.0', 0

const ROUTER_ROLE = 0x7a05a596cb0ce7fdea8a1e1ec73be300bdb35097c944ce1897202f7a13122eb2

const WHITELISTED_ROLE = 0x8429d542926e6695b59ac6fbdcd9b37e8b1aeb757afab06ab60b1bb5878c3b49

const DEFAULT_ADMIN_ROLE = 0


address tokenTransferProxyAddress;
address feeWalletAddress;
mapping of struct stor2;
mapping of address implementation;
mapping of uint8 stor4;
array of uint256 adapterData;
array of uint256 routerData;
mapping of uint8 stor7;
array of struct roleAdmin;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function isAdapterInitialized(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function getFeeWallet() {
    return feeWalletAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function isRouterInitialized(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function getAdapterData(bytes32 arg1) {
    return adapterData[arg1][0 len adapterData[arg1].length]
}

function getRouterData(bytes32 arg1) {
    return routerData[arg1][0 len routerData[arg1].length]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function getTokenTransferProxy() {
    return tokenTransferProxyAddress
}

function getImplementation(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return implementation[Mask(32, 224, arg1)]
}

function setFeeWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'caller is not the admin'
    if not arg1:
        revert with 0, 'Invalid address'
    feeWalletAddress = arg1
}

function setImplementation(bytes4 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(32, 224, arg1)
    require arg2 == arg2
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'caller is not the admin'
    if not roleAdmin[0x7a05a596cb0ce7fdea8a1e1ec73be300bdb35097c944ce1897202f7a13122eb2][1][address(arg2)].field_0:
        revert with 0, 'Router is not whitelisted'
    implementation[Mask(32, 224, arg1)] = arg2
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function _fallback() payable {
    if not implementation[call.func_hash]:
        revert with NotImplementedError(bytes4 rg1), Mask(32, 224, call.func_hash) >> 32, 0
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 96] = 0
    delegate implementation[call.func_hash] with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len mem[96]
        return memory
          from 128
           len mem[96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_60e35507(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'caller is not the admin'
    if not roleAdmin[0x7a05a596cb0ce7fdea8a1e1ec73be300bdb35097c944ce1897202f7a13122eb2][1][address(arg1)].field_0:
        revert with 0, 'Router not whitelisted'
    mem[ceil32(arg2.length) + 196 len floor32(ceil32(arg2.length) + 99)] = initialize(bytes rg1), 0, 0, arg2.length, arg2[all], Mask(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68, -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256
    delegate address(arg1) with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0), mem[arg2.length + 228 len (4 * ceil32(arg2.length)) + -arg2.length + 36]
    if not delegate.return_code:
        revert with 0, 'Failed to initialize router'
    emit RouterInitialized(address(arg1));
}

function initializeAdapter(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'caller is not the admin'
    if not roleAdmin[0x8429d542926e6695b59ac6fbdcd9b37e8b1aeb757afab06ab60b1bb5878c3b49][1][address(arg1)].field_0:
        revert with 0, 'Exchange not whitelisted'
    mem[ceil32(arg2.length) + 196 len floor32(ceil32(arg2.length) + 99)] = initialize(bytes rg1), 0, 0, arg2.length, arg2[all], Mask(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68, -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256
    delegate arg1 with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0), mem[arg2.length + 228 len (4 * ceil32(arg2.length)) + -arg2.length + 36]
    if not delegate.return_code:
        revert with 0, 'Failed to initialize adapter'
    emit AdapterInitialized(arg1);
}

function sub_aa5b2458(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[68] == bool(cd[68])
    require cd[100] == bool(cd[100])
    require cd[132] == uint16(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + ('cd', 164).length + 36 <= calldata.size
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'caller is not the admin'
    if not address(cd[4]):
        revert with 0, 'Invalid partner'
    if stor2[address(cd[4])].field_0:
        revert with 0, 'Already registered'
    if cd[36] <= 0:
        revert with 0, 'Invalid values'
    if cd[36] >= 10000:
        revert with 0, 'Invalid values'
    if uint16(cd[132]) > 10000:
        revert with 0, 'Invalid values'
    stor2[address(cd[4])].field_0 = cd[36]
    stor2[address(cd[4])].field_256 = uint8(bool(cd[68]))
    stor2[address(cd[4])].field_264 = Mask(248, 0, bool(cd[100]))
    stor2[address(cd[4])].field_272 = Mask(240, 16, bool(cd[68])) >> 16
    if not ('cd', 164).length:
        stor2[address(cd[4])].field_512 = 0
        idx = 0
        while stor2[address(cd[4])][2].length + 31 / 32 > idx:
            stor2[address(cd[4])][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor2[address(cd[4])].field_512 = (2 * ('cd', 164).length) + 1
        s = 0
        idx = cd[164] + 36
        while cd[164] + ('cd', 164).length + 36 > idx:
            stor2[address(cd[4])][s + 2].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, ('cd', 164).length + 31) >> 5
        while stor2[address(cd[4])][2].length + 31 / 32 > idx:
            stor2[address(cd[4])][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(cd[4])].field_272 = uint16(cd[132])
    if not ('cd', 196).length:
        stor2[address(cd[4])].field_768 = 0
        idx = 0
        while stor2[address(cd[4])][3].length + 31 / 32 > idx:
            stor2[address(cd[4])][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor2[address(cd[4])].field_768 = (2 * ('cd', 196).length) + 1
        s = 0
        idx = cd[196] + 36
        while cd[196] + ('cd', 196).length + 36 > idx:
            stor2[address(cd[4])][s + 3].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, ('cd', 196).length + 31) >> 5
        while stor2[address(cd[4])][3].length + 31 / 32 > idx:
            stor2[address(cd[4])][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
}

function getPartnerFeeStructure(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[512] = stor2[address(arg1)][2].field_0
    idx = 512
    s = 0
    while stor2[address(arg1)][2].length + 480 > idx:
        mem[idx + 32] = stor2[address(arg1)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[address(arg1)][2].length) + 544] = stor2[address(arg1)][3].field_0
    idx = ceil32(stor2[address(arg1)][2].length) + 544
    s = 0
    while ceil32(stor2[address(arg1)][2].length) + stor2[address(arg1)][3].length + 512 > idx:
        mem[idx + 32] = stor2[address(arg1)][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor2[address(arg1)][2].length) <= stor2[address(arg1)][2].length:
        mem[(2 * ceil32(stor2[address(arg1)][2].length)) + ceil32(stor2[address(arg1)][3].length) + 800] = stor2[address(arg1)][3].length
        mem[(2 * ceil32(stor2[address(arg1)][2].length)) + ceil32(stor2[address(arg1)][3].length) + 832 len ceil32(stor2[address(arg1)][3].length)] = mem[ceil32(stor2[address(arg1)][2].length) + 544 len ceil32(stor2[address(arg1)][3].length)]
        if ceil32(stor2[address(arg1)][3].length) > stor2[address(arg1)][3].length:
            mem[(2 * ceil32(stor2[address(arg1)][2].length)) + ceil32(stor2[address(arg1)][3].length) + stor2[address(arg1)][3].length + 832] = 0
        return 32, stor2[address(arg1)].field_0, 
               bool(stor2[address(arg1)].field_256),
               bool(stor2[address(arg1)].field_264),
               stor2[address(arg1)].field_256,
               192,
               ceil32(stor2[address(arg1)][2].length) + 224,
               stor2[address(arg1)][2].length,
               mem[512 len ceil32(stor2[address(arg1)][2].length)],
               stor2[address(arg1)][3].length,
               mem[ceil32(stor2[address(arg1)][2].length) + 544 len ceil32(stor2[address(arg1)][3].length)]
    mem[ceil32(stor2[address(arg1)][2].length) + ceil32(stor2[address(arg1)][3].length) + stor2[address(arg1)][2].length + 800] = 0
    mem[(2 * ceil32(stor2[address(arg1)][2].length)) + ceil32(stor2[address(arg1)][3].length) + 800] = stor2[address(arg1)][3].length
    mem[(2 * ceil32(stor2[address(arg1)][2].length)) + ceil32(stor2[address(arg1)][3].length) + 832 len ceil32(stor2[address(arg1)][3].length)] = mem[ceil32(stor2[address(arg1)][2].length) + 544 len ceil32(stor2[address(arg1)][3].length)]
    if ceil32(stor2[address(arg1)][3].length) > stor2[address(arg1)][3].length:
        mem[(2 * ceil32(stor2[address(arg1)][2].length)) + ceil32(stor2[address(arg1)][3].length) + stor2[address(arg1)][3].length + 832] = 0
    return 32, stor2[address(arg1)].field_0, 
           bool(stor2[address(arg1)].field_256),
           bool(stor2[address(arg1)].field_264),
           stor2[address(arg1)].field_256,
           192,
           ceil32(stor2[address(arg1)][2].length) + 224,
           stor2[address(arg1)][2].length,
           mem[512 len stor2[address(arg1)][2].length],
           0,
           mem[ceil32(stor2[address(arg1)][2].length) + ceil32(stor2[address(arg1)][3].length) + stor2[address(arg1)][2].length + 832 len ceil32(stor2[address(arg1)][3].length) + ceil32(stor2[address(arg1)][2].length) - stor2[address(arg1)][2].length]
}



}
