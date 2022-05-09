contract main {




// =====================  Runtime code  =====================


const JoeRouter02 = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const sub_dc4e0b31(?) = 0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const DEFAULT_ADMIN_ROLE = 0


uint32 stor0;
address owner;
uint256 stor0;
mapping of struct roleAdmin;
uint8 stor2;
address stor2;
address stor2; offset 8
array of struct stor3;
uint256 stor4; offset 32
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

function sub_ee42ba0f(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a4a89946(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
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
    mem[(32 * stor3.length) + 224] = uint256(stor4.field_0)
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
    uint256(stor4.field_0) = cd[68]
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

function swap() {
    if uint8(stor2.field_0):
        revert with 0, 'ALREADY_DONE'
    mem[0] = msg.sender
    mem[32] = sha3(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, 1)
    if not roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(msg.sender)].field_0:
        revert with 0, 'DOES_NOT_HAVE_SNIPER_ROLE'
    mem[96] = stor3.length
    if not stor3.length:
        if 0 >= stor3.length:
            revert with 0, 50
        _12 = mem[128]
        mem[(32 * stor3.length) + 132] = this.address
        mem[(32 * stor3.length) + 164] = address(stor2.field_8)
        require ext_code.size(address(_12))
        staticcall address(_12).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor2.field_8)
        mem[(32 * stor3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= uint256(stor4.field_0):
            mem[(32 * stor3.length) + ceil32(return_data.size) + 132] = this.address
            require ext_code.size(address(_12))
            staticcall address(_12).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor3.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < uint256(stor4.field_0):
                revert with 0, 'NOT_ENOUGH_TOKEN'
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = stor5
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 292] = stor3.length
            idx = 0
            s = 128
            t = (32 * stor3.length) + (2 * ceil32(return_data.size)) + 324
            while idx < stor3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 228] = stor6
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 260] = block.timestamp + 120
            require ext_code.size(address(stor2.field_8))
            call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * stor3.length) + (4 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _77 = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
            require mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
            require (32 * stor3.length) + (2 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
            _79 = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
            if mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (32 * stor3.length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128] = _79
            require _77 + (32 * _79) + 32 <= return_data.size
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len ceil32(32 * _79)] = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + _77 + 160 len ceil32(32 * _79)]
            if _79 < 1:
                revert with 0, 17
            if _79 - 1 >= _79:
                revert with 0, 50
            if 0 >= stor3.length:
                revert with 0, 50
            if stor3.length < 1:
                revert with 0, 17
            if stor3.length - 1 >= stor3.length:
                revert with 0, 50
            mem[mem[64]] = mem[140 len 20]
            mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 140 len 20]
            mem[mem[64] + 64] = uint256(stor4.field_0)
            mem[mem[64] + 96] = mem[(32 * _79 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 160]
            emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                      mem[mem[64] len 64],
                      uint256(stor4.field_0),
                      mem[(32 * _79 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 160],
                      stor6,
            if mem[(32 * _79 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 160]:
                uint8(stor2.field_0) = 1
        else:
            mem[(32 * stor3.length) + ceil32(return_data.size) + 132] = address(stor2.field_8)
            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = -1
            require ext_code.size(address(_12))
            call address(_12).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor2.field_0), -1
            mem[(32 * stor3.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(address(_12))
            staticcall address(_12).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < uint256(stor4.field_0):
                revert with 0, 'NOT_ENOUGH_TOKEN'
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164] = stor5
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 292] = stor3.length
            idx = 0
            s = 128
            t = (32 * stor3.length) + (4 * ceil32(return_data.size)) + 324
            while idx < stor3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 228] = stor6
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 260] = block.timestamp + 120
            require ext_code.size(address(stor2.field_8))
            call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * stor3.length) + (6 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _78 = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
            require mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
            require (32 * stor3.length) + (4 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
            _80 = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
            if mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (32 * stor3.length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 128] = _80
            require _78 + (32 * _80) + 32 <= return_data.size
            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 160 len ceil32(32 * _80)] = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + _78 + 160 len ceil32(32 * _80)]
            if _80 < 1:
                revert with 0, 17
            if _80 - 1 >= _80:
                revert with 0, 50
            if 0 >= stor3.length:
                revert with 0, 50
            if stor3.length < 1:
                revert with 0, 17
            if stor3.length - 1 >= stor3.length:
                revert with 0, 50
            mem[mem[64]] = mem[140 len 20]
            mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 140 len 20]
            mem[mem[64] + 64] = uint256(stor4.field_0)
            mem[mem[64] + 96] = mem[(32 * _80 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 160]
            emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                      mem[mem[64] len 64],
                      uint256(stor4.field_0),
                      mem[(32 * _80 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 160],
                      stor6,
            if mem[(32 * _80 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 160]:
                uint8(stor2.field_0) = 1
    else:
        mem[0] = 3
        mem[128] = address(stor3.field_0)
        idx = 128
        s = 0
        while (32 * stor3.length) + 96 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if 0 >= stor3.length:
            revert with 0, 50
        _110 = mem[128]
        mem[(32 * stor3.length) + 132] = this.address
        mem[(32 * stor3.length) + 164] = address(stor2.field_8)
        require ext_code.size(address(_110))
        staticcall address(_110).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor2.field_8)
        mem[(32 * stor3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= uint256(stor4.field_0):
            mem[(32 * stor3.length) + ceil32(return_data.size) + 132] = this.address
            require ext_code.size(address(_110))
            staticcall address(_110).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor3.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < uint256(stor4.field_0):
                revert with 0, 'NOT_ENOUGH_TOKEN'
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = stor5
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 292] = stor3.length
            idx = 0
            s = 128
            t = (32 * stor3.length) + (2 * ceil32(return_data.size)) + 324
            while idx < stor3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 228] = stor6
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 260] = block.timestamp + 120
            require ext_code.size(address(stor2.field_8))
            call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * stor3.length) + (4 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _193 = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
            require mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
            require (32 * stor3.length) + (2 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
            _195 = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
            if mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (32 * stor3.length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128] = _195
            require _193 + (32 * _195) + 32 <= return_data.size
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len ceil32(32 * _195)] = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + _193 + 160 len ceil32(32 * _195)]
            if _195 < 1:
                revert with 0, 17
            if _195 - 1 >= _195:
                revert with 0, 50
            if 0 >= stor3.length:
                revert with 0, 50
            if stor3.length < 1:
                revert with 0, 17
            if stor3.length - 1 >= stor3.length:
                revert with 0, 50
            mem[mem[64]] = mem[140 len 20]
            mem[mem[64] + 64] = uint256(stor4.field_0)
            mem[mem[64] + 96] = mem[(32 * _195 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 160]
            emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), uint256(stor4.field_0), mem[(32 * _195 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 160], stor6);
            if mem[(32 * _195 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 160]:
                uint8(stor2.field_0) = 1
        else:
            mem[(32 * stor3.length) + ceil32(return_data.size) + 132] = address(stor2.field_8)
            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = -1
            require ext_code.size(address(_110))
            call address(_110).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor2.field_0), -1
            mem[(32 * stor3.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(address(_110))
            staticcall address(_110).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < uint256(stor4.field_0):
                revert with 0, 'NOT_ENOUGH_TOKEN'
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164] = stor5
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 292] = stor3.length
            idx = 0
            s = 128
            t = (32 * stor3.length) + (4 * ceil32(return_data.size)) + 324
            while idx < stor3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 228] = stor6
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 260] = block.timestamp + 120
            require ext_code.size(address(stor2.field_8))
            call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * stor3.length) + (6 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _194 = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
            require mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
            require (32 * stor3.length) + (4 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
            _196 = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
            if mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (32 * stor3.length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 128] = _196
            require _194 + (32 * _196) + 32 <= return_data.size
            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 160 len ceil32(32 * _196)] = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + _194 + 160 len ceil32(32 * _196)]
            if _196 < 1:
                revert with 0, 17
            if _196 - 1 >= _196:
                revert with 0, 50
            _229 = mem[(32 * _196 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 160]
            if 0 >= stor3.length:
                revert with 0, 50
            if stor3.length < 1:
                revert with 0, 17
            if stor3.length - 1 >= stor3.length:
                revert with 0, 50
            mem[mem[64]] = mem[140 len 20]
            mem[mem[64] + 64] = uint256(stor4.field_0)
            mem[mem[64] + 96] = _229
            emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), uint256(stor4.field_0), _229, stor6);
            if _229:
                uint8(stor2.field_0) = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8119c065(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x36568abe(?????) > uint32(call.func_hash) >> 224:
                if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == Mask(32, 224, cd[4])
                    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                        return True
                    return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                if withdrawAmount(uint256 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require cd[4] <= eth.balance(this.address)
                    call address(owner) with:
                       value cd[4] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x15124476(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[36]), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return bool(ext_call.return_data[0])
                if unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return roleAdmin[cd[4]].field_256
                if unknown_0x2f2ff15d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                        if not roleAdmin[cd[4]][address(cd[36])].field_0:
                            roleAdmin[cd[4]][address(cd[36])].field_0 = 1
                            emit RoleGranted(cd[4], address(cd[36]), msg.sender);
                    mem[160 len 42] = call.data[calldata.size len 42]
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    mem[256 len 66] = call.data[calldata.size len 66]
                    idx = 65
                    s = roleAdmin[cd[4]].field_256
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 66:
                            revert with 0, 50
                        mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if roleAdmin[cd[4]].field_256 + 16384:
                        revert with 0, 'Strings: hex length insufficient'
                else:
                    require unknown_0x33251a0b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if roleAdmin[roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27].field_256][address(msg.sender)].field_0:
                        if roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(cd[4])].field_0:
                            roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(cd[4])].field_0 = 0
                            emit RoleRevoked(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, address(cd[4]), msg.sender);
                    mem[160 len 42] = call.data[calldata.size len 42]
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    mem[256 len 66] = call.data[calldata.size len 66]
                    idx = 65
                    s = roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27].field_256
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 66:
                            revert with 0, 50
                        mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27].field_256 + 16384:
                        revert with 0, 'Strings: hex length insufficient'
                revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
            if unknown_0x5e615a6b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x5e615a6b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if stor3.length:
                        mem[160] = address(stor3.field_0)
                        idx = 160
                        s = 0
                        while (32 * stor3.length) + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[(32 * stor3.length) + 160] = bool(uint8(stor2.field_0))
                    mem[(32 * stor3.length) + 192] = address(stor2.field_8)
                    mem[(32 * stor3.length) + 224] = 192
                    mem[(32 * stor3.length) + 352] = stor3.length
                    idx = 0
                    s = 160
                    t = (32 * stor3.length) + 384
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + 256] = uint256(stor4.field_0)
                    mem[(32 * stor3.length) + 288] = stor5
                    mem[(32 * stor3.length) + 320] = stor6
                    return memory
                      from (32 * stor3.length) + 160
                       len (96 * stor3.length) + 224
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    address(owner) = 0
                    emit OwnershipTransferred(address(owner), 0);
                if unknown_0x73b295c2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                require unknown_0x777cda3f(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                if address(owner) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(cd[4]))
                call address(cd[4]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return bool(ext_call.return_data[0])
            if unknown_0x36568abe(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[36] == address(cd[36])
                if address(cd[36]) != msg.sender:
                    revert with 0, 'AccessControl: can only renounce roles for self'
                if roleAdmin[cd[4]][address(cd[36])].field_0:
                    roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                    emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
            else:
                if unknown_0x3948adad(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0x60ae616a2155ee3d9a68541ba4544862310933d4
                require unknown_0x5115d86f(?????) == uint32(call.func_hash) >> 224
                require not msg.value
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
                uint256(stor4.field_0) = cd[68]
                stor5 = cd[100]
                stor6 = address(cd[132])
        else:
            if unknown_0xae8421e1(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xdc4e0b31(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xae8421e1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(uint8(stor2.field_0))
                    if unknown_0xce3b9aa3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require calldata.size > cd[4] + 35
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 0, 65
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        s = 160
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
                            mem[0] = mem[(32 * idx) + 172 len 20]
                            mem[32] = sha3(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, 1)
                            if not roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(mem[(32 * idx) + 160])].field_0:
                                mem[0] = mem[(32 * idx) + 172 len 20]
                                mem[32] = sha3(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, 1)
                                roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(mem[(32 * idx) + 160])].field_0 = 1
                                emit RoleGranted(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, mem[(32 * idx) + 172 len 20], msg.sender);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    require unknown_0xd547741f(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                        if roleAdmin[cd[4]][address(cd[36])].field_0:
                            roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                            emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                    mem[160 len 42] = call.data[calldata.size len 42]
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    mem[256 len 66] = call.data[calldata.size len 66]
                    idx = 65
                    s = roleAdmin[cd[4]].field_256
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 66:
                            revert with 0, 50
                        mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if roleAdmin[cd[4]].field_256 + 16384:
                        revert with 0, 'Strings: hex length insufficient'
                    revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                if unknown_0xdc4e0b31(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27
                if unknown_0xee42ba0f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        address(owner) = address(cd[4])
                        emit OwnershipTransferred(address(owner), address(cd[4]));
                    else:
                        require unknown_0xf4f3b200(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call cd[4].0xa9059cbb with:
                             gas gas_remaining wei
                            args Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] != 255:
                            if ext_call.return_data[0] != 1:
                                require not ext_call.return_data[0]
            else:
                if unknown_0x91d14854(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        return bool(roleAdmin[cd[4]][address(cd[36])].field_0)
                    if uint32(call.func_hash) >> 224 != unknown_0x9db5dbe4(?????):
                        if unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 0
                        require unknown_0xa4a89946(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                           value cd[4] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call cd[4].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]) << 64, 0, cd[68]
                    require ext_call.success
                    if ext_call.return_data[0] == 255:
                        return 1
                    if ext_call.return_data[0] == 1:
                        return 1
                    require not ext_call.return_data[0]
                    return 0
                if uint32(call.func_hash) >> 224 != unknown_0x8119c065(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x853828b6(?????):
                        require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return address(owner)
                    require not msg.value
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call address(owner) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    if uint8(stor2.field_0):
                        revert with 0, 'ALREADY_DONE'
                    mem[0] = msg.sender
                    mem[32] = sha3(0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27, 1)
                    if not roleAdmin[0xfe6de086246960ecfedb364df2d833049bf50e02ed5e14aa5748a313be451c27][address(msg.sender)].field_0:
                        revert with 0, 'DOES_NOT_HAVE_SNIPER_ROLE'
                    mem[128] = stor3.length
                    if not stor3.length:
                        if 0 >= stor3.length:
                            revert with 0, 50
                        _53 = mem[160]
                        mem[(32 * stor3.length) + 164] = this.address
                        mem[(32 * stor3.length) + 196] = address(stor2.field_8)
                        require ext_code.size(address(_53))
                        staticcall address(_53).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor2.field_8)
                        mem[(32 * stor3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= uint256(stor4.field_0):
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = this.address
                            require ext_code.size(address(_53))
                            staticcall address(_53).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < uint256(stor4.field_0):
                                revert with 0, 'NOT_ENOUGH_TOKEN'
                            if 120 > !block.timestamp:
                                revert with 0, 17
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 196] = stor5
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 324] = stor3.length
                            idx = 0
                            s = 160
                            t = (32 * stor3.length) + (2 * ceil32(return_data.size)) + 356
                            while idx < stor3.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 260] = stor6
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                            require ext_code.size(address(stor2.field_8))
                            call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor3.length) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            _250 = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                            require mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                            require (32 * stor3.length) + (2 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                            _253 = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                            if mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * stor3.length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                            require _250 + (32 * _253) + 32 <= return_data.size
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 192 len ceil32(32 * _253)] = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + _250 + 192 len ceil32(32 * _253)]
                            if _253 < 1:
                                revert with 0, 17
                            if _253 - 1 >= _253:
                                revert with 0, 50
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if stor3.length < 1:
                                revert with 0, 17
                            if stor3.length - 1 >= stor3.length:
                                revert with 0, 50
                            mem[mem[64]] = mem[172 len 20]
                            mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 172 len 20]
                            mem[mem[64] + 64] = uint256(stor4.field_0)
                            mem[mem[64] + 96] = mem[(32 * _253 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 192]
                            emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                      mem[mem[64] len 64],
                                      uint256(stor4.field_0),
                                      mem[(32 * _253 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 192],
                                      stor6,
                            if mem[(32 * _253 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 192]:
                                uint8(stor2.field_0) = 1
                        else:
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = address(stor2.field_8)
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 196] = -1
                            require ext_code.size(address(_53))
                            call address(_53).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor2.field_0), -1
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(address(_53))
                            staticcall address(_53).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < uint256(stor4.field_0):
                                revert with 0, 'NOT_ENOUGH_TOKEN'
                            if 120 > !block.timestamp:
                                revert with 0, 17
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 196] = stor5
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 324] = stor3.length
                            idx = 0
                            s = 160
                            t = (32 * stor3.length) + (4 * ceil32(return_data.size)) + 356
                            while idx < stor3.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 260] = stor6
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                            require ext_code.size(address(stor2.field_8))
                            call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor3.length) + (6 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            _251 = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                            require mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                            require (32 * stor3.length) + (4 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                            _254 = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                            if mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * stor3.length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 160] = _254
                            require _251 + (32 * _254) + 32 <= return_data.size
                            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 192 len ceil32(32 * _254)] = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + _251 + 192 len ceil32(32 * _254)]
                            if _254 < 1:
                                revert with 0, 17
                            if _254 - 1 >= _254:
                                revert with 0, 50
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if stor3.length < 1:
                                revert with 0, 17
                            if stor3.length - 1 >= stor3.length:
                                revert with 0, 50
                            mem[mem[64]] = mem[172 len 20]
                            mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 172 len 20]
                            mem[mem[64] + 64] = uint256(stor4.field_0)
                            mem[mem[64] + 96] = mem[(32 * _254 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 192]
                            emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                      mem[mem[64] len 64],
                                      uint256(stor4.field_0),
                                      mem[(32 * _254 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 192],
                                      stor6,
                            if mem[(32 * _254 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 192]:
                                uint8(stor2.field_0) = 1
                    else:
                        mem[0] = 3
                        mem[160] = address(stor3.field_0)
                        idx = 160
                        s = 0
                        while (32 * stor3.length) + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if 0 >= stor3.length:
                            revert with 0, 50
                        _310 = mem[160]
                        mem[(32 * stor3.length) + 164] = this.address
                        mem[(32 * stor3.length) + 196] = address(stor2.field_8)
                        require ext_code.size(address(_310))
                        staticcall address(_310).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor2.field_8)
                        mem[(32 * stor3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= uint256(stor4.field_0):
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = this.address
                            require ext_code.size(address(_310))
                            staticcall address(_310).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < uint256(stor4.field_0):
                                revert with 0, 'NOT_ENOUGH_TOKEN'
                            if 120 > !block.timestamp:
                                revert with 0, 17
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 196] = stor5
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 324] = stor3.length
                            idx = 0
                            s = 160
                            t = (32 * stor3.length) + (2 * ceil32(return_data.size)) + 356
                            while idx < stor3.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 260] = stor6
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                            require ext_code.size(address(stor2.field_8))
                            call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor3.length) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            _504 = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                            require mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                            require (32 * stor3.length) + (2 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                            _509 = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                            if mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * stor3.length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                            require _504 + (32 * _509) + 32 <= return_data.size
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 192 len ceil32(32 * _509)] = mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + _504 + 192 len ceil32(32 * _509)]
                            if _509 < 1:
                                revert with 0, 17
                            if _509 - 1 >= _509:
                                revert with 0, 50
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if stor3.length < 1:
                                revert with 0, 17
                            if stor3.length - 1 >= stor3.length:
                                revert with 0, 50
                            mem[mem[64]] = mem[172 len 20]
                            mem[mem[64] + 64] = uint256(stor4.field_0)
                            mem[mem[64] + 96] = mem[(32 * _509 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 192]
                            emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), uint256(stor4.field_0), mem[(32 * _509 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 192], stor6);
                            if mem[(32 * _509 - 1) + (32 * stor3.length) + (4 * ceil32(return_data.size)) + 192]:
                                uint8(stor2.field_0) = 1
                        else:
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = address(stor2.field_8)
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 196] = -1
                            require ext_code.size(address(_310))
                            call address(_310).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor2.field_0), -1
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(address(_310))
                            staticcall address(_310).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < uint256(stor4.field_0):
                                revert with 0, 'NOT_ENOUGH_TOKEN'
                            if 120 > !block.timestamp:
                                revert with 0, 17
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 196] = stor5
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 324] = stor3.length
                            idx = 0
                            s = 160
                            t = (32 * stor3.length) + (4 * ceil32(return_data.size)) + 356
                            while idx < stor3.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 260] = stor6
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                            require ext_code.size(address(stor2.field_8))
                            call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor3.length) + (6 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            _505 = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                            require mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                            require (32 * stor3.length) + (4 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                            _510 = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                            if mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * stor3.length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 160] = _510
                            require _505 + (32 * _510) + 32 <= return_data.size
                            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 192 len ceil32(32 * _510)] = mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + _505 + 192 len ceil32(32 * _510)]
                            if _510 < 1:
                                revert with 0, 17
                            if _510 - 1 >= _510:
                                revert with 0, 50
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if stor3.length < 1:
                                revert with 0, 17
                            if stor3.length - 1 >= stor3.length:
                                revert with 0, 50
                            mem[mem[64]] = mem[172 len 20]
                            mem[mem[64] + 64] = uint256(stor4.field_0)
                            mem[mem[64] + 96] = mem[(32 * _510 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 192]
                            emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), uint256(stor4.field_0), mem[(32 * _510 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 192], stor6);
                            if mem[(32 * _510 - 1) + (32 * stor3.length) + (6 * ceil32(return_data.size)) + 192]:
                                uint8(stor2.field_0) = 1
}



}
