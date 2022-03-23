contract main {




// =====================  Runtime code  =====================


const DISPATCHER_ADMIN_ROLE = 0xaa1af34341297dfbc4dfe694fa8bb873bcaf9528e24c7336ae6bfc3f79ddeddb

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
uint8 version;
array of struct stor2;
mapping of uint256 stor3;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function version() payable {
    return version
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[22803 len 34], mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function numDispatchers() payable {
    return stor2.length
}

function exists(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 47, code.data[22837 len 47], mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function dispatchers() payable {
    require stor2.length <= test266151307()
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if stor2.length:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        require idx < stor2.length
        mem[(32 * idx) + 128] = stor2[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 47, code.data[22932 len 47], mem[211 len 17]
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 48, code.data[22884 len 48], mem[212 len 16]
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

function sub_4363b012(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if not roleAdmin[0xaa1af34341297dfbc4dfe694fa8bb873bcaf9528e24c7336ae6bfc3f79ddeddb][1][address(msg.sender)].field_0:
        revert with 0, 'Caller must have DISPATCHER_ADMIN role'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if not stor3[mem[(32 * idx) + 140 len 20]]:
            stor2.length++
            stor2[stor2.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor2[stor2.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            stor3[address(mem[(32 * idx) + 128])] = stor2.length
        require idx < ('cd', 4).length
        emit DispatcherAdded(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
}

function sub_d85e785d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if not roleAdmin[0xaa1af34341297dfbc4dfe694fa8bb873bcaf9528e24c7336ae6bfc3f79ddeddb][1][address(msg.sender)].field_0:
        revert with 0, 'Caller must have DISPATCHER_ADMIN role'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if stor3[mem[(32 * idx) + 140 len 20]]:
            require stor2.length - 1 < stor2.length
            require stor3[mem[(32 * idx) + 140 len 20]] - 1 < stor2.length
            stor2[stor3[mem[(32 * idx) + 140 len 20]]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[mem[(32 * idx) + 140 len 20]]
            require stor2.length
            stor2[stor2.length].field_0 = 0
            stor2.length--
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            stor3[address(mem[(32 * idx) + 128])] = 0
        require idx < ('cd', 4).length
        emit DispatcherRemoved(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
}

function sub_e9a75151(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    require ('cd', 228).length <= test266151307()
    require (32 * ('cd', 228).length) + 128 <= test266151307() and (32 * ('cd', 228).length) + 128 >= 96
    mem[64] = (32 * ('cd', 228).length) + 128
    mem[96] = ('cd', 228).length
    require calldata.size >= cd[228] + (32 * ('cd', 228).length) + 36
    s = cd[228] + 36
    idx = 0
    t = 128
    while idx < ('cd', 228).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if not roleAdmin[0xaa1af34341297dfbc4dfe694fa8bb873bcaf9528e24c7336ae6bfc3f79ddeddb][1][address(msg.sender)].field_0:
        revert with 0, 'Caller must have DISPATCHER_ADMIN role'
    mem[(32 * ('cd', 228).length) + 128 len 18521] = code.data[4282 len 18521]
    mem[(32 * ('cd', 228).length) + 18649] = version
    mem[(32 * ('cd', 228).length) + 18681] = address(cd[4])
    mem[(32 * ('cd', 228).length) + 18713] = address(cd[36])
    mem[(32 * ('cd', 228).length) + 18745] = address(cd[68])
    mem[(32 * ('cd', 228).length) + 18777] = address(cd[100])
    mem[(32 * ('cd', 228).length) + 18809] = address(cd[132])
    mem[(32 * ('cd', 228).length) + 18841] = address(cd[164])
    mem[(32 * ('cd', 228).length) + 18873] = cd[196]
    mem[(32 * ('cd', 228).length) + 18905] = 288
    mem[(32 * ('cd', 228).length) + 18937] = ('cd', 228).length
    idx = 0
    s = 128
    t = mem[64] + 18841
    while idx < ('cd', 228).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    create contract with 0 wei
                    code: mem[mem[64] len (64 * ('cd', 228).length) + -mem[64] + 18969]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor3[address(create.new_address)]:
        stor2.length++
        stor2[stor2.length].field_0 = address(create.new_address)
        stor2[stor2.length].field_160 = 0
        stor3[address(create.new_address)] = stor2.length
    if mem[96] > 0:
        emit DispatcherCreated(address(cd[4]), address(cd[36]), address(cd[68]), address(cd[100]), address(cd[132]), address(cd[164]), cd[196], 1, address(create.new_address), version);
    else:
        emit DispatcherCreated(address(cd[4]), address(cd[36]), address(cd[68]), address(cd[100]), address(cd[132]), address(cd[164]), cd[196], 0, address(create.new_address), version);
    return address(create.new_address)
}



}
