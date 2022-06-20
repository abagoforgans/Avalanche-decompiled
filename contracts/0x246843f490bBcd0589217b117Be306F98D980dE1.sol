contract main {




// =====================  Runtime code  =====================


#
#  - sub_437a7c7c(?)
#
const DEFAULT_ADMIN_ROLE = 0


uint256 stor1;
address stor2;
address stor3;
array of struct stor4;
uint256 stor5; offset 32
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
address stor10;
array of struct stor11;
uint256 stor12; offset 32
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;
address stor16;
address stor17;
array of struct stor18;
uint256 stor19; offset 32
uint256 stor19;
uint256 stor20;
uint256 stor21;
address stor22;
address stor23;
address stor24;
array of struct stor25;
uint256 stor26; offset 32
uint256 stor26;
uint256 stor27;
uint256 stor28;
address stor29;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_be7000cb(?) {
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    if not roleAdmin[uint256(roleAdmin.field_512)][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[1][address(arg1)].field_0:
        uint256(roleAdmin.field_0)++
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0 = arg1
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160 = 0
        roleAdmin[1][address(arg1)].field_0 = uint256(roleAdmin.field_0)
        emit RoleGranted(0, arg1, msg.sender);
}

function sub_a46aa4c6(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, tx.origin, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d3e3422c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        if cd[36] <= eth.balance(cd[((32 * idx) + cd[4] + 36)]):
            idx = idx + 1
            continue 
        require idx < ('cd', 4).length
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]) wei
             gas gas_remaining wei
        if return_data.size:
            _8 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_8] = return_data.size
            mem[_8 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            idx = idx + 1
            continue 
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
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
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
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

function sub_f2744d9b(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    stor2 = address(cd[4])
    stor3 = address(cd[36])
    stor4.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor4[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint256(stor5.field_0) = cd[100]
    stor6 = cd[132]
    stor7 = cd[164]
    stor8 = address(cd[196])
    if address(cd[4]):
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_979ab371(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    stor9 = address(cd[4])
    stor10 = address(cd[36])
    stor11.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor11.length > idx:
            stor11[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor11[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor11.length > idx:
            stor11[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint256(stor12.field_0) = cd[100]
    stor13 = cd[132]
    stor14 = cd[164]
    stor15 = address(cd[196])
    if address(cd[4]):
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_2e2b1201(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    stor16 = address(cd[4])
    stor17 = address(cd[36])
    stor18.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor18.length > idx:
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor18[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor18.length > idx:
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint256(stor19.field_0) = cd[100]
    stor20 = cd[132]
    stor21 = cd[164]
    stor22 = address(cd[196])
    if address(cd[4]):
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_b124fb32(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    stor23 = address(cd[4])
    stor24 = address(cd[36])
    stor25.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor25.length > idx:
            stor25[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor25[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor25.length > idx:
            stor25[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint256(stor26.field_0) = cd[100]
    stor27 = cd[132]
    stor28 = cd[164]
    stor29 = address(cd[196])
    if address(cd[4]):
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_0087cd0b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        if not roleAdmin[uint256(roleAdmin.field_512)][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                        mem[211 len 17]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(0) + 1
        if not roleAdmin[1][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            uint256(roleAdmin.field_0)++
            stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
            stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(0) + 1
            roleAdmin[1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 = uint256(roleAdmin.field_0)
            emit RoleGranted(0, address(cd[((32 * idx) + cd[4] + 36)]), msg.sender);
        idx = idx + 1
        continue 
}

function sub_a2573e04(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    idx = 0
    while idx < ('cd', 36).length:
        _20 = mem[64]
        mem[mem[64] + 64] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 96] = cd[68]
        _21 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        mem[_20 + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        _23 = mem[_21]
        t = _21 + 32
        u = _20 + 164
        s = mem[_21]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_20 + floor32(mem[_21]) + 164] = mem[_21 + floor32(mem[_21]) + -(mem[_21] % 32) + 64 len mem[_21] % 32] or Mask(8 * -(mem[_21] % 32) + 32, -(8 * -(mem[_21] % 32) + 32) + 256, mem[_20 + floor32(mem[_21]) + 164])
        _37 = mem[64]
        mem[mem[64]] = _23 + _20 + -mem[64] + 132
        mem[64] = _23 + _20 + 164
        _39 = mem[_37]
        t = _37 + 32
        u = _23 + _20 + 164
        s = mem[_37]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_23 + _20 + floor32(mem[_37]) + 164] = mem[_37 + -(mem[_37] % 32) + floor32(mem[_37]) + 64 len mem[_37] % 32] or Mask(8 * -(mem[_37] % 32) + 32, -(8 * -(mem[_37] % 32) + 32) + 256, mem[_23 + _20 + floor32(mem[_37]) + 164])
        call address(cd[4]).mem[_23 + _20 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_23 + _20 + 168 len _39 - 4]
        if return_data.size:
            mem[64] = _23 + _20 + ceil32(return_data.size) + 165
            mem[_23 + _20 + 164] = return_data.size
            mem[_23 + _20 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            idx = idx + 1
            continue 
}

function sub_31f6842e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    idx = 0
    while idx < arg4:
        _20 = mem[64]
        mem[mem[64] + 96] = arg5
        mem[mem[64] + 128] = 6644285921
        mem[mem[64] + 64] = 128
        mem[_20 + 160] = arg2.length
        mem[_20 + 192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[_20 + (32 * arg2.length) + 192] = 0
        _21 = mem[64]
        mem[mem[64]] = _20 + floor32(arg2.length) + -mem[64] + 160
        mem[64] = _20 + floor32(arg2.length) + 192
        mem[_20 + floor32(arg2.length) + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        _23 = mem[_21]
        t = _21 + 32
        u = _20 + floor32(arg2.length) + 228
        s = mem[_21]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_20 + floor32(arg2.length) + floor32(mem[_21]) + 228] = mem[_21 + floor32(mem[_21]) + -(mem[_21] % 32) + 64 len mem[_21] % 32] or Mask(8 * -(mem[_21] % 32) + 32, -(8 * -(mem[_21] % 32) + 32) + 256, mem[_20 + floor32(arg2.length) + floor32(mem[_21]) + 228])
        mem[_20 + floor32(arg2.length) + 192] = _23 + 4
        mem[64] = _23 + _20 + floor32(arg2.length) + 228
        t = _20 + floor32(arg2.length) + 224
        u = _23 + _20 + floor32(arg2.length) + 228
        s = _23 + 4
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_23 + _20 + floor32(arg2.length) + floor32(_23 + 4) + 228] = mem[_20 + floor32(arg2.length) + -(_23 + 4 % 32) + floor32(_23 + 4) + 256 len _23 + 4 % 32] or Mask(8 * -(_23 + 4 % 32) + 32, -(8 * -(_23 + 4 % 32) + 32) + 256, mem[_23 + _20 + floor32(arg2.length) + floor32(_23 + 4) + 228])
        call arg1.mem[_23 + _20 + floor32(arg2.length) + 228 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[_23 + _20 + floor32(arg2.length) + 232 len _23]
        if return_data.size:
            mem[64] = _23 + _20 + floor32(arg2.length) + ceil32(return_data.size) + 229
            mem[_23 + _20 + floor32(arg2.length) + 228] = return_data.size
            mem[_23 + _20 + floor32(arg2.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            idx = idx + 1
            continue 
}

function sub_0bd9c249(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[100] = arg2
    mem[132] = stor1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), stor1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg4:
        _23 = mem[64]
        mem[mem[64] + 64] = arg5
        mem[mem[64] + 128] = arg6
        mem[mem[64] + 160] = 6644285921
        mem[mem[64] + 96] = 160
        mem[mem[64] + 192] = arg3.length
        mem[mem[64] + 224 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[mem[64] + (32 * arg3.length) + 224] = 0
        _24 = mem[64]
        mem[mem[64]] = floor32(arg3.length) + 192
        mem[64] = mem[64] + floor32(arg3.length) + 224
        mem[_23 + floor32(arg3.length) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        _26 = mem[_24]
        t = _24 + 32
        u = _23 + floor32(arg3.length) + 260
        s = mem[_24]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_23 + floor32(arg3.length) + floor32(mem[_24]) + 260] = mem[_24 + floor32(mem[_24]) + -(mem[_24] % 32) + 64 len mem[_24] % 32] or Mask(8 * -(mem[_24] % 32) + 32, -(8 * -(mem[_24] % 32) + 32) + 256, mem[_23 + floor32(arg3.length) + floor32(mem[_24]) + 260])
        _40 = mem[64]
        mem[mem[64]] = _26 + _23 + floor32(arg3.length) + -mem[64] + 228
        mem[64] = _26 + _23 + floor32(arg3.length) + 260
        _42 = mem[_40]
        t = _40 + 32
        u = _26 + _23 + floor32(arg3.length) + 260
        s = mem[_40]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_26 + _23 + floor32(arg3.length) + floor32(mem[_40]) + 260] = mem[_40 + -(mem[_40] % 32) + floor32(mem[_40]) + 64 len mem[_40] % 32] or Mask(8 * -(mem[_40] % 32) + 32, -(8 * -(mem[_40] % 32) + 32) + 256, mem[_26 + _23 + floor32(arg3.length) + floor32(mem[_40]) + 260])
        call arg2.mem[_26 + _23 + floor32(arg3.length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[_26 + _23 + floor32(arg3.length) + 264 len _42 - 4]
        if return_data.size:
            mem[64] = _26 + _23 + floor32(arg3.length) + ceil32(return_data.size) + 261
            mem[_26 + _23 + floor32(arg3.length) + 260] = return_data.size
            mem[_26 + _23 + floor32(arg3.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            idx = idx + 1
            continue 
}

function sub_3a0316eb(?) payable {
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 160] = uint256(stor5.field_0)
        mem[(32 * stor4.length) + 192] = 64
        mem[(32 * stor4.length) + 224] = stor4.length
        mem[(32 * stor4.length) + 256 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        mem[(32 * stor4.length) + 128] = (32 * stor4.length) + 96
        mem[(64 * stor4.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor4.length) + 292 len floor32((32 * stor4.length) + 96)] = uint256(stor5.field_0), Array(len=stor4.length, data=mem[(32 * stor4.length) + 256 len floor32((32 * stor4.length) + 96) - 96])
        mem[(64 * stor4.length) + floor32((32 * stor4.length) + 96) + -((32 * stor4.length) + 96 % 32) + 324 len (32 * stor4.length) + 96 % 32] = mem[(32 * stor4.length) + floor32((32 * stor4.length) + 96) + -((32 * stor4.length) + 96 % 32) + 192 len (32 * stor4.length) + 96 % 32]
        mem[(64 * stor4.length) + 256] = (32 * stor4.length) + 100
        mem[(98 * stor4.length) + 388 len floor32((32 * stor4.length) + 100)] = 0, mem[(64 * stor4.length) + 292 len floor32((32 * stor4.length) + 100) - 4]
        mem[(98 * stor4.length) + floor32((32 * stor4.length) + 100) + -((32 * stor4.length) + 100 % 32) + 420 len (32 * stor4.length) + 100 % 32] = mem[(64 * stor4.length) + -((32 * stor4.length) + 100 % 32) + floor32((32 * stor4.length) + 100) + 320 len (32 * stor4.length) + 100 % 32]
        call stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(98 * stor4.length) + 392 len (32 * stor4.length) + 96]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor4.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor4.length) + 392] = uint256(stor5.field_0)
                mem[(98 * stor4.length) + 424] = 64
                mem[(98 * stor4.length) + 456] = stor4.length
                mem[(98 * stor4.length) + 488 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
                require ext_code.size(stor3)
                staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor4.length) + 392 len (32 * stor4.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor4.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _489 = mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32)
                require mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
                require mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
                require mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388] <= 4294967296 and mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor4.length) + ceil32(return_data.size) + 388] = mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388]
                _502 = mem[(98 * stor4.length) + _489 + 388]
                mem[(98 * stor4.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor4.length) + _489 + 388])] = mem[(98 * stor4.length) + _489 + 420 len floor32(mem[(98 * stor4.length) + _489 + 388])]
                mem[64] = (32 * _502) + (98 * stor4.length) + ceil32(return_data.size) + 420
                require stor4.length - 1 < mem[(98 * stor4.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor4.length - 1) + (98 * stor4.length) + ceil32(return_data.size) + 420] >= stor7:
                    idx = 0
                    while idx < stor6:
                        _719 = mem[64]
                        mem[mem[64] + 32] = stor7
                        mem[mem[64] + 96] = stor8
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_719 + 160] = mem[96]
                        _721 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _719 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _813 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _719 + -mem[64] + 160
                        mem[64] = (32 * _721) + _719 + 192
                        mem[(32 * _721) + _719 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _815 = mem[_813]
                        t = _813 + 32
                        u = (32 * _721) + _719 + 228
                        s = mem[_813]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _721) + _719 + floor32(mem[_813]) + 228] = mem[_813 + floor32(mem[_813]) + -(mem[_813] % 32) + 64 len mem[_813] % 32] or Mask(8 * -(mem[_813] % 32) + 32, -(8 * -(mem[_813] % 32) + 32) + 256, mem[(32 * _721) + _719 + floor32(mem[_813]) + 228])
                        mem[(32 * _721) + _719 + 192] = _815 + 4
                        mem[64] = _815 + (32 * _721) + _719 + 228
                        t = (32 * _721) + _719 + 224
                        u = _815 + (32 * _721) + _719 + 228
                        s = _815 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_815 + (32 * _721) + _719 + floor32(_815 + 4) + 228] = mem[(32 * _721) + _719 + -(_815 + 4 % 32) + floor32(_815 + 4) + 256 len _815 + 4 % 32] or Mask(8 * -(_815 + 4 % 32) + 32, -(8 * -(_815 + 4 % 32) + 32) + 256, mem[_815 + (32 * _721) + _719 + floor32(_815 + 4) + 228])
                        call stor3.mem[_815 + (32 * _721) + _719 + 228 len 4] with:
                           value uint256(stor5.field_0) wei
                             gas gas_remaining wei
                            args mem[_815 + (32 * _721) + _719 + 232 len _815]
                        if return_data.size:
                            mem[64] = _815 + (32 * _721) + _719 + ceil32(return_data.size) + 229
                            mem[_815 + (32 * _721) + _719 + 228] = return_data.size
                            mem[_815 + (32 * _721) + _719 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _721) + _719 + floor32(_815 + 4) + 225
                            continue 
        else:
            mem[(98 * stor4.length) + 388] = return_data.size
            mem[(98 * stor4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor4.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor4.length) + ceil32(return_data.size) + 393] = uint256(stor5.field_0)
                mem[(98 * stor4.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor4.length) + ceil32(return_data.size) + 457] = stor4.length
                mem[(98 * stor4.length) + ceil32(return_data.size) + 489 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
                require ext_code.size(stor3)
                staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor4.length) + ceil32(return_data.size) + 393 len (32 * stor4.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _491 = mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32)
                require mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
                require mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
                require mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389] <= 4294967296 and mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389]
                _503 = mem[(98 * stor4.length) + ceil32(return_data.size) + _491 + 389]
                mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor4.length) + ceil32(return_data.size) + _491 + 389])] = mem[(98 * stor4.length) + ceil32(return_data.size) + _491 + 421 len floor32(mem[(98 * stor4.length) + ceil32(return_data.size) + _491 + 389])]
                mem[64] = (32 * _503) + (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor4.length - 1 < mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor4.length - 1) + (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor7:
                    idx = 0
                    while idx < stor6:
                        _722 = mem[64]
                        mem[mem[64] + 32] = stor7
                        mem[mem[64] + 96] = stor8
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_722 + 160] = mem[96]
                        _724 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _722 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _817 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _722 + -mem[64] + 160
                        mem[64] = (32 * _724) + _722 + 192
                        mem[(32 * _724) + _722 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _819 = mem[_817]
                        t = _817 + 32
                        u = (32 * _724) + _722 + 228
                        s = mem[_817]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _724) + _722 + floor32(mem[_817]) + 228] = mem[_817 + floor32(mem[_817]) + -(mem[_817] % 32) + 64 len mem[_817] % 32] or Mask(8 * -(mem[_817] % 32) + 32, -(8 * -(mem[_817] % 32) + 32) + 256, mem[(32 * _724) + _722 + floor32(mem[_817]) + 228])
                        mem[(32 * _724) + _722 + 192] = _819 + 4
                        mem[64] = _819 + (32 * _724) + _722 + 228
                        t = (32 * _724) + _722 + 224
                        u = _819 + (32 * _724) + _722 + 228
                        s = _819 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_819 + (32 * _724) + _722 + floor32(_819 + 4) + 228] = mem[(32 * _724) + _722 + -(_819 + 4 % 32) + floor32(_819 + 4) + 256 len _819 + 4 % 32] or Mask(8 * -(_819 + 4 % 32) + 32, -(8 * -(_819 + 4 % 32) + 32) + 256, mem[_819 + (32 * _724) + _722 + floor32(_819 + 4) + 228])
                        call stor3.mem[_819 + (32 * _724) + _722 + 228 len 4] with:
                           value uint256(stor5.field_0) wei
                             gas gas_remaining wei
                            args mem[_819 + (32 * _724) + _722 + 232 len _819]
                        if return_data.size:
                            mem[64] = _819 + (32 * _724) + _722 + ceil32(return_data.size) + 229
                            mem[_819 + (32 * _724) + _722 + 228] = return_data.size
                            mem[_819 + (32 * _724) + _722 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _724) + _722 + floor32(_819 + 4) + 225
                            continue 
    else:
        mem[0] = 4
        mem[128] = address(stor4.field_0)
        idx = 128
        s = 0
        while (32 * stor4.length) + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor4.length) + 160] = uint256(stor5.field_0)
        mem[(32 * stor4.length) + 192] = 64
        mem[(32 * stor4.length) + 224] = stor4.length
        mem[(32 * stor4.length) + 256 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        mem[(32 * stor4.length) + 128] = (32 * stor4.length) + 96
        mem[(64 * stor4.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor4.length) + 292 len floor32((32 * stor4.length) + 96)] = uint256(stor5.field_0), Array(len=stor4.length, data=mem[(32 * stor4.length) + 256 len floor32((32 * stor4.length) + 96) - 96])
        mem[(64 * stor4.length) + floor32((32 * stor4.length) + 96) + -((32 * stor4.length) + 96 % 32) + 324 len (32 * stor4.length) + 96 % 32] = mem[(32 * stor4.length) + floor32((32 * stor4.length) + 96) + -((32 * stor4.length) + 96 % 32) + 192 len (32 * stor4.length) + 96 % 32]
        mem[(64 * stor4.length) + 256] = (162 * stor4.length) + 100
        mem[(98 * stor4.length) + 388 len floor32((162 * stor4.length) + 100)] = 0, mem[(64 * stor4.length) + 292 len floor32((162 * stor4.length) + 100) - 4]
        mem[(98 * stor4.length) + floor32((162 * stor4.length) + 100) + -((162 * stor4.length) + 100 % 32) + 420 len (162 * stor4.length) + 100 % 32] = mem[(64 * stor4.length) + -((162 * stor4.length) + 100 % 32) + floor32((162 * stor4.length) + 100) + 320 len (162 * stor4.length) + 100 % 32]
        call stor3.mem[(98 * stor4.length) + 388 len 4] with:
             gas gas_remaining wei
            args mem[(98 * stor4.length) + 392 len (162 * stor4.length) + 96]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor4.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor4.length) + 392] = uint256(stor5.field_0)
                mem[(98 * stor4.length) + 424] = 64
                mem[(98 * stor4.length) + 456] = stor4.length
                mem[(98 * stor4.length) + 488 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
                require ext_code.size(stor3)
                staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor5.field_0), Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(98 * stor4.length) + floor32(stor4.length) + 488 len (32 * stor4.length) - floor32(stor4.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor4.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _739 = mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32)
                require mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
                require mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
                require mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388] <= 4294967296 and mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor4.length) + ceil32(return_data.size) + 388] = mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388]
                _765 = mem[(98 * stor4.length) + _739 + 388]
                mem[(98 * stor4.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor4.length) + _739 + 388])] = mem[(98 * stor4.length) + _739 + 420 len floor32(mem[(98 * stor4.length) + _739 + 388])]
                mem[64] = (32 * _765) + (98 * stor4.length) + ceil32(return_data.size) + 420
                require stor4.length - 1 < mem[(98 * stor4.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor4.length - 1) + (98 * stor4.length) + ceil32(return_data.size) + 420] >= stor7:
                    idx = 0
                    while idx < stor6:
                        _899 = mem[64]
                        mem[mem[64] + 32] = stor7
                        mem[mem[64] + 96] = stor8
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_899 + 160] = mem[96]
                        _901 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _899 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _953 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _899 + -mem[64] + 160
                        mem[64] = (32 * _901) + _899 + 192
                        mem[(32 * _901) + _899 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _955 = mem[_953]
                        t = _953 + 32
                        u = (32 * _901) + _899 + 228
                        s = mem[_953]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _901) + _899 + floor32(mem[_953]) + 228] = mem[_953 + floor32(mem[_953]) + -(mem[_953] % 32) + 64 len mem[_953] % 32] or Mask(8 * -(mem[_953] % 32) + 32, -(8 * -(mem[_953] % 32) + 32) + 256, mem[(32 * _901) + _899 + floor32(mem[_953]) + 228])
                        mem[(32 * _901) + _899 + 192] = _955 + 4
                        mem[64] = _955 + (32 * _901) + _899 + 228
                        t = (32 * _901) + _899 + 224
                        u = _955 + (32 * _901) + _899 + 228
                        s = _955 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_955 + (32 * _901) + _899 + floor32(_955 + 4) + 228] = mem[(32 * _901) + _899 + -(_955 + 4 % 32) + floor32(_955 + 4) + 256 len _955 + 4 % 32] or Mask(8 * -(_955 + 4 % 32) + 32, -(8 * -(_955 + 4 % 32) + 32) + 256, mem[_955 + (32 * _901) + _899 + floor32(_955 + 4) + 228])
                        call stor3.mem[_955 + (32 * _901) + _899 + 228 len 4] with:
                           value uint256(stor5.field_0) wei
                             gas gas_remaining wei
                            args mem[_955 + (32 * _901) + _899 + 232 len _955]
                        if return_data.size:
                            mem[64] = _955 + (32 * _901) + _899 + ceil32(return_data.size) + 229
                            mem[_955 + (32 * _901) + _899 + 228] = return_data.size
                            mem[_955 + (32 * _901) + _899 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _901) + _899 + floor32(_955 + 4) + 225
                            continue 
        else:
            mem[(98 * stor4.length) + 388] = return_data.size
            mem[(98 * stor4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor4.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor4.length) + ceil32(return_data.size) + 393] = uint256(stor5.field_0)
                mem[(98 * stor4.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor4.length) + ceil32(return_data.size) + 457] = stor4.length
                mem[(98 * stor4.length) + ceil32(return_data.size) + 489 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
                require ext_code.size(stor3)
                staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor5.field_0), Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(98 * stor4.length) + ceil32(return_data.size) + floor32(stor4.length) + 489 len (32 * stor4.length) - floor32(stor4.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _741 = mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32)
                require mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
                require mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
                require mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389] <= 4294967296 and mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389]
                _766 = mem[(98 * stor4.length) + ceil32(return_data.size) + _741 + 389]
                mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor4.length) + ceil32(return_data.size) + _741 + 389])] = mem[(98 * stor4.length) + ceil32(return_data.size) + _741 + 421 len floor32(mem[(98 * stor4.length) + ceil32(return_data.size) + _741 + 389])]
                mem[64] = (32 * _766) + (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor4.length - 1 < mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor4.length - 1) + (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor7:
                    idx = 0
                    while idx < stor6:
                        _902 = mem[64]
                        mem[mem[64] + 32] = stor7
                        mem[mem[64] + 96] = stor8
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_902 + 160] = mem[96]
                        _904 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _902 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _957 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _902 + -mem[64] + 160
                        mem[64] = (32 * _904) + _902 + 192
                        mem[(32 * _904) + _902 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _959 = mem[_957]
                        t = _957 + 32
                        u = (32 * _904) + _902 + 228
                        s = mem[_957]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _904) + _902 + floor32(mem[_957]) + 228] = mem[_957 + floor32(mem[_957]) + -(mem[_957] % 32) + 64 len mem[_957] % 32] or Mask(8 * -(mem[_957] % 32) + 32, -(8 * -(mem[_957] % 32) + 32) + 256, mem[(32 * _904) + _902 + floor32(mem[_957]) + 228])
                        mem[(32 * _904) + _902 + 192] = _959 + 4
                        mem[64] = _959 + (32 * _904) + _902 + 228
                        t = (32 * _904) + _902 + 224
                        u = _959 + (32 * _904) + _902 + 228
                        s = _959 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_959 + (32 * _904) + _902 + floor32(_959 + 4) + 228] = mem[(32 * _904) + _902 + -(_959 + 4 % 32) + floor32(_959 + 4) + 256 len _959 + 4 % 32] or Mask(8 * -(_959 + 4 % 32) + 32, -(8 * -(_959 + 4 % 32) + 32) + 256, mem[_959 + (32 * _904) + _902 + floor32(_959 + 4) + 228])
                        call stor3.mem[_959 + (32 * _904) + _902 + 228 len 4] with:
                           value uint256(stor5.field_0) wei
                             gas gas_remaining wei
                            args mem[_959 + (32 * _904) + _902 + 232 len _959]
                        if return_data.size:
                            mem[64] = _959 + (32 * _904) + _902 + ceil32(return_data.size) + 229
                            mem[_959 + (32 * _904) + _902 + 228] = return_data.size
                            mem[_959 + (32 * _904) + _902 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _904) + _902 + floor32(_959 + 4) + 225
                            continue 
}

function sub_0754c32b(?) payable {
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 160] = uint256(stor5.field_0)
        mem[(32 * stor4.length) + 192] = 64
        mem[(32 * stor4.length) + 224] = stor4.length
        mem[(32 * stor4.length) + 256 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        mem[(32 * stor4.length) + 128] = (32 * stor4.length) + 96
        mem[(64 * stor4.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor4.length) + 292 len floor32((32 * stor4.length) + 96)] = uint256(stor5.field_0), Array(len=stor4.length, data=mem[(32 * stor4.length) + 256 len floor32((32 * stor4.length) + 96) - 96])
        mem[(64 * stor4.length) + floor32((32 * stor4.length) + 96) + -((32 * stor4.length) + 96 % 32) + 324 len (32 * stor4.length) + 96 % 32] = mem[(32 * stor4.length) + floor32((32 * stor4.length) + 96) + -((32 * stor4.length) + 96 % 32) + 192 len (32 * stor4.length) + 96 % 32]
        mem[(64 * stor4.length) + 256] = (32 * stor4.length) + 100
        mem[(98 * stor4.length) + 388 len floor32((32 * stor4.length) + 100)] = 0, mem[(64 * stor4.length) + 292 len floor32((32 * stor4.length) + 100) - 4]
        mem[(98 * stor4.length) + floor32((32 * stor4.length) + 100) + -((32 * stor4.length) + 100 % 32) + 420 len (32 * stor4.length) + 100 % 32] = mem[(64 * stor4.length) + -((32 * stor4.length) + 100 % 32) + floor32((32 * stor4.length) + 100) + 320 len (32 * stor4.length) + 100 % 32]
        call stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(98 * stor4.length) + 392 len (32 * stor4.length) + 96]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor4.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor4.length) + 392] = uint256(stor5.field_0)
                mem[(98 * stor4.length) + 424] = 64
                mem[(98 * stor4.length) + 456] = stor4.length
                mem[(98 * stor4.length) + 488 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
                require ext_code.size(stor3)
                staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor4.length) + 392 len (32 * stor4.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor4.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _489 = mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32)
                require mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
                require mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
                require mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388] <= 4294967296 and mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor4.length) + ceil32(return_data.size) + 388] = mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388]
                _502 = mem[(98 * stor4.length) + _489 + 388]
                mem[(98 * stor4.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor4.length) + _489 + 388])] = mem[(98 * stor4.length) + _489 + 420 len floor32(mem[(98 * stor4.length) + _489 + 388])]
                mem[64] = (32 * _502) + (98 * stor4.length) + ceil32(return_data.size) + 420
                require stor4.length - 1 < mem[(98 * stor4.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor4.length - 1) + (98 * stor4.length) + ceil32(return_data.size) + 420] >= stor7:
                    idx = 0
                    while idx < stor6:
                        _719 = mem[64]
                        mem[mem[64] + 32] = uint256(stor5.field_0)
                        mem[mem[64] + 64] = stor7
                        mem[mem[64] + 128] = stor8
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _721 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _813 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _721) + mem[64] + 224
                        mem[(32 * _721) + _719 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _815 = mem[_813]
                        t = _813 + 32
                        u = (32 * _721) + _719 + 260
                        s = mem[_813]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _721) + _719 + floor32(mem[_813]) + 260] = mem[_813 + floor32(mem[_813]) + -(mem[_813] % 32) + 64 len mem[_813] % 32] or Mask(8 * -(mem[_813] % 32) + 32, -(8 * -(mem[_813] % 32) + 32) + 256, mem[(32 * _721) + _719 + floor32(mem[_813]) + 260])
                        _889 = mem[64]
                        mem[mem[64]] = _815 + (32 * _721) + _719 + -mem[64] + 228
                        mem[64] = _815 + (32 * _721) + _719 + 260
                        _891 = mem[_889]
                        t = _889 + 32
                        u = _815 + (32 * _721) + _719 + 260
                        s = mem[_889]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_815 + (32 * _721) + _719 + floor32(mem[_889]) + 260] = mem[_889 + -(mem[_889] % 32) + floor32(mem[_889]) + 64 len mem[_889] % 32] or Mask(8 * -(mem[_889] % 32) + 32, -(8 * -(mem[_889] % 32) + 32) + 256, mem[_815 + (32 * _721) + _719 + floor32(mem[_889]) + 260])
                        call stor3.mem[_815 + (32 * _721) + _719 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_815 + (32 * _721) + _719 + 264 len _891 - 4]
                        if return_data.size:
                            mem[64] = _815 + (32 * _721) + _719 + ceil32(return_data.size) + 261
                            mem[_815 + (32 * _721) + _719 + 260] = return_data.size
                            mem[_815 + (32 * _721) + _719 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
        else:
            mem[(98 * stor4.length) + 388] = return_data.size
            mem[(98 * stor4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor4.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor4.length) + ceil32(return_data.size) + 393] = uint256(stor5.field_0)
                mem[(98 * stor4.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor4.length) + ceil32(return_data.size) + 457] = stor4.length
                mem[(98 * stor4.length) + ceil32(return_data.size) + 489 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
                require ext_code.size(stor3)
                staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor4.length) + ceil32(return_data.size) + 393 len (32 * stor4.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _491 = mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32)
                require mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
                require mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
                require mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389] <= 4294967296 and mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389]
                _503 = mem[(98 * stor4.length) + ceil32(return_data.size) + _491 + 389]
                mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor4.length) + ceil32(return_data.size) + _491 + 389])] = mem[(98 * stor4.length) + ceil32(return_data.size) + _491 + 421 len floor32(mem[(98 * stor4.length) + ceil32(return_data.size) + _491 + 389])]
                mem[64] = (32 * _503) + (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor4.length - 1 < mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor4.length - 1) + (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor7:
                    idx = 0
                    while idx < stor6:
                        _722 = mem[64]
                        mem[mem[64] + 32] = uint256(stor5.field_0)
                        mem[mem[64] + 64] = stor7
                        mem[mem[64] + 128] = stor8
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _724 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _817 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _724) + mem[64] + 224
                        mem[(32 * _724) + _722 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _819 = mem[_817]
                        t = _817 + 32
                        u = (32 * _724) + _722 + 260
                        s = mem[_817]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _724) + _722 + floor32(mem[_817]) + 260] = mem[_817 + floor32(mem[_817]) + -(mem[_817] % 32) + 64 len mem[_817] % 32] or Mask(8 * -(mem[_817] % 32) + 32, -(8 * -(mem[_817] % 32) + 32) + 256, mem[(32 * _724) + _722 + floor32(mem[_817]) + 260])
                        _895 = mem[64]
                        mem[mem[64]] = _819 + (32 * _724) + _722 + -mem[64] + 228
                        mem[64] = _819 + (32 * _724) + _722 + 260
                        _897 = mem[_895]
                        t = _895 + 32
                        u = _819 + (32 * _724) + _722 + 260
                        s = mem[_895]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_819 + (32 * _724) + _722 + floor32(mem[_895]) + 260] = mem[_895 + -(mem[_895] % 32) + floor32(mem[_895]) + 64 len mem[_895] % 32] or Mask(8 * -(mem[_895] % 32) + 32, -(8 * -(mem[_895] % 32) + 32) + 256, mem[_819 + (32 * _724) + _722 + floor32(mem[_895]) + 260])
                        call stor3.mem[_819 + (32 * _724) + _722 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_819 + (32 * _724) + _722 + 264 len _897 - 4]
                        if return_data.size:
                            mem[64] = _819 + (32 * _724) + _722 + ceil32(return_data.size) + 261
                            mem[_819 + (32 * _724) + _722 + 260] = return_data.size
                            mem[_819 + (32 * _724) + _722 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
    else:
        mem[0] = 4
        mem[128] = address(stor4.field_0)
        idx = 128
        s = 0
        while (32 * stor4.length) + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor4.length) + 160] = uint256(stor5.field_0)
        mem[(32 * stor4.length) + 192] = 64
        mem[(32 * stor4.length) + 224] = stor4.length
        mem[(32 * stor4.length) + 256 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        mem[(32 * stor4.length) + 128] = (32 * stor4.length) + 96
        mem[(64 * stor4.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor4.length) + 292 len floor32((32 * stor4.length) + 96)] = uint256(stor5.field_0), Array(len=stor4.length, data=mem[(32 * stor4.length) + 256 len floor32((32 * stor4.length) + 96) - 96])
        mem[(64 * stor4.length) + floor32((32 * stor4.length) + 96) + -((32 * stor4.length) + 96 % 32) + 324 len (32 * stor4.length) + 96 % 32] = mem[(32 * stor4.length) + floor32((32 * stor4.length) + 96) + -((32 * stor4.length) + 96 % 32) + 192 len (32 * stor4.length) + 96 % 32]
        mem[(64 * stor4.length) + 256] = (162 * stor4.length) + 100
        mem[(98 * stor4.length) + 388 len floor32((162 * stor4.length) + 100)] = 0, mem[(64 * stor4.length) + 292 len floor32((162 * stor4.length) + 100) - 4]
        mem[(98 * stor4.length) + floor32((162 * stor4.length) + 100) + -((162 * stor4.length) + 100 % 32) + 420 len (162 * stor4.length) + 100 % 32] = mem[(64 * stor4.length) + -((162 * stor4.length) + 100 % 32) + floor32((162 * stor4.length) + 100) + 320 len (162 * stor4.length) + 100 % 32]
        call stor3.mem[(98 * stor4.length) + 388 len 4] with:
             gas gas_remaining wei
            args mem[(98 * stor4.length) + 392 len (162 * stor4.length) + 96]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor4.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor4.length) + 392] = uint256(stor5.field_0)
                mem[(98 * stor4.length) + 424] = 64
                mem[(98 * stor4.length) + 456] = stor4.length
                mem[(98 * stor4.length) + 488 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
                require ext_code.size(stor3)
                staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor5.field_0), Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(98 * stor4.length) + floor32(stor4.length) + 488 len (32 * stor4.length) - floor32(stor4.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor4.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _739 = mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32)
                require mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
                require mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
                require mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388] <= 4294967296 and mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor4.length) + ceil32(return_data.size) + 388] = mem[(98 * stor4.length) + mem[(98 * stor4.length) + 388 len 4], Mask(224, 0, stor5.field_32) + 388]
                _765 = mem[(98 * stor4.length) + _739 + 388]
                mem[(98 * stor4.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor4.length) + _739 + 388])] = mem[(98 * stor4.length) + _739 + 420 len floor32(mem[(98 * stor4.length) + _739 + 388])]
                mem[64] = (32 * _765) + (98 * stor4.length) + ceil32(return_data.size) + 420
                require stor4.length - 1 < mem[(98 * stor4.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor4.length - 1) + (98 * stor4.length) + ceil32(return_data.size) + 420] >= stor7:
                    idx = 0
                    while idx < stor6:
                        _899 = mem[64]
                        mem[mem[64] + 32] = uint256(stor5.field_0)
                        mem[mem[64] + 64] = stor7
                        mem[mem[64] + 128] = stor8
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _901 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _953 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _901) + mem[64] + 224
                        mem[(32 * _901) + _899 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _955 = mem[_953]
                        t = _953 + 32
                        u = (32 * _901) + _899 + 260
                        s = mem[_953]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _901) + _899 + floor32(mem[_953]) + 260] = mem[_953 + floor32(mem[_953]) + -(mem[_953] % 32) + 64 len mem[_953] % 32] or Mask(8 * -(mem[_953] % 32) + 32, -(8 * -(mem[_953] % 32) + 32) + 256, mem[(32 * _901) + _899 + floor32(mem[_953]) + 260])
                        _987 = mem[64]
                        mem[mem[64]] = _955 + (32 * _901) + _899 + -mem[64] + 228
                        mem[64] = _955 + (32 * _901) + _899 + 260
                        _989 = mem[_987]
                        t = _987 + 32
                        u = _955 + (32 * _901) + _899 + 260
                        s = mem[_987]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_955 + (32 * _901) + _899 + floor32(mem[_987]) + 260] = mem[_987 + -(mem[_987] % 32) + floor32(mem[_987]) + 64 len mem[_987] % 32] or Mask(8 * -(mem[_987] % 32) + 32, -(8 * -(mem[_987] % 32) + 32) + 256, mem[_955 + (32 * _901) + _899 + floor32(mem[_987]) + 260])
                        call stor3.mem[_955 + (32 * _901) + _899 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_955 + (32 * _901) + _899 + 264 len _989 - 4]
                        if return_data.size:
                            mem[64] = _955 + (32 * _901) + _899 + ceil32(return_data.size) + 261
                            mem[_955 + (32 * _901) + _899 + 260] = return_data.size
                            mem[_955 + (32 * _901) + _899 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
        else:
            mem[(98 * stor4.length) + 388] = return_data.size
            mem[(98 * stor4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor4.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor4.length) + ceil32(return_data.size) + 393] = uint256(stor5.field_0)
                mem[(98 * stor4.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor4.length) + ceil32(return_data.size) + 457] = stor4.length
                mem[(98 * stor4.length) + ceil32(return_data.size) + 489 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
                require ext_code.size(stor3)
                staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor5.field_0), Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(98 * stor4.length) + ceil32(return_data.size) + floor32(stor4.length) + 489 len (32 * stor4.length) - floor32(stor4.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _741 = mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32)
                require mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) <= 4294967296
                require mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 32 <= return_data.size
                require mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389] <= 4294967296 and mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + (32 * mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor4.length) + ceil32(return_data.size) + mem[(98 * stor4.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor5.field_32) + 389]
                _766 = mem[(98 * stor4.length) + ceil32(return_data.size) + _741 + 389]
                mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor4.length) + ceil32(return_data.size) + _741 + 389])] = mem[(98 * stor4.length) + ceil32(return_data.size) + _741 + 421 len floor32(mem[(98 * stor4.length) + ceil32(return_data.size) + _741 + 389])]
                mem[64] = (32 * _766) + (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor4.length - 1 < mem[(98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor4.length - 1) + (98 * stor4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor7:
                    idx = 0
                    while idx < stor6:
                        _902 = mem[64]
                        mem[mem[64] + 32] = uint256(stor5.field_0)
                        mem[mem[64] + 64] = stor7
                        mem[mem[64] + 128] = stor8
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _904 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _957 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _904) + mem[64] + 224
                        mem[(32 * _904) + _902 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _959 = mem[_957]
                        t = _957 + 32
                        u = (32 * _904) + _902 + 260
                        s = mem[_957]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _904) + _902 + floor32(mem[_957]) + 260] = mem[_957 + floor32(mem[_957]) + -(mem[_957] % 32) + 64 len mem[_957] % 32] or Mask(8 * -(mem[_957] % 32) + 32, -(8 * -(mem[_957] % 32) + 32) + 256, mem[(32 * _904) + _902 + floor32(mem[_957]) + 260])
                        _993 = mem[64]
                        mem[mem[64]] = _959 + (32 * _904) + _902 + -mem[64] + 228
                        mem[64] = _959 + (32 * _904) + _902 + 260
                        _995 = mem[_993]
                        t = _993 + 32
                        u = _959 + (32 * _904) + _902 + 260
                        s = mem[_993]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_959 + (32 * _904) + _902 + floor32(mem[_993]) + 260] = mem[_993 + -(mem[_993] % 32) + floor32(mem[_993]) + 64 len mem[_993] % 32] or Mask(8 * -(mem[_993] % 32) + 32, -(8 * -(mem[_993] % 32) + 32) + 256, mem[_959 + (32 * _904) + _902 + floor32(mem[_993]) + 260])
                        call stor3.mem[_959 + (32 * _904) + _902 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_959 + (32 * _904) + _902 + 264 len _995 - 4]
                        if return_data.size:
                            mem[64] = _959 + (32 * _904) + _902 + ceil32(return_data.size) + 261
                            mem[_959 + (32 * _904) + _902 + 260] = return_data.size
                            mem[_959 + (32 * _904) + _902 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
}

function sub_68677730(?) payable {
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[96] = stor25.length
    if not stor25.length:
        mem[(32 * stor25.length) + 160] = uint256(stor26.field_0)
        mem[(32 * stor25.length) + 192] = 64
        mem[(32 * stor25.length) + 224] = stor25.length
        mem[(32 * stor25.length) + 256 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
        mem[(32 * stor25.length) + 128] = (32 * stor25.length) + 96
        mem[(64 * stor25.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor25.length) + 292 len floor32((32 * stor25.length) + 96)] = uint256(stor26.field_0), Array(len=stor25.length, data=mem[(32 * stor25.length) + 256 len floor32((32 * stor25.length) + 96) - 96])
        mem[(64 * stor25.length) + floor32((32 * stor25.length) + 96) + -((32 * stor25.length) + 96 % 32) + 324 len (32 * stor25.length) + 96 % 32] = mem[(32 * stor25.length) + floor32((32 * stor25.length) + 96) + -((32 * stor25.length) + 96 % 32) + 192 len (32 * stor25.length) + 96 % 32]
        mem[(64 * stor25.length) + 256] = (161 * stor25.length) + 100
        mem[(98 * stor25.length) + 388 len floor32((161 * stor25.length) + 100)] = 0, mem[(64 * stor25.length) + 292 len floor32((161 * stor25.length) + 100) - 4]
        mem[(98 * stor25.length) + floor32((161 * stor25.length) + 100) + -((161 * stor25.length) + 100 % 32) + 420 len (161 * stor25.length) + 100 % 32] = mem[(32 * stor25.length) + -((161 * stor25.length) + 100 % 32) + floor32((161 * stor25.length) + 100) + 220 len (161 * stor25.length) + -floor32((161 * stor25.length) + 100) + 100]
        call stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(64 * stor25.length) + 292 len floor32((161 * stor25.length) + 100) - 4], mem[(98 * stor25.length) + floor32((161 * stor25.length) + 100) + 388 len (161 * stor25.length) + -floor32((161 * stor25.length) + 100) + 100]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor25.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor25.length) + 392] = uint256(stor26.field_0)
                mem[(98 * stor25.length) + 424] = 64
                mem[(98 * stor25.length) + 456] = stor25.length
                mem[(98 * stor25.length) + 488 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
                require ext_code.size(stor24)
                staticcall stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor25.length) + 392 len (32 * stor25.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor25.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor25.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _489 = mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32)
                require mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) <= 4294967296
                require mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 32 <= return_data.size
                require mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388] <= 4294967296 and mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + (32 * mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor25.length) + ceil32(return_data.size) + 388] = mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388]
                _502 = mem[(98 * stor25.length) + _489 + 388]
                mem[(98 * stor25.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor25.length) + _489 + 388])] = mem[(98 * stor25.length) + _489 + 420 len floor32(mem[(98 * stor25.length) + _489 + 388])]
                mem[64] = (32 * _502) + (98 * stor25.length) + ceil32(return_data.size) + 420
                require stor25.length - 1 < mem[(98 * stor25.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor25.length - 1) + (98 * stor25.length) + ceil32(return_data.size) + 420] >= stor28:
                    idx = 0
                    while idx < stor27:
                        _719 = mem[64]
                        mem[mem[64] + 32] = stor28
                        mem[mem[64] + 96] = stor29
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_719 + 160] = mem[96]
                        _721 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _719 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _813 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _719 + -mem[64] + 160
                        mem[64] = (32 * _721) + _719 + 192
                        mem[(32 * _721) + _719 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _815 = mem[_813]
                        t = _813 + 32
                        u = (32 * _721) + _719 + 228
                        s = mem[_813]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _721) + _719 + floor32(mem[_813]) + 228] = mem[_813 + floor32(mem[_813]) + -(mem[_813] % 32) + 64 len mem[_813] % 32] or Mask(8 * -(mem[_813] % 32) + 32, -(8 * -(mem[_813] % 32) + 32) + 256, mem[(32 * _721) + _719 + floor32(mem[_813]) + 228])
                        mem[(32 * _721) + _719 + 192] = _815 + 4
                        mem[64] = _815 + (32 * _721) + _719 + 228
                        t = (32 * _721) + _719 + 224
                        u = _815 + (32 * _721) + _719 + 228
                        s = _815 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_815 + (32 * _721) + _719 + floor32(_815 + 4) + 228] = mem[(32 * _721) + _719 + -(_815 + 4 % 32) + floor32(_815 + 4) + 256 len _815 + 4 % 32] or Mask(8 * -(_815 + 4 % 32) + 32, -(8 * -(_815 + 4 % 32) + 32) + 256, mem[_815 + (32 * _721) + _719 + floor32(_815 + 4) + 228])
                        call stor24.mem[_815 + (32 * _721) + _719 + 228 len 4] with:
                           value uint256(stor26.field_0) wei
                             gas gas_remaining wei
                            args mem[_815 + (32 * _721) + _719 + 232 len _815]
                        if return_data.size:
                            mem[64] = _815 + (32 * _721) + _719 + ceil32(return_data.size) + 229
                            mem[_815 + (32 * _721) + _719 + 228] = return_data.size
                            mem[_815 + (32 * _721) + _719 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _721) + _719 + floor32(_815 + 4) + 225
                            continue 
        else:
            mem[(98 * stor25.length) + 388] = return_data.size
            mem[(98 * stor25.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor25.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor25.length) + ceil32(return_data.size) + 393] = uint256(stor26.field_0)
                mem[(98 * stor25.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor25.length) + ceil32(return_data.size) + 457] = stor25.length
                mem[(98 * stor25.length) + ceil32(return_data.size) + 489 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
                require ext_code.size(stor24)
                staticcall stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor25.length) + ceil32(return_data.size) + 393 len (32 * stor25.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _491 = mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32)
                require mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) <= 4294967296
                require mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 32 <= return_data.size
                require mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389] <= 4294967296 and mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + (32 * mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389]
                _503 = mem[(98 * stor25.length) + ceil32(return_data.size) + _491 + 389]
                mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor25.length) + ceil32(return_data.size) + _491 + 389])] = mem[(98 * stor25.length) + ceil32(return_data.size) + _491 + 421 len floor32(mem[(98 * stor25.length) + ceil32(return_data.size) + _491 + 389])]
                mem[64] = (32 * _503) + (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor25.length - 1 < mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor25.length - 1) + (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor28:
                    idx = 0
                    while idx < stor27:
                        _722 = mem[64]
                        mem[mem[64] + 32] = stor28
                        mem[mem[64] + 96] = stor29
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_722 + 160] = mem[96]
                        _724 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _722 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _817 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _722 + -mem[64] + 160
                        mem[64] = (32 * _724) + _722 + 192
                        mem[(32 * _724) + _722 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _819 = mem[_817]
                        t = _817 + 32
                        u = (32 * _724) + _722 + 228
                        s = mem[_817]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _724) + _722 + floor32(mem[_817]) + 228] = mem[_817 + floor32(mem[_817]) + -(mem[_817] % 32) + 64 len mem[_817] % 32] or Mask(8 * -(mem[_817] % 32) + 32, -(8 * -(mem[_817] % 32) + 32) + 256, mem[(32 * _724) + _722 + floor32(mem[_817]) + 228])
                        mem[(32 * _724) + _722 + 192] = _819 + 4
                        mem[64] = _819 + (32 * _724) + _722 + 228
                        t = (32 * _724) + _722 + 224
                        u = _819 + (32 * _724) + _722 + 228
                        s = _819 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_819 + (32 * _724) + _722 + floor32(_819 + 4) + 228] = mem[(32 * _724) + _722 + -(_819 + 4 % 32) + floor32(_819 + 4) + 256 len _819 + 4 % 32] or Mask(8 * -(_819 + 4 % 32) + 32, -(8 * -(_819 + 4 % 32) + 32) + 256, mem[_819 + (32 * _724) + _722 + floor32(_819 + 4) + 228])
                        call stor24.mem[_819 + (32 * _724) + _722 + 228 len 4] with:
                           value uint256(stor26.field_0) wei
                             gas gas_remaining wei
                            args mem[_819 + (32 * _724) + _722 + 232 len _819]
                        if return_data.size:
                            mem[64] = _819 + (32 * _724) + _722 + ceil32(return_data.size) + 229
                            mem[_819 + (32 * _724) + _722 + 228] = return_data.size
                            mem[_819 + (32 * _724) + _722 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _724) + _722 + floor32(_819 + 4) + 225
                            continue 
    else:
        mem[0] = 25
        mem[128] = address(stor25.field_0)
        idx = 128
        s = 0
        while (32 * stor25.length) + 96 > idx:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor25.length) + 160] = uint256(stor26.field_0)
        mem[(32 * stor25.length) + 192] = 64
        mem[(32 * stor25.length) + 224] = stor25.length
        mem[(32 * stor25.length) + 256 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
        mem[(32 * stor25.length) + 128] = (32 * stor25.length) + 96
        mem[(64 * stor25.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor25.length) + 292 len floor32((32 * stor25.length) + 96)] = uint256(stor26.field_0), Array(len=stor25.length, data=mem[(32 * stor25.length) + 256 len floor32((32 * stor25.length) + 96) - 96])
        mem[(64 * stor25.length) + floor32((32 * stor25.length) + 96) + -((32 * stor25.length) + 96 % 32) + 324 len (32 * stor25.length) + 96 % 32] = mem[(32 * stor25.length) + floor32((32 * stor25.length) + 96) + -((32 * stor25.length) + 96 % 32) + 192 len (32 * stor25.length) + 96 % 32]
        mem[(64 * stor25.length) + 256] = (162 * stor25.length) + 100
        mem[(98 * stor25.length) + 388 len floor32((162 * stor25.length) + 100)] = 0, mem[(64 * stor25.length) + 292 len floor32((162 * stor25.length) + 100) - 4]
        mem[(98 * stor25.length) + floor32((162 * stor25.length) + 100) + -((162 * stor25.length) + 100 % 32) + 420 len (162 * stor25.length) + 100 % 32] = mem[(64 * stor25.length) + -((162 * stor25.length) + 100 % 32) + floor32((162 * stor25.length) + 100) + 320 len (162 * stor25.length) + 100 % 32]
        call stor24.mem[(98 * stor25.length) + 388 len 4] with:
             gas gas_remaining wei
            args mem[(98 * stor25.length) + 392 len (162 * stor25.length) + 96]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor25.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor25.length) + 392] = uint256(stor26.field_0)
                mem[(98 * stor25.length) + 424] = 64
                mem[(98 * stor25.length) + 456] = stor25.length
                mem[(98 * stor25.length) + 488 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
                require ext_code.size(stor24)
                staticcall stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor26.field_0), Array(len=stor25.length, data=mem[128 len floor32(stor25.length)], mem[(98 * stor25.length) + floor32(stor25.length) + 488 len (32 * stor25.length) - floor32(stor25.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor25.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor25.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _739 = mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32)
                require mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) <= 4294967296
                require mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 32 <= return_data.size
                require mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388] <= 4294967296 and mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + (32 * mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor25.length) + ceil32(return_data.size) + 388] = mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388]
                _765 = mem[(98 * stor25.length) + _739 + 388]
                mem[(98 * stor25.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor25.length) + _739 + 388])] = mem[(98 * stor25.length) + _739 + 420 len floor32(mem[(98 * stor25.length) + _739 + 388])]
                mem[64] = (32 * _765) + (98 * stor25.length) + ceil32(return_data.size) + 420
                require stor25.length - 1 < mem[(98 * stor25.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor25.length - 1) + (98 * stor25.length) + ceil32(return_data.size) + 420] >= stor28:
                    idx = 0
                    while idx < stor27:
                        _899 = mem[64]
                        mem[mem[64] + 32] = stor28
                        mem[mem[64] + 96] = stor29
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_899 + 160] = mem[96]
                        _901 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _899 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _953 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _899 + -mem[64] + 160
                        mem[64] = (32 * _901) + _899 + 192
                        mem[(32 * _901) + _899 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _955 = mem[_953]
                        t = _953 + 32
                        u = (32 * _901) + _899 + 228
                        s = mem[_953]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _901) + _899 + floor32(mem[_953]) + 228] = mem[_953 + floor32(mem[_953]) + -(mem[_953] % 32) + 64 len mem[_953] % 32] or Mask(8 * -(mem[_953] % 32) + 32, -(8 * -(mem[_953] % 32) + 32) + 256, mem[(32 * _901) + _899 + floor32(mem[_953]) + 228])
                        mem[(32 * _901) + _899 + 192] = _955 + 4
                        mem[64] = _955 + (32 * _901) + _899 + 228
                        t = (32 * _901) + _899 + 224
                        u = _955 + (32 * _901) + _899 + 228
                        s = _955 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_955 + (32 * _901) + _899 + floor32(_955 + 4) + 228] = mem[(32 * _901) + _899 + -(_955 + 4 % 32) + floor32(_955 + 4) + 256 len _955 + 4 % 32] or Mask(8 * -(_955 + 4 % 32) + 32, -(8 * -(_955 + 4 % 32) + 32) + 256, mem[_955 + (32 * _901) + _899 + floor32(_955 + 4) + 228])
                        call stor24.mem[_955 + (32 * _901) + _899 + 228 len 4] with:
                           value uint256(stor26.field_0) wei
                             gas gas_remaining wei
                            args mem[_955 + (32 * _901) + _899 + 232 len _955]
                        if return_data.size:
                            mem[64] = _955 + (32 * _901) + _899 + ceil32(return_data.size) + 229
                            mem[_955 + (32 * _901) + _899 + 228] = return_data.size
                            mem[_955 + (32 * _901) + _899 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _901) + _899 + floor32(_955 + 4) + 225
                            continue 
        else:
            mem[(98 * stor25.length) + 388] = return_data.size
            mem[(98 * stor25.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor25.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor25.length) + ceil32(return_data.size) + 393] = uint256(stor26.field_0)
                mem[(98 * stor25.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor25.length) + ceil32(return_data.size) + 457] = stor25.length
                mem[(98 * stor25.length) + ceil32(return_data.size) + 489 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
                require ext_code.size(stor24)
                staticcall stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor26.field_0), Array(len=stor25.length, data=mem[128 len floor32(stor25.length)], mem[(98 * stor25.length) + ceil32(return_data.size) + floor32(stor25.length) + 489 len (32 * stor25.length) - floor32(stor25.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _741 = mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32)
                require mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) <= 4294967296
                require mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 32 <= return_data.size
                require mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389] <= 4294967296 and mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + (32 * mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389]
                _766 = mem[(98 * stor25.length) + ceil32(return_data.size) + _741 + 389]
                mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor25.length) + ceil32(return_data.size) + _741 + 389])] = mem[(98 * stor25.length) + ceil32(return_data.size) + _741 + 421 len floor32(mem[(98 * stor25.length) + ceil32(return_data.size) + _741 + 389])]
                mem[64] = (32 * _766) + (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor25.length - 1 < mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor25.length - 1) + (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor28:
                    idx = 0
                    while idx < stor27:
                        _902 = mem[64]
                        mem[mem[64] + 32] = stor28
                        mem[mem[64] + 96] = stor29
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_902 + 160] = mem[96]
                        _904 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _902 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _957 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _902 + -mem[64] + 160
                        mem[64] = (32 * _904) + _902 + 192
                        mem[(32 * _904) + _902 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _959 = mem[_957]
                        t = _957 + 32
                        u = (32 * _904) + _902 + 228
                        s = mem[_957]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _904) + _902 + floor32(mem[_957]) + 228] = mem[_957 + floor32(mem[_957]) + -(mem[_957] % 32) + 64 len mem[_957] % 32] or Mask(8 * -(mem[_957] % 32) + 32, -(8 * -(mem[_957] % 32) + 32) + 256, mem[(32 * _904) + _902 + floor32(mem[_957]) + 228])
                        mem[(32 * _904) + _902 + 192] = _959 + 4
                        mem[64] = _959 + (32 * _904) + _902 + 228
                        t = (32 * _904) + _902 + 224
                        u = _959 + (32 * _904) + _902 + 228
                        s = _959 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_959 + (32 * _904) + _902 + floor32(_959 + 4) + 228] = mem[(32 * _904) + _902 + -(_959 + 4 % 32) + floor32(_959 + 4) + 256 len _959 + 4 % 32] or Mask(8 * -(_959 + 4 % 32) + 32, -(8 * -(_959 + 4 % 32) + 32) + 256, mem[_959 + (32 * _904) + _902 + floor32(_959 + 4) + 228])
                        call stor24.mem[_959 + (32 * _904) + _902 + 228 len 4] with:
                           value uint256(stor26.field_0) wei
                             gas gas_remaining wei
                            args mem[_959 + (32 * _904) + _902 + 232 len _959]
                        if return_data.size:
                            mem[64] = _959 + (32 * _904) + _902 + ceil32(return_data.size) + 229
                            mem[_959 + (32 * _904) + _902 + 228] = return_data.size
                            mem[_959 + (32 * _904) + _902 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _904) + _902 + floor32(_959 + 4) + 225
                            continue 
}

function sub_c48b2582(?) payable {
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[96] = stor18.length
    if not stor18.length:
        mem[(32 * stor18.length) + 160] = uint256(stor19.field_0)
        mem[(32 * stor18.length) + 192] = 64
        mem[(32 * stor18.length) + 224] = stor18.length
        mem[(32 * stor18.length) + 256 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
        mem[(32 * stor18.length) + 128] = (32 * stor18.length) + 96
        mem[(64 * stor18.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor18.length) + 292 len floor32((32 * stor18.length) + 96)] = uint256(stor19.field_0), Array(len=stor18.length, data=mem[(32 * stor18.length) + 256 len floor32((32 * stor18.length) + 96) - 96])
        mem[(64 * stor18.length) + floor32((32 * stor18.length) + 96) + -((32 * stor18.length) + 96 % 32) + 324 len (32 * stor18.length) + 96 % 32] = mem[(32 * stor18.length) + floor32((32 * stor18.length) + 96) + -((32 * stor18.length) + 96 % 32) + 192 len (32 * stor18.length) + 96 % 32]
        mem[(64 * stor18.length) + 256] = (161 * stor18.length) + 100
        mem[(98 * stor18.length) + 388 len floor32((161 * stor18.length) + 100)] = 0, mem[(64 * stor18.length) + 292 len floor32((161 * stor18.length) + 100) - 4]
        mem[(98 * stor18.length) + floor32((161 * stor18.length) + 100) + -((161 * stor18.length) + 100 % 32) + 420 len (161 * stor18.length) + 100 % 32] = mem[(32 * stor18.length) + -((161 * stor18.length) + 100 % 32) + floor32((161 * stor18.length) + 100) + 220 len (161 * stor18.length) + -floor32((161 * stor18.length) + 100) + 100]
        call stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(64 * stor18.length) + 292 len floor32((161 * stor18.length) + 100) - 4], mem[(98 * stor18.length) + floor32((161 * stor18.length) + 100) + 388 len (161 * stor18.length) + -floor32((161 * stor18.length) + 100) + 100]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor18.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor18.length) + 392] = uint256(stor19.field_0)
                mem[(98 * stor18.length) + 424] = 64
                mem[(98 * stor18.length) + 456] = stor18.length
                mem[(98 * stor18.length) + 488 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor18.length) + 392 len (32 * stor18.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor18.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor18.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _489 = mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32)
                require mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) <= 4294967296
                require mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + 32 <= return_data.size
                require mem[(98 * stor18.length) + mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + 388] <= 4294967296 and mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + (32 * mem[(98 * stor18.length) + mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor18.length) + ceil32(return_data.size) + 388] = mem[(98 * stor18.length) + mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + 388]
                _502 = mem[(98 * stor18.length) + _489 + 388]
                mem[(98 * stor18.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor18.length) + _489 + 388])] = mem[(98 * stor18.length) + _489 + 420 len floor32(mem[(98 * stor18.length) + _489 + 388])]
                mem[64] = (32 * _502) + (98 * stor18.length) + ceil32(return_data.size) + 420
                require stor18.length - 1 < mem[(98 * stor18.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor18.length - 1) + (98 * stor18.length) + ceil32(return_data.size) + 420] >= stor21:
                    idx = 0
                    while idx < stor20:
                        _719 = mem[64]
                        mem[mem[64] + 32] = stor21
                        mem[mem[64] + 96] = stor22
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_719 + 160] = mem[96]
                        _721 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _719 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _813 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _719 + -mem[64] + 160
                        mem[64] = (32 * _721) + _719 + 192
                        mem[(32 * _721) + _719 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _815 = mem[_813]
                        t = _813 + 32
                        u = (32 * _721) + _719 + 228
                        s = mem[_813]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _721) + _719 + floor32(mem[_813]) + 228] = mem[_813 + floor32(mem[_813]) + -(mem[_813] % 32) + 64 len mem[_813] % 32] or Mask(8 * -(mem[_813] % 32) + 32, -(8 * -(mem[_813] % 32) + 32) + 256, mem[(32 * _721) + _719 + floor32(mem[_813]) + 228])
                        mem[(32 * _721) + _719 + 192] = _815 + 4
                        mem[64] = _815 + (32 * _721) + _719 + 228
                        t = (32 * _721) + _719 + 224
                        u = _815 + (32 * _721) + _719 + 228
                        s = _815 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_815 + (32 * _721) + _719 + floor32(_815 + 4) + 228] = mem[(32 * _721) + _719 + -(_815 + 4 % 32) + floor32(_815 + 4) + 256 len _815 + 4 % 32] or Mask(8 * -(_815 + 4 % 32) + 32, -(8 * -(_815 + 4 % 32) + 32) + 256, mem[_815 + (32 * _721) + _719 + floor32(_815 + 4) + 228])
                        call stor17.mem[_815 + (32 * _721) + _719 + 228 len 4] with:
                           value uint256(stor19.field_0) wei
                             gas gas_remaining wei
                            args mem[_815 + (32 * _721) + _719 + 232 len _815]
                        if return_data.size:
                            mem[64] = _815 + (32 * _721) + _719 + ceil32(return_data.size) + 229
                            mem[_815 + (32 * _721) + _719 + 228] = return_data.size
                            mem[_815 + (32 * _721) + _719 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _721) + _719 + floor32(_815 + 4) + 225
                            continue 
        else:
            mem[(98 * stor18.length) + 388] = return_data.size
            mem[(98 * stor18.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor18.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor18.length) + ceil32(return_data.size) + 393] = uint256(stor19.field_0)
                mem[(98 * stor18.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor18.length) + ceil32(return_data.size) + 457] = stor18.length
                mem[(98 * stor18.length) + ceil32(return_data.size) + 489 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor18.length) + ceil32(return_data.size) + 393 len (32 * stor18.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _491 = mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32)
                require mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) <= 4294967296
                require mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + 32 <= return_data.size
                require mem[(98 * stor18.length) + ceil32(return_data.size) + mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + 389] <= 4294967296 and mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + (32 * mem[(98 * stor18.length) + ceil32(return_data.size) + mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor18.length) + ceil32(return_data.size) + mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + 389]
                _503 = mem[(98 * stor18.length) + ceil32(return_data.size) + _491 + 389]
                mem[(98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor18.length) + ceil32(return_data.size) + _491 + 389])] = mem[(98 * stor18.length) + ceil32(return_data.size) + _491 + 421 len floor32(mem[(98 * stor18.length) + ceil32(return_data.size) + _491 + 389])]
                mem[64] = (32 * _503) + (98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor18.length - 1 < mem[(98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor18.length - 1) + (98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor21:
                    idx = 0
                    while idx < stor20:
                        _722 = mem[64]
                        mem[mem[64] + 32] = stor21
                        mem[mem[64] + 96] = stor22
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_722 + 160] = mem[96]
                        _724 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _722 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _817 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _722 + -mem[64] + 160
                        mem[64] = (32 * _724) + _722 + 192
                        mem[(32 * _724) + _722 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _819 = mem[_817]
                        t = _817 + 32
                        u = (32 * _724) + _722 + 228
                        s = mem[_817]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _724) + _722 + floor32(mem[_817]) + 228] = mem[_817 + floor32(mem[_817]) + -(mem[_817] % 32) + 64 len mem[_817] % 32] or Mask(8 * -(mem[_817] % 32) + 32, -(8 * -(mem[_817] % 32) + 32) + 256, mem[(32 * _724) + _722 + floor32(mem[_817]) + 228])
                        mem[(32 * _724) + _722 + 192] = _819 + 4
                        mem[64] = _819 + (32 * _724) + _722 + 228
                        t = (32 * _724) + _722 + 224
                        u = _819 + (32 * _724) + _722 + 228
                        s = _819 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_819 + (32 * _724) + _722 + floor32(_819 + 4) + 228] = mem[(32 * _724) + _722 + -(_819 + 4 % 32) + floor32(_819 + 4) + 256 len _819 + 4 % 32] or Mask(8 * -(_819 + 4 % 32) + 32, -(8 * -(_819 + 4 % 32) + 32) + 256, mem[_819 + (32 * _724) + _722 + floor32(_819 + 4) + 228])
                        call stor17.mem[_819 + (32 * _724) + _722 + 228 len 4] with:
                           value uint256(stor19.field_0) wei
                             gas gas_remaining wei
                            args mem[_819 + (32 * _724) + _722 + 232 len _819]
                        if return_data.size:
                            mem[64] = _819 + (32 * _724) + _722 + ceil32(return_data.size) + 229
                            mem[_819 + (32 * _724) + _722 + 228] = return_data.size
                            mem[_819 + (32 * _724) + _722 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _724) + _722 + floor32(_819 + 4) + 225
                            continue 
    else:
        mem[0] = 18
        mem[128] = address(stor18.field_0)
        idx = 128
        s = 0
        while (32 * stor18.length) + 96 > idx:
            mem[idx + 32] = stor18[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor18.length) + 160] = uint256(stor19.field_0)
        mem[(32 * stor18.length) + 192] = 64
        mem[(32 * stor18.length) + 224] = stor18.length
        mem[(32 * stor18.length) + 256 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
        mem[(32 * stor18.length) + 128] = (32 * stor18.length) + 96
        mem[(64 * stor18.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor18.length) + 292 len floor32((32 * stor18.length) + 96)] = uint256(stor19.field_0), Array(len=stor18.length, data=mem[(32 * stor18.length) + 256 len floor32((32 * stor18.length) + 96) - 96])
        mem[(64 * stor18.length) + floor32((32 * stor18.length) + 96) + -((32 * stor18.length) + 96 % 32) + 324 len (32 * stor18.length) + 96 % 32] = mem[(32 * stor18.length) + floor32((32 * stor18.length) + 96) + -((32 * stor18.length) + 96 % 32) + 192 len (32 * stor18.length) + 96 % 32]
        mem[(64 * stor18.length) + 256] = (162 * stor18.length) + 100
        mem[(98 * stor18.length) + 388 len floor32((162 * stor18.length) + 100)] = 0, mem[(64 * stor18.length) + 292 len floor32((162 * stor18.length) + 100) - 4]
        mem[(98 * stor18.length) + floor32((162 * stor18.length) + 100) + -((162 * stor18.length) + 100 % 32) + 420 len (162 * stor18.length) + 100 % 32] = mem[(64 * stor18.length) + -((162 * stor18.length) + 100 % 32) + floor32((162 * stor18.length) + 100) + 320 len (162 * stor18.length) + 100 % 32]
        call stor17.mem[(98 * stor18.length) + 388 len 4] with:
             gas gas_remaining wei
            args mem[(98 * stor18.length) + 392 len (162 * stor18.length) + 96]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor18.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor18.length) + 392] = uint256(stor19.field_0)
                mem[(98 * stor18.length) + 424] = 64
                mem[(98 * stor18.length) + 456] = stor18.length
                mem[(98 * stor18.length) + 488 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor19.field_0), Array(len=stor18.length, data=mem[128 len floor32(stor18.length)], mem[(98 * stor18.length) + floor32(stor18.length) + 488 len (32 * stor18.length) - floor32(stor18.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor18.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor18.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _739 = mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32)
                require mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) <= 4294967296
                require mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + 32 <= return_data.size
                require mem[(98 * stor18.length) + mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + 388] <= 4294967296 and mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + (32 * mem[(98 * stor18.length) + mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor18.length) + ceil32(return_data.size) + 388] = mem[(98 * stor18.length) + mem[(98 * stor18.length) + 388 len 4], Mask(224, 0, stor19.field_32) + 388]
                _765 = mem[(98 * stor18.length) + _739 + 388]
                mem[(98 * stor18.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor18.length) + _739 + 388])] = mem[(98 * stor18.length) + _739 + 420 len floor32(mem[(98 * stor18.length) + _739 + 388])]
                mem[64] = (32 * _765) + (98 * stor18.length) + ceil32(return_data.size) + 420
                require stor18.length - 1 < mem[(98 * stor18.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor18.length - 1) + (98 * stor18.length) + ceil32(return_data.size) + 420] >= stor21:
                    idx = 0
                    while idx < stor20:
                        _899 = mem[64]
                        mem[mem[64] + 32] = stor21
                        mem[mem[64] + 96] = stor22
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_899 + 160] = mem[96]
                        _901 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _899 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _953 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _899 + -mem[64] + 160
                        mem[64] = (32 * _901) + _899 + 192
                        mem[(32 * _901) + _899 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _955 = mem[_953]
                        t = _953 + 32
                        u = (32 * _901) + _899 + 228
                        s = mem[_953]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _901) + _899 + floor32(mem[_953]) + 228] = mem[_953 + floor32(mem[_953]) + -(mem[_953] % 32) + 64 len mem[_953] % 32] or Mask(8 * -(mem[_953] % 32) + 32, -(8 * -(mem[_953] % 32) + 32) + 256, mem[(32 * _901) + _899 + floor32(mem[_953]) + 228])
                        mem[(32 * _901) + _899 + 192] = _955 + 4
                        mem[64] = _955 + (32 * _901) + _899 + 228
                        t = (32 * _901) + _899 + 224
                        u = _955 + (32 * _901) + _899 + 228
                        s = _955 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_955 + (32 * _901) + _899 + floor32(_955 + 4) + 228] = mem[(32 * _901) + _899 + -(_955 + 4 % 32) + floor32(_955 + 4) + 256 len _955 + 4 % 32] or Mask(8 * -(_955 + 4 % 32) + 32, -(8 * -(_955 + 4 % 32) + 32) + 256, mem[_955 + (32 * _901) + _899 + floor32(_955 + 4) + 228])
                        call stor17.mem[_955 + (32 * _901) + _899 + 228 len 4] with:
                           value uint256(stor19.field_0) wei
                             gas gas_remaining wei
                            args mem[_955 + (32 * _901) + _899 + 232 len _955]
                        if return_data.size:
                            mem[64] = _955 + (32 * _901) + _899 + ceil32(return_data.size) + 229
                            mem[_955 + (32 * _901) + _899 + 228] = return_data.size
                            mem[_955 + (32 * _901) + _899 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _901) + _899 + floor32(_955 + 4) + 225
                            continue 
        else:
            mem[(98 * stor18.length) + 388] = return_data.size
            mem[(98 * stor18.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor18.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor18.length) + ceil32(return_data.size) + 393] = uint256(stor19.field_0)
                mem[(98 * stor18.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor18.length) + ceil32(return_data.size) + 457] = stor18.length
                mem[(98 * stor18.length) + ceil32(return_data.size) + 489 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
                require ext_code.size(stor17)
                staticcall stor17.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor19.field_0), Array(len=stor18.length, data=mem[128 len floor32(stor18.length)], mem[(98 * stor18.length) + ceil32(return_data.size) + floor32(stor18.length) + 489 len (32 * stor18.length) - floor32(stor18.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _741 = mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32)
                require mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) <= 4294967296
                require mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + 32 <= return_data.size
                require mem[(98 * stor18.length) + ceil32(return_data.size) + mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + 389] <= 4294967296 and mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + (32 * mem[(98 * stor18.length) + ceil32(return_data.size) + mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor18.length) + ceil32(return_data.size) + mem[(98 * stor18.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor19.field_32) + 389]
                _766 = mem[(98 * stor18.length) + ceil32(return_data.size) + _741 + 389]
                mem[(98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor18.length) + ceil32(return_data.size) + _741 + 389])] = mem[(98 * stor18.length) + ceil32(return_data.size) + _741 + 421 len floor32(mem[(98 * stor18.length) + ceil32(return_data.size) + _741 + 389])]
                mem[64] = (32 * _766) + (98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor18.length - 1 < mem[(98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor18.length - 1) + (98 * stor18.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor21:
                    idx = 0
                    while idx < stor20:
                        _902 = mem[64]
                        mem[mem[64] + 32] = stor21
                        mem[mem[64] + 96] = stor22
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_902 + 160] = mem[96]
                        _904 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _902 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _957 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _902 + -mem[64] + 160
                        mem[64] = (32 * _904) + _902 + 192
                        mem[(32 * _904) + _902 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _959 = mem[_957]
                        t = _957 + 32
                        u = (32 * _904) + _902 + 228
                        s = mem[_957]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _904) + _902 + floor32(mem[_957]) + 228] = mem[_957 + floor32(mem[_957]) + -(mem[_957] % 32) + 64 len mem[_957] % 32] or Mask(8 * -(mem[_957] % 32) + 32, -(8 * -(mem[_957] % 32) + 32) + 256, mem[(32 * _904) + _902 + floor32(mem[_957]) + 228])
                        mem[(32 * _904) + _902 + 192] = _959 + 4
                        mem[64] = _959 + (32 * _904) + _902 + 228
                        t = (32 * _904) + _902 + 224
                        u = _959 + (32 * _904) + _902 + 228
                        s = _959 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_959 + (32 * _904) + _902 + floor32(_959 + 4) + 228] = mem[(32 * _904) + _902 + -(_959 + 4 % 32) + floor32(_959 + 4) + 256 len _959 + 4 % 32] or Mask(8 * -(_959 + 4 % 32) + 32, -(8 * -(_959 + 4 % 32) + 32) + 256, mem[_959 + (32 * _904) + _902 + floor32(_959 + 4) + 228])
                        call stor17.mem[_959 + (32 * _904) + _902 + 228 len 4] with:
                           value uint256(stor19.field_0) wei
                             gas gas_remaining wei
                            args mem[_959 + (32 * _904) + _902 + 232 len _959]
                        if return_data.size:
                            mem[64] = _959 + (32 * _904) + _902 + ceil32(return_data.size) + 229
                            mem[_959 + (32 * _904) + _902 + 228] = return_data.size
                            mem[_959 + (32 * _904) + _902 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _904) + _902 + floor32(_959 + 4) + 225
                            continue 
}

function sub_e1e78362(?) payable {
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[96] = stor11.length
    if not stor11.length:
        mem[(32 * stor11.length) + 160] = uint256(stor12.field_0)
        mem[(32 * stor11.length) + 192] = 64
        mem[(32 * stor11.length) + 224] = stor11.length
        mem[(32 * stor11.length) + 256 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        mem[(32 * stor11.length) + 128] = (32 * stor11.length) + 96
        mem[(64 * stor11.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor11.length) + 292 len floor32((32 * stor11.length) + 96)] = uint256(stor12.field_0), Array(len=stor11.length, data=mem[(32 * stor11.length) + 256 len floor32((32 * stor11.length) + 96) - 96])
        mem[(64 * stor11.length) + floor32((32 * stor11.length) + 96) + -((32 * stor11.length) + 96 % 32) + 324 len (32 * stor11.length) + 96 % 32] = mem[(32 * stor11.length) + floor32((32 * stor11.length) + 96) + -((32 * stor11.length) + 96 % 32) + 192 len (32 * stor11.length) + 96 % 32]
        mem[(64 * stor11.length) + 256] = (161 * stor11.length) + 100
        mem[(98 * stor11.length) + 388 len floor32((161 * stor11.length) + 100)] = 0, mem[(64 * stor11.length) + 292 len floor32((161 * stor11.length) + 100) - 4]
        mem[(98 * stor11.length) + floor32((161 * stor11.length) + 100) + -((161 * stor11.length) + 100 % 32) + 420 len (161 * stor11.length) + 100 % 32] = mem[(32 * stor11.length) + -((161 * stor11.length) + 100 % 32) + floor32((161 * stor11.length) + 100) + 220 len (161 * stor11.length) + -floor32((161 * stor11.length) + 100) + 100]
        call stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(64 * stor11.length) + 292 len floor32((161 * stor11.length) + 100) - 4], mem[(98 * stor11.length) + floor32((161 * stor11.length) + 100) + 388 len (161 * stor11.length) + -floor32((161 * stor11.length) + 100) + 100]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor11.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor11.length) + 392] = uint256(stor12.field_0)
                mem[(98 * stor11.length) + 424] = 64
                mem[(98 * stor11.length) + 456] = stor11.length
                mem[(98 * stor11.length) + 488 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
                require ext_code.size(stor10)
                staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor11.length) + 392 len (32 * stor11.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor11.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor11.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _489 = mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32)
                require mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                require mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                require mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388] <= 4294967296 and mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor11.length) + ceil32(return_data.size) + 388] = mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388]
                _502 = mem[(98 * stor11.length) + _489 + 388]
                mem[(98 * stor11.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor11.length) + _489 + 388])] = mem[(98 * stor11.length) + _489 + 420 len floor32(mem[(98 * stor11.length) + _489 + 388])]
                mem[64] = (32 * _502) + (98 * stor11.length) + ceil32(return_data.size) + 420
                require stor11.length - 1 < mem[(98 * stor11.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor11.length - 1) + (98 * stor11.length) + ceil32(return_data.size) + 420] >= stor14:
                    idx = 0
                    while idx < stor13:
                        _719 = mem[64]
                        mem[mem[64] + 32] = stor14
                        mem[mem[64] + 96] = stor15
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_719 + 160] = mem[96]
                        _721 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _719 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _813 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _719 + -mem[64] + 160
                        mem[64] = (32 * _721) + _719 + 192
                        mem[(32 * _721) + _719 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _815 = mem[_813]
                        t = _813 + 32
                        u = (32 * _721) + _719 + 228
                        s = mem[_813]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _721) + _719 + floor32(mem[_813]) + 228] = mem[_813 + floor32(mem[_813]) + -(mem[_813] % 32) + 64 len mem[_813] % 32] or Mask(8 * -(mem[_813] % 32) + 32, -(8 * -(mem[_813] % 32) + 32) + 256, mem[(32 * _721) + _719 + floor32(mem[_813]) + 228])
                        mem[(32 * _721) + _719 + 192] = _815 + 4
                        mem[64] = _815 + (32 * _721) + _719 + 228
                        t = (32 * _721) + _719 + 224
                        u = _815 + (32 * _721) + _719 + 228
                        s = _815 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_815 + (32 * _721) + _719 + floor32(_815 + 4) + 228] = mem[(32 * _721) + _719 + -(_815 + 4 % 32) + floor32(_815 + 4) + 256 len _815 + 4 % 32] or Mask(8 * -(_815 + 4 % 32) + 32, -(8 * -(_815 + 4 % 32) + 32) + 256, mem[_815 + (32 * _721) + _719 + floor32(_815 + 4) + 228])
                        call stor10.mem[_815 + (32 * _721) + _719 + 228 len 4] with:
                           value uint256(stor12.field_0) wei
                             gas gas_remaining wei
                            args mem[_815 + (32 * _721) + _719 + 232 len _815]
                        if return_data.size:
                            mem[64] = _815 + (32 * _721) + _719 + ceil32(return_data.size) + 229
                            mem[_815 + (32 * _721) + _719 + 228] = return_data.size
                            mem[_815 + (32 * _721) + _719 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _721) + _719 + floor32(_815 + 4) + 225
                            continue 
        else:
            mem[(98 * stor11.length) + 388] = return_data.size
            mem[(98 * stor11.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor11.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor11.length) + ceil32(return_data.size) + 393] = uint256(stor12.field_0)
                mem[(98 * stor11.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor11.length) + ceil32(return_data.size) + 457] = stor11.length
                mem[(98 * stor11.length) + ceil32(return_data.size) + 489 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
                require ext_code.size(stor10)
                staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor11.length) + ceil32(return_data.size) + 393 len (32 * stor11.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _491 = mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32)
                require mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                require mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                require mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389] <= 4294967296 and mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389]
                _503 = mem[(98 * stor11.length) + ceil32(return_data.size) + _491 + 389]
                mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor11.length) + ceil32(return_data.size) + _491 + 389])] = mem[(98 * stor11.length) + ceil32(return_data.size) + _491 + 421 len floor32(mem[(98 * stor11.length) + ceil32(return_data.size) + _491 + 389])]
                mem[64] = (32 * _503) + (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor11.length - 1 < mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor11.length - 1) + (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor14:
                    idx = 0
                    while idx < stor13:
                        _722 = mem[64]
                        mem[mem[64] + 32] = stor14
                        mem[mem[64] + 96] = stor15
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_722 + 160] = mem[96]
                        _724 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _722 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _817 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _722 + -mem[64] + 160
                        mem[64] = (32 * _724) + _722 + 192
                        mem[(32 * _724) + _722 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _819 = mem[_817]
                        t = _817 + 32
                        u = (32 * _724) + _722 + 228
                        s = mem[_817]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _724) + _722 + floor32(mem[_817]) + 228] = mem[_817 + floor32(mem[_817]) + -(mem[_817] % 32) + 64 len mem[_817] % 32] or Mask(8 * -(mem[_817] % 32) + 32, -(8 * -(mem[_817] % 32) + 32) + 256, mem[(32 * _724) + _722 + floor32(mem[_817]) + 228])
                        mem[(32 * _724) + _722 + 192] = _819 + 4
                        mem[64] = _819 + (32 * _724) + _722 + 228
                        t = (32 * _724) + _722 + 224
                        u = _819 + (32 * _724) + _722 + 228
                        s = _819 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_819 + (32 * _724) + _722 + floor32(_819 + 4) + 228] = mem[(32 * _724) + _722 + -(_819 + 4 % 32) + floor32(_819 + 4) + 256 len _819 + 4 % 32] or Mask(8 * -(_819 + 4 % 32) + 32, -(8 * -(_819 + 4 % 32) + 32) + 256, mem[_819 + (32 * _724) + _722 + floor32(_819 + 4) + 228])
                        call stor10.mem[_819 + (32 * _724) + _722 + 228 len 4] with:
                           value uint256(stor12.field_0) wei
                             gas gas_remaining wei
                            args mem[_819 + (32 * _724) + _722 + 232 len _819]
                        if return_data.size:
                            mem[64] = _819 + (32 * _724) + _722 + ceil32(return_data.size) + 229
                            mem[_819 + (32 * _724) + _722 + 228] = return_data.size
                            mem[_819 + (32 * _724) + _722 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _724) + _722 + floor32(_819 + 4) + 225
                            continue 
    else:
        mem[0] = 11
        mem[128] = address(stor11.field_0)
        idx = 128
        s = 0
        while (32 * stor11.length) + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor11.length) + 160] = uint256(stor12.field_0)
        mem[(32 * stor11.length) + 192] = 64
        mem[(32 * stor11.length) + 224] = stor11.length
        mem[(32 * stor11.length) + 256 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        mem[(32 * stor11.length) + 128] = (32 * stor11.length) + 96
        mem[(64 * stor11.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor11.length) + 292 len floor32((32 * stor11.length) + 96)] = uint256(stor12.field_0), Array(len=stor11.length, data=mem[(32 * stor11.length) + 256 len floor32((32 * stor11.length) + 96) - 96])
        mem[(64 * stor11.length) + floor32((32 * stor11.length) + 96) + -((32 * stor11.length) + 96 % 32) + 324 len (32 * stor11.length) + 96 % 32] = mem[(32 * stor11.length) + floor32((32 * stor11.length) + 96) + -((32 * stor11.length) + 96 % 32) + 192 len (32 * stor11.length) + 96 % 32]
        mem[(64 * stor11.length) + 256] = (162 * stor11.length) + 100
        mem[(98 * stor11.length) + 388 len floor32((162 * stor11.length) + 100)] = 0, mem[(64 * stor11.length) + 292 len floor32((162 * stor11.length) + 100) - 4]
        mem[(98 * stor11.length) + floor32((162 * stor11.length) + 100) + -((162 * stor11.length) + 100 % 32) + 420 len (162 * stor11.length) + 100 % 32] = mem[(64 * stor11.length) + -((162 * stor11.length) + 100 % 32) + floor32((162 * stor11.length) + 100) + 320 len (162 * stor11.length) + 100 % 32]
        call stor10.mem[(98 * stor11.length) + 388 len 4] with:
             gas gas_remaining wei
            args mem[(98 * stor11.length) + 392 len (162 * stor11.length) + 96]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor11.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor11.length) + 392] = uint256(stor12.field_0)
                mem[(98 * stor11.length) + 424] = 64
                mem[(98 * stor11.length) + 456] = stor11.length
                mem[(98 * stor11.length) + 488 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
                require ext_code.size(stor10)
                staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor12.field_0), Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(98 * stor11.length) + floor32(stor11.length) + 488 len (32 * stor11.length) - floor32(stor11.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor11.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor11.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _739 = mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32)
                require mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                require mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                require mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388] <= 4294967296 and mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor11.length) + ceil32(return_data.size) + 388] = mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388]
                _765 = mem[(98 * stor11.length) + _739 + 388]
                mem[(98 * stor11.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor11.length) + _739 + 388])] = mem[(98 * stor11.length) + _739 + 420 len floor32(mem[(98 * stor11.length) + _739 + 388])]
                mem[64] = (32 * _765) + (98 * stor11.length) + ceil32(return_data.size) + 420
                require stor11.length - 1 < mem[(98 * stor11.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor11.length - 1) + (98 * stor11.length) + ceil32(return_data.size) + 420] >= stor14:
                    idx = 0
                    while idx < stor13:
                        _899 = mem[64]
                        mem[mem[64] + 32] = stor14
                        mem[mem[64] + 96] = stor15
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_899 + 160] = mem[96]
                        _901 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _899 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _953 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _899 + -mem[64] + 160
                        mem[64] = (32 * _901) + _899 + 192
                        mem[(32 * _901) + _899 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _955 = mem[_953]
                        t = _953 + 32
                        u = (32 * _901) + _899 + 228
                        s = mem[_953]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _901) + _899 + floor32(mem[_953]) + 228] = mem[_953 + floor32(mem[_953]) + -(mem[_953] % 32) + 64 len mem[_953] % 32] or Mask(8 * -(mem[_953] % 32) + 32, -(8 * -(mem[_953] % 32) + 32) + 256, mem[(32 * _901) + _899 + floor32(mem[_953]) + 228])
                        mem[(32 * _901) + _899 + 192] = _955 + 4
                        mem[64] = _955 + (32 * _901) + _899 + 228
                        t = (32 * _901) + _899 + 224
                        u = _955 + (32 * _901) + _899 + 228
                        s = _955 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_955 + (32 * _901) + _899 + floor32(_955 + 4) + 228] = mem[(32 * _901) + _899 + -(_955 + 4 % 32) + floor32(_955 + 4) + 256 len _955 + 4 % 32] or Mask(8 * -(_955 + 4 % 32) + 32, -(8 * -(_955 + 4 % 32) + 32) + 256, mem[_955 + (32 * _901) + _899 + floor32(_955 + 4) + 228])
                        call stor10.mem[_955 + (32 * _901) + _899 + 228 len 4] with:
                           value uint256(stor12.field_0) wei
                             gas gas_remaining wei
                            args mem[_955 + (32 * _901) + _899 + 232 len _955]
                        if return_data.size:
                            mem[64] = _955 + (32 * _901) + _899 + ceil32(return_data.size) + 229
                            mem[_955 + (32 * _901) + _899 + 228] = return_data.size
                            mem[_955 + (32 * _901) + _899 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _901) + _899 + floor32(_955 + 4) + 225
                            continue 
        else:
            mem[(98 * stor11.length) + 388] = return_data.size
            mem[(98 * stor11.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor11.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor11.length) + ceil32(return_data.size) + 393] = uint256(stor12.field_0)
                mem[(98 * stor11.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor11.length) + ceil32(return_data.size) + 457] = stor11.length
                mem[(98 * stor11.length) + ceil32(return_data.size) + 489 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
                require ext_code.size(stor10)
                staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor12.field_0), Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(98 * stor11.length) + ceil32(return_data.size) + floor32(stor11.length) + 489 len (32 * stor11.length) - floor32(stor11.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _741 = mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32)
                require mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                require mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                require mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389] <= 4294967296 and mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389]
                _766 = mem[(98 * stor11.length) + ceil32(return_data.size) + _741 + 389]
                mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor11.length) + ceil32(return_data.size) + _741 + 389])] = mem[(98 * stor11.length) + ceil32(return_data.size) + _741 + 421 len floor32(mem[(98 * stor11.length) + ceil32(return_data.size) + _741 + 389])]
                mem[64] = (32 * _766) + (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor11.length - 1 < mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor11.length - 1) + (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor14:
                    idx = 0
                    while idx < stor13:
                        _902 = mem[64]
                        mem[mem[64] + 32] = stor14
                        mem[mem[64] + 96] = stor15
                        mem[mem[64] + 128] = 6644285921
                        mem[mem[64] + 64] = 128
                        mem[_902 + 160] = mem[96]
                        _904 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + _902 + 192] = mem[s + 128]
                            s = s + 32
                            continue 
                        _957 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + _902 + -mem[64] + 160
                        mem[64] = (32 * _904) + _902 + 192
                        mem[(32 * _904) + _902 + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        _959 = mem[_957]
                        t = _957 + 32
                        u = (32 * _904) + _902 + 228
                        s = mem[_957]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _904) + _902 + floor32(mem[_957]) + 228] = mem[_957 + floor32(mem[_957]) + -(mem[_957] % 32) + 64 len mem[_957] % 32] or Mask(8 * -(mem[_957] % 32) + 32, -(8 * -(mem[_957] % 32) + 32) + 256, mem[(32 * _904) + _902 + floor32(mem[_957]) + 228])
                        mem[(32 * _904) + _902 + 192] = _959 + 4
                        mem[64] = _959 + (32 * _904) + _902 + 228
                        t = (32 * _904) + _902 + 224
                        u = _959 + (32 * _904) + _902 + 228
                        s = _959 + 4
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_959 + (32 * _904) + _902 + floor32(_959 + 4) + 228] = mem[(32 * _904) + _902 + -(_959 + 4 % 32) + floor32(_959 + 4) + 256 len _959 + 4 % 32] or Mask(8 * -(_959 + 4 % 32) + 32, -(8 * -(_959 + 4 % 32) + 32) + 256, mem[_959 + (32 * _904) + _902 + floor32(_959 + 4) + 228])
                        call stor10.mem[_959 + (32 * _904) + _902 + 228 len 4] with:
                           value uint256(stor12.field_0) wei
                             gas gas_remaining wei
                            args mem[_959 + (32 * _904) + _902 + 232 len _959]
                        if return_data.size:
                            mem[64] = _959 + (32 * _904) + _902 + ceil32(return_data.size) + 229
                            mem[_959 + (32 * _904) + _902 + 228] = return_data.size
                            mem[_959 + (32 * _904) + _902 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = (32 * _904) + _902 + floor32(_959 + 4) + 225
                            continue 
}

function sub_3beb7ca9(?) payable {
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[96] = stor25.length
    if not stor25.length:
        mem[(32 * stor25.length) + 160] = uint256(stor26.field_0)
        mem[(32 * stor25.length) + 192] = 64
        mem[(32 * stor25.length) + 224] = stor25.length
        mem[(32 * stor25.length) + 256 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
        mem[(32 * stor25.length) + 128] = (32 * stor25.length) + 96
        mem[(64 * stor25.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor25.length) + 292 len floor32((32 * stor25.length) + 96)] = uint256(stor26.field_0), Array(len=stor25.length, data=mem[(32 * stor25.length) + 256 len floor32((32 * stor25.length) + 96) - 96])
        mem[(64 * stor25.length) + floor32((32 * stor25.length) + 96) + -((32 * stor25.length) + 96 % 32) + 324 len (32 * stor25.length) + 96 % 32] = mem[(32 * stor25.length) + floor32((32 * stor25.length) + 96) + -((32 * stor25.length) + 96 % 32) + 192 len (32 * stor25.length) + 96 % 32]
        mem[(64 * stor25.length) + 256] = (161 * stor25.length) + 100
        mem[(98 * stor25.length) + 388 len floor32((161 * stor25.length) + 100)] = 0, mem[(64 * stor25.length) + 292 len floor32((161 * stor25.length) + 100) - 4]
        mem[(98 * stor25.length) + floor32((161 * stor25.length) + 100) + -((161 * stor25.length) + 100 % 32) + 420 len (161 * stor25.length) + 100 % 32] = mem[(32 * stor25.length) + -((161 * stor25.length) + 100 % 32) + floor32((161 * stor25.length) + 100) + 220 len (161 * stor25.length) + -floor32((161 * stor25.length) + 100) + 100]
        call stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(64 * stor25.length) + 292 len floor32((161 * stor25.length) + 100) - 4], mem[(98 * stor25.length) + floor32((161 * stor25.length) + 100) + 388 len (161 * stor25.length) + -floor32((161 * stor25.length) + 100) + 100]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor25.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor25.length) + 392] = uint256(stor26.field_0)
                mem[(98 * stor25.length) + 424] = 64
                mem[(98 * stor25.length) + 456] = stor25.length
                mem[(98 * stor25.length) + 488 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
                require ext_code.size(stor24)
                staticcall stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor25.length) + 392 len (32 * stor25.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor25.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor25.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _489 = mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32)
                require mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) <= 4294967296
                require mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 32 <= return_data.size
                require mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388] <= 4294967296 and mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + (32 * mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor25.length) + ceil32(return_data.size) + 388] = mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388]
                _502 = mem[(98 * stor25.length) + _489 + 388]
                mem[(98 * stor25.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor25.length) + _489 + 388])] = mem[(98 * stor25.length) + _489 + 420 len floor32(mem[(98 * stor25.length) + _489 + 388])]
                mem[64] = (32 * _502) + (98 * stor25.length) + ceil32(return_data.size) + 420
                require stor25.length - 1 < mem[(98 * stor25.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor25.length - 1) + (98 * stor25.length) + ceil32(return_data.size) + 420] >= stor28:
                    idx = 0
                    while idx < stor27:
                        _719 = mem[64]
                        mem[mem[64] + 32] = uint256(stor26.field_0)
                        mem[mem[64] + 64] = stor28
                        mem[mem[64] + 128] = stor29
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _721 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _813 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _721) + mem[64] + 224
                        mem[(32 * _721) + _719 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _815 = mem[_813]
                        t = _813 + 32
                        u = (32 * _721) + _719 + 260
                        s = mem[_813]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _721) + _719 + floor32(mem[_813]) + 260] = mem[_813 + floor32(mem[_813]) + -(mem[_813] % 32) + 64 len mem[_813] % 32] or Mask(8 * -(mem[_813] % 32) + 32, -(8 * -(mem[_813] % 32) + 32) + 256, mem[(32 * _721) + _719 + floor32(mem[_813]) + 260])
                        _889 = mem[64]
                        mem[mem[64]] = _815 + (32 * _721) + _719 + -mem[64] + 228
                        mem[64] = _815 + (32 * _721) + _719 + 260
                        _891 = mem[_889]
                        t = _889 + 32
                        u = _815 + (32 * _721) + _719 + 260
                        s = mem[_889]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_815 + (32 * _721) + _719 + floor32(mem[_889]) + 260] = mem[_889 + -(mem[_889] % 32) + floor32(mem[_889]) + 64 len mem[_889] % 32] or Mask(8 * -(mem[_889] % 32) + 32, -(8 * -(mem[_889] % 32) + 32) + 256, mem[_815 + (32 * _721) + _719 + floor32(mem[_889]) + 260])
                        call stor24.mem[_815 + (32 * _721) + _719 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_815 + (32 * _721) + _719 + 264 len _891 - 4]
                        if return_data.size:
                            mem[64] = _815 + (32 * _721) + _719 + ceil32(return_data.size) + 261
                            mem[_815 + (32 * _721) + _719 + 260] = return_data.size
                            mem[_815 + (32 * _721) + _719 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
        else:
            mem[(98 * stor25.length) + 388] = return_data.size
            mem[(98 * stor25.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor25.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor25.length) + ceil32(return_data.size) + 393] = uint256(stor26.field_0)
                mem[(98 * stor25.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor25.length) + ceil32(return_data.size) + 457] = stor25.length
                mem[(98 * stor25.length) + ceil32(return_data.size) + 489 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
                require ext_code.size(stor24)
                staticcall stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor25.length) + ceil32(return_data.size) + 393 len (32 * stor25.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _491 = mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32)
                require mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) <= 4294967296
                require mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 32 <= return_data.size
                require mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389] <= 4294967296 and mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + (32 * mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389]
                _503 = mem[(98 * stor25.length) + ceil32(return_data.size) + _491 + 389]
                mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor25.length) + ceil32(return_data.size) + _491 + 389])] = mem[(98 * stor25.length) + ceil32(return_data.size) + _491 + 421 len floor32(mem[(98 * stor25.length) + ceil32(return_data.size) + _491 + 389])]
                mem[64] = (32 * _503) + (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor25.length - 1 < mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor25.length - 1) + (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor28:
                    idx = 0
                    while idx < stor27:
                        _722 = mem[64]
                        mem[mem[64] + 32] = uint256(stor26.field_0)
                        mem[mem[64] + 64] = stor28
                        mem[mem[64] + 128] = stor29
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _724 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _817 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _724) + mem[64] + 224
                        mem[(32 * _724) + _722 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _819 = mem[_817]
                        t = _817 + 32
                        u = (32 * _724) + _722 + 260
                        s = mem[_817]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _724) + _722 + floor32(mem[_817]) + 260] = mem[_817 + floor32(mem[_817]) + -(mem[_817] % 32) + 64 len mem[_817] % 32] or Mask(8 * -(mem[_817] % 32) + 32, -(8 * -(mem[_817] % 32) + 32) + 256, mem[(32 * _724) + _722 + floor32(mem[_817]) + 260])
                        _895 = mem[64]
                        mem[mem[64]] = _819 + (32 * _724) + _722 + -mem[64] + 228
                        mem[64] = _819 + (32 * _724) + _722 + 260
                        _897 = mem[_895]
                        t = _895 + 32
                        u = _819 + (32 * _724) + _722 + 260
                        s = mem[_895]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_819 + (32 * _724) + _722 + floor32(mem[_895]) + 260] = mem[_895 + -(mem[_895] % 32) + floor32(mem[_895]) + 64 len mem[_895] % 32] or Mask(8 * -(mem[_895] % 32) + 32, -(8 * -(mem[_895] % 32) + 32) + 256, mem[_819 + (32 * _724) + _722 + floor32(mem[_895]) + 260])
                        call stor24.mem[_819 + (32 * _724) + _722 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_819 + (32 * _724) + _722 + 264 len _897 - 4]
                        if return_data.size:
                            mem[64] = _819 + (32 * _724) + _722 + ceil32(return_data.size) + 261
                            mem[_819 + (32 * _724) + _722 + 260] = return_data.size
                            mem[_819 + (32 * _724) + _722 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
    else:
        mem[0] = 25
        mem[128] = address(stor25.field_0)
        idx = 128
        s = 0
        while (32 * stor25.length) + 96 > idx:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor25.length) + 160] = uint256(stor26.field_0)
        mem[(32 * stor25.length) + 192] = 64
        mem[(32 * stor25.length) + 224] = stor25.length
        mem[(32 * stor25.length) + 256 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
        mem[(32 * stor25.length) + 128] = (32 * stor25.length) + 96
        mem[(64 * stor25.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor25.length) + 292 len floor32((32 * stor25.length) + 96)] = uint256(stor26.field_0), Array(len=stor25.length, data=mem[(32 * stor25.length) + 256 len floor32((32 * stor25.length) + 96) - 96])
        mem[(64 * stor25.length) + floor32((32 * stor25.length) + 96) + -((32 * stor25.length) + 96 % 32) + 324 len (32 * stor25.length) + 96 % 32] = mem[(32 * stor25.length) + floor32((32 * stor25.length) + 96) + -((32 * stor25.length) + 96 % 32) + 192 len (32 * stor25.length) + 96 % 32]
        mem[(64 * stor25.length) + 256] = (162 * stor25.length) + 100
        mem[(98 * stor25.length) + 388 len floor32((162 * stor25.length) + 100)] = 0, mem[(64 * stor25.length) + 292 len floor32((162 * stor25.length) + 100) - 4]
        mem[(98 * stor25.length) + floor32((162 * stor25.length) + 100) + -((162 * stor25.length) + 100 % 32) + 420 len (162 * stor25.length) + 100 % 32] = mem[(64 * stor25.length) + -((162 * stor25.length) + 100 % 32) + floor32((162 * stor25.length) + 100) + 320 len (162 * stor25.length) + 100 % 32]
        call stor24.mem[(98 * stor25.length) + 388 len 4] with:
             gas gas_remaining wei
            args mem[(98 * stor25.length) + 392 len (162 * stor25.length) + 96]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor25.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor25.length) + 392] = uint256(stor26.field_0)
                mem[(98 * stor25.length) + 424] = 64
                mem[(98 * stor25.length) + 456] = stor25.length
                mem[(98 * stor25.length) + 488 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
                require ext_code.size(stor24)
                staticcall stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor26.field_0), Array(len=stor25.length, data=mem[128 len floor32(stor25.length)], mem[(98 * stor25.length) + floor32(stor25.length) + 488 len (32 * stor25.length) - floor32(stor25.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor25.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor25.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _739 = mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32)
                require mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) <= 4294967296
                require mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 32 <= return_data.size
                require mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388] <= 4294967296 and mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + (32 * mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor25.length) + ceil32(return_data.size) + 388] = mem[(98 * stor25.length) + mem[(98 * stor25.length) + 388 len 4], Mask(224, 0, stor26.field_32) + 388]
                _765 = mem[(98 * stor25.length) + _739 + 388]
                mem[(98 * stor25.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor25.length) + _739 + 388])] = mem[(98 * stor25.length) + _739 + 420 len floor32(mem[(98 * stor25.length) + _739 + 388])]
                mem[64] = (32 * _765) + (98 * stor25.length) + ceil32(return_data.size) + 420
                require stor25.length - 1 < mem[(98 * stor25.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor25.length - 1) + (98 * stor25.length) + ceil32(return_data.size) + 420] >= stor28:
                    idx = 0
                    while idx < stor27:
                        _899 = mem[64]
                        mem[mem[64] + 32] = uint256(stor26.field_0)
                        mem[mem[64] + 64] = stor28
                        mem[mem[64] + 128] = stor29
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _901 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _953 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _901) + mem[64] + 224
                        mem[(32 * _901) + _899 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _955 = mem[_953]
                        t = _953 + 32
                        u = (32 * _901) + _899 + 260
                        s = mem[_953]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _901) + _899 + floor32(mem[_953]) + 260] = mem[_953 + floor32(mem[_953]) + -(mem[_953] % 32) + 64 len mem[_953] % 32] or Mask(8 * -(mem[_953] % 32) + 32, -(8 * -(mem[_953] % 32) + 32) + 256, mem[(32 * _901) + _899 + floor32(mem[_953]) + 260])
                        _987 = mem[64]
                        mem[mem[64]] = _955 + (32 * _901) + _899 + -mem[64] + 228
                        mem[64] = _955 + (32 * _901) + _899 + 260
                        _989 = mem[_987]
                        t = _987 + 32
                        u = _955 + (32 * _901) + _899 + 260
                        s = mem[_987]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_955 + (32 * _901) + _899 + floor32(mem[_987]) + 260] = mem[_987 + -(mem[_987] % 32) + floor32(mem[_987]) + 64 len mem[_987] % 32] or Mask(8 * -(mem[_987] % 32) + 32, -(8 * -(mem[_987] % 32) + 32) + 256, mem[_955 + (32 * _901) + _899 + floor32(mem[_987]) + 260])
                        call stor24.mem[_955 + (32 * _901) + _899 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_955 + (32 * _901) + _899 + 264 len _989 - 4]
                        if return_data.size:
                            mem[64] = _955 + (32 * _901) + _899 + ceil32(return_data.size) + 261
                            mem[_955 + (32 * _901) + _899 + 260] = return_data.size
                            mem[_955 + (32 * _901) + _899 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
        else:
            mem[(98 * stor25.length) + 388] = return_data.size
            mem[(98 * stor25.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor25.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor25.length) + ceil32(return_data.size) + 393] = uint256(stor26.field_0)
                mem[(98 * stor25.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor25.length) + ceil32(return_data.size) + 457] = stor25.length
                mem[(98 * stor25.length) + ceil32(return_data.size) + 489 len floor32(stor25.length)] = mem[128 len floor32(stor25.length)]
                require ext_code.size(stor24)
                staticcall stor24.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor26.field_0), Array(len=stor25.length, data=mem[128 len floor32(stor25.length)], mem[(98 * stor25.length) + ceil32(return_data.size) + floor32(stor25.length) + 489 len (32 * stor25.length) - floor32(stor25.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _741 = mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32)
                require mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) <= 4294967296
                require mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 32 <= return_data.size
                require mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389] <= 4294967296 and mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + (32 * mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor25.length) + ceil32(return_data.size) + mem[(98 * stor25.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor26.field_32) + 389]
                _766 = mem[(98 * stor25.length) + ceil32(return_data.size) + _741 + 389]
                mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor25.length) + ceil32(return_data.size) + _741 + 389])] = mem[(98 * stor25.length) + ceil32(return_data.size) + _741 + 421 len floor32(mem[(98 * stor25.length) + ceil32(return_data.size) + _741 + 389])]
                mem[64] = (32 * _766) + (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor25.length - 1 < mem[(98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor25.length - 1) + (98 * stor25.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor28:
                    idx = 0
                    while idx < stor27:
                        _902 = mem[64]
                        mem[mem[64] + 32] = uint256(stor26.field_0)
                        mem[mem[64] + 64] = stor28
                        mem[mem[64] + 128] = stor29
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _904 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _957 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _904) + mem[64] + 224
                        mem[(32 * _904) + _902 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _959 = mem[_957]
                        t = _957 + 32
                        u = (32 * _904) + _902 + 260
                        s = mem[_957]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _904) + _902 + floor32(mem[_957]) + 260] = mem[_957 + floor32(mem[_957]) + -(mem[_957] % 32) + 64 len mem[_957] % 32] or Mask(8 * -(mem[_957] % 32) + 32, -(8 * -(mem[_957] % 32) + 32) + 256, mem[(32 * _904) + _902 + floor32(mem[_957]) + 260])
                        _993 = mem[64]
                        mem[mem[64]] = _959 + (32 * _904) + _902 + -mem[64] + 228
                        mem[64] = _959 + (32 * _904) + _902 + 260
                        _995 = mem[_993]
                        t = _993 + 32
                        u = _959 + (32 * _904) + _902 + 260
                        s = mem[_993]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_959 + (32 * _904) + _902 + floor32(mem[_993]) + 260] = mem[_993 + -(mem[_993] % 32) + floor32(mem[_993]) + 64 len mem[_993] % 32] or Mask(8 * -(mem[_993] % 32) + 32, -(8 * -(mem[_993] % 32) + 32) + 256, mem[_959 + (32 * _904) + _902 + floor32(mem[_993]) + 260])
                        call stor24.mem[_959 + (32 * _904) + _902 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_959 + (32 * _904) + _902 + 264 len _995 - 4]
                        if return_data.size:
                            mem[64] = _959 + (32 * _904) + _902 + ceil32(return_data.size) + 261
                            mem[_959 + (32 * _904) + _902 + 260] = return_data.size
                            mem[_959 + (32 * _904) + _902 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
}

function sub_d8428522(?) payable {
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[96] = stor11.length
    if not stor11.length:
        mem[(32 * stor11.length) + 160] = uint256(stor12.field_0)
        mem[(32 * stor11.length) + 192] = 64
        mem[(32 * stor11.length) + 224] = stor11.length
        mem[(32 * stor11.length) + 256 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        mem[(32 * stor11.length) + 128] = (32 * stor11.length) + 96
        mem[(64 * stor11.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor11.length) + 292 len floor32((32 * stor11.length) + 96)] = uint256(stor12.field_0), Array(len=stor11.length, data=mem[(32 * stor11.length) + 256 len floor32((32 * stor11.length) + 96) - 96])
        mem[(64 * stor11.length) + floor32((32 * stor11.length) + 96) + -((32 * stor11.length) + 96 % 32) + 324 len (32 * stor11.length) + 96 % 32] = mem[(32 * stor11.length) + floor32((32 * stor11.length) + 96) + -((32 * stor11.length) + 96 % 32) + 192 len (32 * stor11.length) + 96 % 32]
        mem[(64 * stor11.length) + 256] = (161 * stor11.length) + 100
        mem[(98 * stor11.length) + 388 len floor32((161 * stor11.length) + 100)] = 0, mem[(64 * stor11.length) + 292 len floor32((161 * stor11.length) + 100) - 4]
        mem[(98 * stor11.length) + floor32((161 * stor11.length) + 100) + -((161 * stor11.length) + 100 % 32) + 420 len (161 * stor11.length) + 100 % 32] = mem[(32 * stor11.length) + -((161 * stor11.length) + 100 % 32) + floor32((161 * stor11.length) + 100) + 220 len (161 * stor11.length) + -floor32((161 * stor11.length) + 100) + 100]
        call stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(64 * stor11.length) + 292 len floor32((161 * stor11.length) + 100) - 4], mem[(98 * stor11.length) + floor32((161 * stor11.length) + 100) + 388 len (161 * stor11.length) + -floor32((161 * stor11.length) + 100) + 100]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor11.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor11.length) + 392] = uint256(stor12.field_0)
                mem[(98 * stor11.length) + 424] = 64
                mem[(98 * stor11.length) + 456] = stor11.length
                mem[(98 * stor11.length) + 488 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
                require ext_code.size(stor10)
                staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor11.length) + 392 len (32 * stor11.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor11.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor11.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _489 = mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32)
                require mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                require mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                require mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388] <= 4294967296 and mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor11.length) + ceil32(return_data.size) + 388] = mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388]
                _502 = mem[(98 * stor11.length) + _489 + 388]
                mem[(98 * stor11.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor11.length) + _489 + 388])] = mem[(98 * stor11.length) + _489 + 420 len floor32(mem[(98 * stor11.length) + _489 + 388])]
                mem[64] = (32 * _502) + (98 * stor11.length) + ceil32(return_data.size) + 420
                require stor11.length - 1 < mem[(98 * stor11.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor11.length - 1) + (98 * stor11.length) + ceil32(return_data.size) + 420] >= stor14:
                    idx = 0
                    while idx < stor13:
                        _719 = mem[64]
                        mem[mem[64] + 32] = uint256(stor12.field_0)
                        mem[mem[64] + 64] = stor14
                        mem[mem[64] + 128] = stor15
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _721 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _813 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _721) + mem[64] + 224
                        mem[(32 * _721) + _719 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _815 = mem[_813]
                        t = _813 + 32
                        u = (32 * _721) + _719 + 260
                        s = mem[_813]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _721) + _719 + floor32(mem[_813]) + 260] = mem[_813 + floor32(mem[_813]) + -(mem[_813] % 32) + 64 len mem[_813] % 32] or Mask(8 * -(mem[_813] % 32) + 32, -(8 * -(mem[_813] % 32) + 32) + 256, mem[(32 * _721) + _719 + floor32(mem[_813]) + 260])
                        _889 = mem[64]
                        mem[mem[64]] = _815 + (32 * _721) + _719 + -mem[64] + 228
                        mem[64] = _815 + (32 * _721) + _719 + 260
                        _891 = mem[_889]
                        t = _889 + 32
                        u = _815 + (32 * _721) + _719 + 260
                        s = mem[_889]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_815 + (32 * _721) + _719 + floor32(mem[_889]) + 260] = mem[_889 + -(mem[_889] % 32) + floor32(mem[_889]) + 64 len mem[_889] % 32] or Mask(8 * -(mem[_889] % 32) + 32, -(8 * -(mem[_889] % 32) + 32) + 256, mem[_815 + (32 * _721) + _719 + floor32(mem[_889]) + 260])
                        call stor10.mem[_815 + (32 * _721) + _719 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_815 + (32 * _721) + _719 + 264 len _891 - 4]
                        if return_data.size:
                            mem[64] = _815 + (32 * _721) + _719 + ceil32(return_data.size) + 261
                            mem[_815 + (32 * _721) + _719 + 260] = return_data.size
                            mem[_815 + (32 * _721) + _719 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
        else:
            mem[(98 * stor11.length) + 388] = return_data.size
            mem[(98 * stor11.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor11.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor11.length) + ceil32(return_data.size) + 393] = uint256(stor12.field_0)
                mem[(98 * stor11.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor11.length) + ceil32(return_data.size) + 457] = stor11.length
                mem[(98 * stor11.length) + ceil32(return_data.size) + 489 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
                require ext_code.size(stor10)
                staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(98 * stor11.length) + ceil32(return_data.size) + 393 len (32 * stor11.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _491 = mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32)
                require mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                require mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                require mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389] <= 4294967296 and mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389]
                _503 = mem[(98 * stor11.length) + ceil32(return_data.size) + _491 + 389]
                mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor11.length) + ceil32(return_data.size) + _491 + 389])] = mem[(98 * stor11.length) + ceil32(return_data.size) + _491 + 421 len floor32(mem[(98 * stor11.length) + ceil32(return_data.size) + _491 + 389])]
                mem[64] = (32 * _503) + (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor11.length - 1 < mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor11.length - 1) + (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor14:
                    idx = 0
                    while idx < stor13:
                        _722 = mem[64]
                        mem[mem[64] + 32] = uint256(stor12.field_0)
                        mem[mem[64] + 64] = stor14
                        mem[mem[64] + 128] = stor15
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _724 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _817 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _724) + mem[64] + 224
                        mem[(32 * _724) + _722 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _819 = mem[_817]
                        t = _817 + 32
                        u = (32 * _724) + _722 + 260
                        s = mem[_817]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _724) + _722 + floor32(mem[_817]) + 260] = mem[_817 + floor32(mem[_817]) + -(mem[_817] % 32) + 64 len mem[_817] % 32] or Mask(8 * -(mem[_817] % 32) + 32, -(8 * -(mem[_817] % 32) + 32) + 256, mem[(32 * _724) + _722 + floor32(mem[_817]) + 260])
                        _895 = mem[64]
                        mem[mem[64]] = _819 + (32 * _724) + _722 + -mem[64] + 228
                        mem[64] = _819 + (32 * _724) + _722 + 260
                        _897 = mem[_895]
                        t = _895 + 32
                        u = _819 + (32 * _724) + _722 + 260
                        s = mem[_895]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_819 + (32 * _724) + _722 + floor32(mem[_895]) + 260] = mem[_895 + -(mem[_895] % 32) + floor32(mem[_895]) + 64 len mem[_895] % 32] or Mask(8 * -(mem[_895] % 32) + 32, -(8 * -(mem[_895] % 32) + 32) + 256, mem[_819 + (32 * _724) + _722 + floor32(mem[_895]) + 260])
                        call stor10.mem[_819 + (32 * _724) + _722 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_819 + (32 * _724) + _722 + 264 len _897 - 4]
                        if return_data.size:
                            mem[64] = _819 + (32 * _724) + _722 + ceil32(return_data.size) + 261
                            mem[_819 + (32 * _724) + _722 + 260] = return_data.size
                            mem[_819 + (32 * _724) + _722 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
    else:
        mem[0] = 11
        mem[128] = address(stor11.field_0)
        idx = 128
        s = 0
        while (32 * stor11.length) + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor11.length) + 160] = uint256(stor12.field_0)
        mem[(32 * stor11.length) + 192] = 64
        mem[(32 * stor11.length) + 224] = stor11.length
        mem[(32 * stor11.length) + 256 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        mem[(32 * stor11.length) + 128] = (32 * stor11.length) + 96
        mem[(64 * stor11.length) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(64 * stor11.length) + 292 len floor32((32 * stor11.length) + 96)] = uint256(stor12.field_0), Array(len=stor11.length, data=mem[(32 * stor11.length) + 256 len floor32((32 * stor11.length) + 96) - 96])
        mem[(64 * stor11.length) + floor32((32 * stor11.length) + 96) + -((32 * stor11.length) + 96 % 32) + 324 len (32 * stor11.length) + 96 % 32] = mem[(32 * stor11.length) + floor32((32 * stor11.length) + 96) + -((32 * stor11.length) + 96 % 32) + 192 len (32 * stor11.length) + 96 % 32]
        mem[(64 * stor11.length) + 256] = (162 * stor11.length) + 100
        mem[(98 * stor11.length) + 388 len floor32((162 * stor11.length) + 100)] = 0, mem[(64 * stor11.length) + 292 len floor32((162 * stor11.length) + 100) - 4]
        mem[(98 * stor11.length) + floor32((162 * stor11.length) + 100) + -((162 * stor11.length) + 100 % 32) + 420 len (162 * stor11.length) + 100 % 32] = mem[(64 * stor11.length) + -((162 * stor11.length) + 100 % 32) + floor32((162 * stor11.length) + 100) + 320 len (162 * stor11.length) + 100 % 32]
        call stor10.mem[(98 * stor11.length) + 388 len 4] with:
             gas gas_remaining wei
            args mem[(98 * stor11.length) + 392 len (162 * stor11.length) + 96]
        if not return_data.size:
            if ext_call.success:
                mem[(98 * stor11.length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor11.length) + 392] = uint256(stor12.field_0)
                mem[(98 * stor11.length) + 424] = 64
                mem[(98 * stor11.length) + 456] = stor11.length
                mem[(98 * stor11.length) + 488 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
                require ext_code.size(stor10)
                staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor12.field_0), Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(98 * stor11.length) + floor32(stor11.length) + 488 len (32 * stor11.length) - floor32(stor11.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor11.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor11.length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _739 = mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32)
                require mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                require mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                require mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388] <= 4294967296 and mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388]) + 32 <= return_data.size
                mem[(98 * stor11.length) + ceil32(return_data.size) + 388] = mem[(98 * stor11.length) + mem[(98 * stor11.length) + 388 len 4], Mask(224, 0, stor12.field_32) + 388]
                _765 = mem[(98 * stor11.length) + _739 + 388]
                mem[(98 * stor11.length) + ceil32(return_data.size) + 420 len floor32(mem[(98 * stor11.length) + _739 + 388])] = mem[(98 * stor11.length) + _739 + 420 len floor32(mem[(98 * stor11.length) + _739 + 388])]
                mem[64] = (32 * _765) + (98 * stor11.length) + ceil32(return_data.size) + 420
                require stor11.length - 1 < mem[(98 * stor11.length) + ceil32(return_data.size) + 388]
                if mem[(32 * stor11.length - 1) + (98 * stor11.length) + ceil32(return_data.size) + 420] >= stor14:
                    idx = 0
                    while idx < stor13:
                        _899 = mem[64]
                        mem[mem[64] + 32] = uint256(stor12.field_0)
                        mem[mem[64] + 64] = stor14
                        mem[mem[64] + 128] = stor15
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _901 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _953 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _901) + mem[64] + 224
                        mem[(32 * _901) + _899 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _955 = mem[_953]
                        t = _953 + 32
                        u = (32 * _901) + _899 + 260
                        s = mem[_953]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _901) + _899 + floor32(mem[_953]) + 260] = mem[_953 + floor32(mem[_953]) + -(mem[_953] % 32) + 64 len mem[_953] % 32] or Mask(8 * -(mem[_953] % 32) + 32, -(8 * -(mem[_953] % 32) + 32) + 256, mem[(32 * _901) + _899 + floor32(mem[_953]) + 260])
                        _987 = mem[64]
                        mem[mem[64]] = _955 + (32 * _901) + _899 + -mem[64] + 228
                        mem[64] = _955 + (32 * _901) + _899 + 260
                        _989 = mem[_987]
                        t = _987 + 32
                        u = _955 + (32 * _901) + _899 + 260
                        s = mem[_987]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_955 + (32 * _901) + _899 + floor32(mem[_987]) + 260] = mem[_987 + -(mem[_987] % 32) + floor32(mem[_987]) + 64 len mem[_987] % 32] or Mask(8 * -(mem[_987] % 32) + 32, -(8 * -(mem[_987] % 32) + 32) + 256, mem[_955 + (32 * _901) + _899 + floor32(mem[_987]) + 260])
                        call stor10.mem[_955 + (32 * _901) + _899 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_955 + (32 * _901) + _899 + 264 len _989 - 4]
                        if return_data.size:
                            mem[64] = _955 + (32 * _901) + _899 + ceil32(return_data.size) + 261
                            mem[_955 + (32 * _901) + _899 + 260] = return_data.size
                            mem[_955 + (32 * _901) + _899 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
        else:
            mem[(98 * stor11.length) + 388] = return_data.size
            mem[(98 * stor11.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(98 * stor11.length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(98 * stor11.length) + ceil32(return_data.size) + 393] = uint256(stor12.field_0)
                mem[(98 * stor11.length) + ceil32(return_data.size) + 425] = 64
                mem[(98 * stor11.length) + ceil32(return_data.size) + 457] = stor11.length
                mem[(98 * stor11.length) + ceil32(return_data.size) + 489 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
                require ext_code.size(stor10)
                staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor12.field_0), Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(98 * stor11.length) + ceil32(return_data.size) + floor32(stor11.length) + 489 len (32 * stor11.length) - floor32(stor11.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _741 = mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32)
                require mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) <= 4294967296
                require mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 32 <= return_data.size
                require mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389] <= 4294967296 and mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + (32 * mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389]) + 32 <= return_data.size
                mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(98 * stor11.length) + ceil32(return_data.size) + mem[(98 * stor11.length) + ceil32(return_data.size) + 389 len 4], Mask(224, 0, stor12.field_32) + 389]
                _766 = mem[(98 * stor11.length) + ceil32(return_data.size) + _741 + 389]
                mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[(98 * stor11.length) + ceil32(return_data.size) + _741 + 389])] = mem[(98 * stor11.length) + ceil32(return_data.size) + _741 + 421 len floor32(mem[(98 * stor11.length) + ceil32(return_data.size) + _741 + 389])]
                mem[64] = (32 * _766) + (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421
                require stor11.length - 1 < mem[(98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 389]
                if mem[(32 * stor11.length - 1) + (98 * stor11.length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= stor14:
                    idx = 0
                    while idx < stor13:
                        _902 = mem[64]
                        mem[mem[64] + 32] = uint256(stor12.field_0)
                        mem[mem[64] + 64] = stor14
                        mem[mem[64] + 128] = stor15
                        mem[mem[64] + 160] = 6644285921
                        mem[mem[64] + 96] = 160
                        mem[mem[64] + 192] = mem[96]
                        _904 = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 224] = mem[s + 128]
                            s = s + 32
                            continue 
                        _957 = mem[64]
                        mem[mem[64]] = (32 * mem[96]) + 192
                        mem[64] = (32 * _904) + mem[64] + 224
                        mem[(32 * _904) + _902 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        _959 = mem[_957]
                        t = _957 + 32
                        u = (32 * _904) + _902 + 260
                        s = mem[_957]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[(32 * _904) + _902 + floor32(mem[_957]) + 260] = mem[_957 + floor32(mem[_957]) + -(mem[_957] % 32) + 64 len mem[_957] % 32] or Mask(8 * -(mem[_957] % 32) + 32, -(8 * -(mem[_957] % 32) + 32) + 256, mem[(32 * _904) + _902 + floor32(mem[_957]) + 260])
                        _993 = mem[64]
                        mem[mem[64]] = _959 + (32 * _904) + _902 + -mem[64] + 228
                        mem[64] = _959 + (32 * _904) + _902 + 260
                        _995 = mem[_993]
                        t = _993 + 32
                        u = _959 + (32 * _904) + _902 + 260
                        s = mem[_993]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_959 + (32 * _904) + _902 + floor32(mem[_993]) + 260] = mem[_993 + -(mem[_993] % 32) + floor32(mem[_993]) + 64 len mem[_993] % 32] or Mask(8 * -(mem[_993] % 32) + 32, -(8 * -(mem[_993] % 32) + 32) + 256, mem[_959 + (32 * _904) + _902 + floor32(mem[_993]) + 260])
                        call stor10.mem[_959 + (32 * _904) + _902 + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[_959 + (32 * _904) + _902 + 264 len _995 - 4]
                        if return_data.size:
                            mem[64] = _959 + (32 * _904) + _902 + ceil32(return_data.size) + 261
                            mem[_959 + (32 * _904) + _902 + 260] = return_data.size
                            mem[_959 + (32 * _904) + _902 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            t = t + 1
                            continue 
}



}
