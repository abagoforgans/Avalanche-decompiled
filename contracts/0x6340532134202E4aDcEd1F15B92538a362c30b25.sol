contract main {




// =====================  Runtime code  =====================


#
#  - swap()
#  - _fallback()
#
const JoeRouter02 = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const sub_9e6e4d25(?) = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const sub_dc4e0b31(?) = 0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const DEFAULT_ADMIN_ROLE = 0


uint32 stor0;
address owner;
uint256 stor0;
mapping of struct roleAdmin;
uint8 stor2;
address stor2; offset 8
array of struct stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function owner() {
    return address(owner)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function done() {
    return bool(uint8(stor2.field_0))
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function withdrawAll() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function withdrawAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= eth.balance(this.address)
    call address(owner) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_a4a89946(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ee42ba0f(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2) << 64, 0, arg3
    require ext_call.success
    if ext_call.return_data[0] == 255:
        return 1
    if ext_call.return_data[0] == 1:
        return 1
    require not ext_call.return_data[0]
    return 0
}

function approveERC20(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_777cda3f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] != 255:
        if ext_call.return_data[0] != 1:
            require not ext_call.return_data[0]
}

function getParams() {
    if stor3.length:
        mem[128] = address(stor3.field_0)
        idx = 128
        s = 0
        while (32 * stor3.length) + 96 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor3.length) + 128] = bool(uint8(stor2.field_0))
    mem[(32 * stor3.length) + 160] = address(stor2.field_8)
    mem[(32 * stor3.length) + 192] = 192
    mem[(32 * stor3.length) + 320] = stor3.length
    idx = 0
    s = 128
    t = (32 * stor3.length) + 352
    while idx < stor3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor3.length) + 224] = stor4
    mem[(32 * stor3.length) + 256] = stor5
    mem[(32 * stor3.length) + 288] = stor6
    return memory
      from (32 * stor3.length) + 128
       len (96 * stor3.length) + 224
}

function sub_5115d86f(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor2.field_0) = 0
    address(stor2.field_8) = address(cd[4])
    stor3.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor3[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor4 = cd[68]
    stor5 = cd[100]
    stor6 = address(cd[132])
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_ce3b9aa3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, 1)
        if not roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(mem[(32 * idx) + 128])].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, 1)
            roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(mem[(32 * idx) + 128])].field_0 = 1
            emit RoleGranted(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, mem[(32 * idx) + 140 len 20], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if roleAdmin[roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27].field_256][address(msg.sender)].field_0:
        if roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(arg1)].field_0:
            roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(arg1)].field_0 = 0
            emit RoleRevoked(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, arg1, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}



}
