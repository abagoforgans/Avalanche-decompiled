contract main {




// =====================  Runtime code  =====================


#
#  - revokeRole(bytes32 arg1, address arg2)
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
    if stor3.length:
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
        _394 = mem[128]
        mem[(32 * stor3.length) + 132] = this.address
        mem[(32 * stor3.length) + 164] = address(stor2.field_8)
        require ext_code.size(address(_394))
        staticcall address(_394).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor2.field_8)
        mem[(32 * stor3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= uint256(stor4.field_0):
            mem[(32 * stor3.length) + ceil32(return_data.size) + 132] = this.address
            require ext_code.size(address(_394))
            staticcall address(_394).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor3.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < uint256(stor4.field_0):
                revert with 0, 'NOT_ENOUGH_TOKEN'
            if 0 >= stor3.length:
                revert with 0, 50
            if 1 >= stor3.length:
                revert with 0, 50
            _486 = mem[160]
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132] = mem[140 len 20]
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = address(_486)
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132], address(_486)
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= stor3.length:
                revert with 0, 50
            if mem[140 len 20] != ext_call.return_data[12 len 20]:
                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) <= stor5 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'PRICE_TOO_HIGH'
                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) < stor5 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= 0:
                    revert with 0, 'PRICE_TOO_HIGH'
                if 120 > !block.timestamp:
                    revert with 0, 17
                mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= uint256(stor4.field_0):
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _719 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32
                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 <= test266151307()
                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 159
                    _727 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]
                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 129
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]
                    require _719 + (32 * _727) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(32 * _727)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _719 + 160 len ceil32(32 * _727)]
                    if _727 < 1:
                        revert with 0, 17
                    if _727 - 1 >= _727:
                        revert with 0, 50
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                    mem[mem[64] + 96] = mem[(32 * _727 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]
                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5, mem[(32 * _727 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160], stor6);
                    if mem[(32 * _727 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
                else:
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _720 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
                    _728 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    require _720 + (32 * _728) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(32 * _728)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _720 + 160 len ceil32(32 * _728)]
                    if _728 < 1:
                        revert with 0, 17
                    if _728 - 1 >= _728:
                        revert with 0, 50
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 64] = uint256(stor4.field_0)
                    mem[mem[64] + 96] = mem[(32 * _728 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]
                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), uint256(stor4.field_0), mem[(32 * _728 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160], stor6);
                    if mem[(32 * _728 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
            else:
                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) <= stor5 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'PRICE_TOO_HIGH'
                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) < stor5 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= 0:
                    revert with 0, 'PRICE_TOO_HIGH'
                if 120 > !block.timestamp:
                    revert with 0, 17
                mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= uint256(stor4.field_0):
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _721 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32
                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 <= test266151307()
                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 159
                    _729 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]
                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 129
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]
                    require _721 + (32 * _729) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(32 * _729)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _721 + 160 len ceil32(32 * _729)]
                    if _729 < 1:
                        revert with 0, 17
                    if _729 - 1 >= _729:
                        revert with 0, 50
                    _859 = mem[(32 * _729 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                    mem[mem[64] + 96] = _859
                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5, _859, stor6);
                    if _859:
                        uint8(stor2.field_0) = 1
                else:
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _722 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
                    _730 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    require _722 + (32 * _730) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(32 * _730)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _722 + 160 len ceil32(32 * _730)]
                    if _730 < 1:
                        revert with 0, 17
                    if _730 - 1 >= _730:
                        revert with 0, 50
                    _861 = mem[(32 * _730 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 64] = uint256(stor4.field_0)
                    mem[mem[64] + 96] = _861
                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), uint256(stor4.field_0), _861, stor6);
                    if _861:
                        uint8(stor2.field_0) = 1
        else:
            mem[(32 * stor3.length) + ceil32(return_data.size) + 132] = address(stor2.field_8)
            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = -1
            require ext_code.size(address(_394))
            call address(_394).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor2.field_0), -1
            mem[(32 * stor3.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(address(_394))
            staticcall address(_394).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < uint256(stor4.field_0):
                revert with 0, 'NOT_ENOUGH_TOKEN'
            if 0 >= stor3.length:
                revert with 0, 50
            if 1 >= stor3.length:
                revert with 0, 50
            _498 = mem[160]
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 132] = mem[140 len 20]
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164] = address(_498)
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 132], address(_498)
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= stor3.length:
                revert with 0, 50
            if mem[140 len 20] != ext_call.return_data[12 len 20]:
                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) <= stor5 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'PRICE_TOO_HIGH'
                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) < stor5 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= 0:
                    revert with 0, 'PRICE_TOO_HIGH'
                if 120 > !block.timestamp:
                    revert with 0, 17
                mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= uint256(stor4.field_0):
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _723 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32
                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 <= test266151307()
                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 159
                    _731 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]
                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 129
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]
                    require _723 + (32 * _731) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160 len ceil32(32 * _731)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _723 + 160 len ceil32(32 * _731)]
                    if _731 < 1:
                        revert with 0, 17
                    if _731 - 1 >= _731:
                        revert with 0, 50
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                    mem[mem[64] + 96] = mem[(32 * _731 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]
                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5, mem[(32 * _731 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160], stor6);
                    if mem[(32 * _731 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
                else:
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _724 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
                    _732 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    require _724 + (32 * _732) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160 len ceil32(32 * _732)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _724 + 160 len ceil32(32 * _732)]
                    if _732 < 1:
                        revert with 0, 17
                    if _732 - 1 >= _732:
                        revert with 0, 50
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 64] = uint256(stor4.field_0)
                    mem[mem[64] + 96] = mem[(32 * _732 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]
                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), uint256(stor4.field_0), mem[(32 * _732 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160], stor6);
                    if mem[(32 * _732 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
            else:
                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) <= stor5 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'PRICE_TOO_HIGH'
                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) < stor5 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= 0:
                    revert with 0, 'PRICE_TOO_HIGH'
                if 120 > !block.timestamp:
                    revert with 0, 17
                mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= uint256(stor4.field_0):
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _725 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32
                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 <= test266151307()
                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 159
                    _733 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]
                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 129
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]
                    require _725 + (32 * _733) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160 len ceil32(32 * _733)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _725 + 160 len ceil32(32 * _733)]
                    if _733 < 1:
                        revert with 0, 17
                    if _733 - 1 >= _733:
                        revert with 0, 50
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                    mem[mem[64] + 96] = mem[(32 * _733 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]
                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5, mem[(32 * _733 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160], stor6);
                    if mem[(32 * _733 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
                else:
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _726 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
                    _734 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    require _726 + (32 * _734) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160 len ceil32(32 * _734)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _726 + 160 len ceil32(32 * _734)]
                    if _734 < 1:
                        revert with 0, 17
                    if _734 - 1 >= _734:
                        revert with 0, 50
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 64] = uint256(stor4.field_0)
                    mem[mem[64] + 96] = mem[(32 * _734 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]
                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 128]), uint256(stor4.field_0), mem[(32 * _734 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160], stor6);
                    if mem[(32 * _734 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
    else:
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
            if 0 >= stor3.length:
                revert with 0, 50
            _30 = mem[128]
            if 1 >= stor3.length:
                revert with 0, 50
            _32 = mem[160]
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 132] = mem[140 len 20]
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = address(_32)
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_30), address(_32)
            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= stor3.length:
                revert with 0, 50
            if mem[140 len 20] != ext_call.return_data[12 len 20]:
                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) <= stor5 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'PRICE_TOO_HIGH'
                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) < stor5 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= 0:
                    revert with 0, 'PRICE_TOO_HIGH'
                if 120 > !block.timestamp:
                    revert with 0, 17
                mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= uint256(stor4.field_0):
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _265 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32
                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 <= test266151307()
                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 159
                    _273 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]
                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 129
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]
                    require _265 + (32 * _273) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(32 * _273)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _265 + 160 len ceil32(32 * _273)]
                    if _273 < 1:
                        revert with 0, 17
                    if _273 - 1 >= _273:
                        revert with 0, 50
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 140 len 20]
                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                    mem[mem[64] + 96] = mem[(32 * _273 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]
                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                              mem[mem[64] len 64],
                              (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5,
                              mem[(32 * _273 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160],
                              stor6,
                    if mem[(32 * _273 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
                else:
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _266 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
                    _274 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    require _266 + (32 * _274) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(32 * _274)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _266 + 160 len ceil32(32 * _274)]
                    if _274 < 1:
                        revert with 0, 17
                    if _274 - 1 >= _274:
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
                    mem[mem[64] + 96] = mem[(32 * _274 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]
                    mem[mem[64] + 128] = stor6
                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                              mem[mem[64] len 64],
                              uint256(stor4.field_0),
                              mem[mem[64] + 96],
                              stor6,
                    if mem[(32 * _274 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
            else:
                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) <= stor5 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'PRICE_TOO_HIGH'
                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) < stor5 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= 0:
                    revert with 0, 'PRICE_TOO_HIGH'
                if 120 > !block.timestamp:
                    revert with 0, 17
                mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= uint256(stor4.field_0):
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _267 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32
                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 <= test266151307()
                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 159
                    _275 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]
                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 129
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]
                    require _267 + (32 * _275) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(32 * _275)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _267 + 160 len ceil32(32 * _275)]
                    if _275 < 1:
                        revert with 0, 17
                    if _275 - 1 >= _275:
                        revert with 0, 50
                    _410 = mem[(32 * _275 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 140 len 20]
                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                    mem[mem[64] + 96] = _410
                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                              mem[mem[64] len 64],
                              (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5,
                              _410,
                              stor6,
                    if _410:
                        uint8(stor2.field_0) = 1
                else:
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _268 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
                    _276 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    require _268 + (32 * _276) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(32 * _276)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _268 + 160 len ceil32(32 * _276)]
                    if _276 < 1:
                        revert with 0, 17
                    if _276 - 1 >= _276:
                        revert with 0, 50
                    _412 = mem[(32 * _276 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160]
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 140 len 20]
                    mem[mem[64] + 64] = uint256(stor4.field_0)
                    mem[mem[64] + 96] = _412
                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                              mem[mem[64] len 64],
                              uint256(stor4.field_0),
                              _412,
                              stor6,
                    if _412:
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
            if 0 >= stor3.length:
                revert with 0, 50
            _42 = mem[128]
            if 1 >= stor3.length:
                revert with 0, 50
            _44 = mem[160]
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 132] = mem[140 len 20]
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164] = address(_44)
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_42), address(_44)
            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= stor3.length:
                revert with 0, 50
            if mem[140 len 20] != ext_call.return_data[12 len 20]:
                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) <= stor5 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'PRICE_TOO_HIGH'
                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) < stor5 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= 0:
                    revert with 0, 'PRICE_TOO_HIGH'
                if 120 > !block.timestamp:
                    revert with 0, 17
                mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= uint256(stor4.field_0):
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _269 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32
                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 <= test266151307()
                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 159
                    _277 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]
                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]) + 129
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 128]
                    require _269 + (32 * _277) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160 len ceil32(32 * _277)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _269 + 160 len ceil32(32 * _277)]
                    if _277 < 1:
                        revert with 0, 17
                    if _277 - 1 >= _277:
                        revert with 0, 50
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 140 len 20]
                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                    mem[mem[64] + 96] = mem[(32 * _277 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]
                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                              mem[mem[64] len 64],
                              (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5,
                              mem[(32 * _277 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160],
                              stor6,
                    if mem[(32 * _277 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
                else:
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _270 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
                    _278 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    require _270 + (32 * _278) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160 len ceil32(32 * _278)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _270 + 160 len ceil32(32 * _278)]
                    if _278 < 1:
                        revert with 0, 17
                    if _278 - 1 >= _278:
                        revert with 0, 50
                    _416 = mem[(32 * _278 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 140 len 20]
                    mem[mem[64] + 64] = uint256(stor4.field_0)
                    mem[mem[64] + 96] = _416
                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                              mem[mem[64] len 64],
                              uint256(stor4.field_0),
                              _416,
                              stor6,
                    if _416:
                        uint8(stor2.field_0) = 1
            else:
                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) <= stor5 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'PRICE_TOO_HIGH'
                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                    revert with 0, 17
                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) < stor5 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not stor5:
                    revert with 0, 18
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= 0:
                    revert with 0, 'PRICE_TOO_HIGH'
                if 120 > !block.timestamp:
                    revert with 0, 17
                mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 > uint256(stor4.field_0):
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132] = uint256(stor4.field_0)
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _272 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32)
                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 159
                    _280 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]) + 129
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 0, stor4.field_32) + 128]
                    require _272 + (32 * _280) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160 len ceil32(32 * _280)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _272 + 160 len ceil32(32 * _280)]
                    if _280 < 1:
                        revert with 0, 17
                    if _280 - 1 >= _280:
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
                    mem[mem[64] + 96] = mem[(32 * _280 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]
                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                              mem[mem[64] len 64],
                              uint256(stor4.field_0),
                              mem[(32 * _280 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160],
                              stor6,
                    if mem[(32 * _280 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]:
                        uint8(stor2.field_0) = 1
                else:
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = 0
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 160
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = stor3.length
                    idx = 0
                    s = 128
                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 324
                    while idx < stor3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = stor6
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = block.timestamp + 120
                    require ext_code.size(address(stor2.field_8))
                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 132 len (96 * stor3.length) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _271 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32
                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 <= test266151307()
                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 128 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 159
                    _279 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]
                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]) + 129
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 128] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 128]
                    require _271 + (32 * _279) + 32 <= return_data.size
                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160 len ceil32(32 * _279)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _271 + 160 len ceil32(32 * _279)]
                    if _279 < 1:
                        revert with 0, 17
                    if _279 - 1 >= _279:
                        revert with 0, 50
                    _418 = mem[(32 * _279 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160]
                    if 0 >= stor3.length:
                        revert with 0, 50
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[mem[64]] = mem[140 len 20]
                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 140 len 20]
                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                    mem[mem[64] + 96] = _418
                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                              mem[mem[64] len 64],
                              (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5,
                              _418,
                              stor6,
                    if _418:
                        uint8(stor2.field_0) = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x853828b6(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xae8421e1(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9db5dbe4(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x853828b6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call address(owner) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return address(owner)
                    require unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    return bool(roleAdmin[cd[4]][address(cd[36])].field_0)
                if uint32(call.func_hash) >> 224 != unknown_0x9db5dbe4(?????):
                    if unknown_0x9e6e4d25(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
                    if unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0
                    require unknown_0xa4a89946(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
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
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
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
            if unknown_0x3948adad(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x248a9ca3(?????) > uint32(call.func_hash) >> 224:
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
                    require unknown_0x15124476(?????) == uint32(call.func_hash) >> 224
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
                    if uint32(call.func_hash) >> 224 != unknown_0x33251a0b(?????):
                        require unknown_0x36568abe(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        if address(cd[36]) != msg.sender:
                            revert with 0, 'AccessControl: can only renounce roles for self'
                        if roleAdmin[cd[4]][address(cd[36])].field_0:
                            roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                            emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
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
            if unknown_0x715018a6(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x3948adad(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0x60ae616a2155ee3d9a68541ba4544862310933d4
                if uint32(call.func_hash) >> 224 != unknown_0x5115d86f(?????):
                    require unknown_0x5e615a6b(?????) == uint32(call.func_hash) >> 224
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
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    address(owner) = 0
                    emit OwnershipTransferred(address(owner), 0);
                else:
                    if unknown_0x73b295c2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if unknown_0x777cda3f(?????) == uint32(call.func_hash) >> 224:
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
                    require unknown_0x8119c065(?????) == uint32(call.func_hash) >> 224
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
                        _72 = mem[160]
                        mem[(32 * stor3.length) + 164] = this.address
                        mem[(32 * stor3.length) + 196] = address(stor2.field_8)
                        require ext_code.size(address(_72))
                        staticcall address(_72).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor2.field_8)
                        mem[(32 * stor3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= uint256(stor4.field_0):
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = this.address
                            require ext_code.size(address(_72))
                            staticcall address(_72).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < uint256(stor4.field_0):
                                revert with 0, 'NOT_ENOUGH_TOKEN'
                            if 0 >= stor3.length:
                                revert with 0, 50
                            _181 = mem[160]
                            if 1 >= stor3.length:
                                revert with 0, 50
                            _187 = mem[192]
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = mem[172 len 20]
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 196] = address(_187)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(_181), address(_187)
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if mem[172 len 20] != ext_call.return_data[12 len 20]:
                                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) <= stor5 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) < stor5 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not stor5:
                                    revert with 0, 18
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= 0:
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= uint256(stor4.field_0):
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _440 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32
                                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 <= test266151307()
                                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 191
                                    _449 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]
                                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 161
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]
                                    require _440 + (32 * _449) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 192 len ceil32(32 * _449)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _440 + 192 len ceil32(32 * _449)]
                                    if _449 < 1:
                                        revert with 0, 17
                                    if _449 - 1 >= _449:
                                        revert with 0, 50
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 172 len 20]
                                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                                    mem[mem[64] + 96] = mem[(32 * _449 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]
                                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                              mem[mem[64] len 64],
                                              (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5,
                                              mem[(32 * _449 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192],
                                              stor6,
                                    if mem[(32 * _449 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]:
                                        uint8(stor2.field_0) = 1
                                else:
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _441 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                                    _450 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    require _441 + (32 * _450) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 192 len ceil32(32 * _450)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _441 + 192 len ceil32(32 * _450)]
                                    if _450 < 1:
                                        revert with 0, 17
                                    if _450 - 1 >= _450:
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
                                    mem[mem[64] + 96] = mem[(32 * _450 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]
                                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                              mem[mem[64] len 64],
                                              uint256(stor4.field_0),
                                              mem[(32 * _450 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192],
                                              stor6,
                                    if mem[(32 * _450 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]:
                                        uint8(stor2.field_0) = 1
                            else:
                                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) <= stor5 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) < stor5 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not stor5:
                                    revert with 0, 18
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= 0:
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= uint256(stor4.field_0):
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _442 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32
                                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 <= test266151307()
                                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 191
                                    _451 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]
                                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 161
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]
                                    require _442 + (32 * _451) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 192 len ceil32(32 * _451)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _442 + 192 len ceil32(32 * _451)]
                                    if _451 < 1:
                                        revert with 0, 17
                                    if _451 - 1 >= _451:
                                        revert with 0, 50
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 172 len 20]
                                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                                    mem[mem[64] + 96] = mem[(32 * _451 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]
                                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                              mem[mem[64] len 64],
                                              (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5,
                                              mem[(32 * _451 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192],
                                              stor6,
                                    if mem[(32 * _451 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]:
                                        uint8(stor2.field_0) = 1
                                else:
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _443 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                                    _452 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    require _443 + (32 * _452) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 192 len ceil32(32 * _452)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _443 + 192 len ceil32(32 * _452)]
                                    if _452 < 1:
                                        revert with 0, 17
                                    if _452 - 1 >= _452:
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
                                    mem[mem[64] + 96] = mem[(32 * _452 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]
                                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                              mem[mem[64] len 64],
                                              uint256(stor4.field_0),
                                              mem[(32 * _452 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192],
                                              stor6,
                                    if mem[(32 * _452 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]:
                                        uint8(stor2.field_0) = 1
                        else:
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = address(stor2.field_8)
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 196] = -1
                            require ext_code.size(address(_72))
                            call address(_72).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor2.field_0), -1
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(address(_72))
                            staticcall address(_72).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < uint256(stor4.field_0):
                                revert with 0, 'NOT_ENOUGH_TOKEN'
                            if 0 >= stor3.length:
                                revert with 0, 50
                            _197 = mem[160]
                            if 1 >= stor3.length:
                                revert with 0, 50
                            _200 = mem[192]
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164] = mem[172 len 20]
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 196] = address(_200)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(_197), address(_200)
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if mem[172 len 20] != ext_call.return_data[12 len 20]:
                                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) <= stor5 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) < stor5 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not stor5:
                                    revert with 0, 18
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= 0:
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= uint256(stor4.field_0):
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _444 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32
                                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 <= test266151307()
                                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 191
                                    _453 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]
                                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 161
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160] = _453
                                    require _444 + (32 * _453) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 192 len ceil32(32 * _453)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _444 + 192 len ceil32(32 * _453)]
                                    if _453 < 1:
                                        revert with 0, 17
                                    if _453 - 1 >= _453:
                                        revert with 0, 50
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 172 len 20]
                                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                                    mem[mem[64] + 96] = mem[(32 * _453 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]
                                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                              mem[mem[64] len 64],
                                              (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5,
                                              mem[(32 * _453 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192],
                                              stor6,
                                    if mem[(32 * _453 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]:
                                        uint8(stor2.field_0) = 1
                                else:
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _445 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                                    _454 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160] = _454
                                    require _445 + (32 * _454) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 192 len ceil32(32 * _454)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _445 + 192 len ceil32(32 * _454)]
                                    if _454 < 1:
                                        revert with 0, 17
                                    if _454 - 1 >= _454:
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
                                    mem[mem[64] + 96] = mem[(32 * _454 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]
                                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                              mem[mem[64] len 64],
                                              uint256(stor4.field_0),
                                              mem[(32 * _454 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192],
                                              stor6,
                                    if mem[(32 * _454 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]:
                                        uint8(stor2.field_0) = 1
                            else:
                                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) <= stor5 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) < stor5 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not stor5:
                                    revert with 0, 18
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= 0:
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= uint256(stor4.field_0):
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _446 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32
                                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 <= test266151307()
                                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 191
                                    _455 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]
                                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 161
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160] = _455
                                    require _446 + (32 * _455) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 192 len ceil32(32 * _455)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _446 + 192 len ceil32(32 * _455)]
                                    if _455 < 1:
                                        revert with 0, 17
                                    if _455 - 1 >= _455:
                                        revert with 0, 50
                                    _636 = mem[(32 * _455 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 172 len 20]
                                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                                    mem[mem[64] + 96] = _636
                                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                              mem[mem[64] len 64],
                                              (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5,
                                              _636,
                                              stor6,
                                    if _636:
                                        uint8(stor2.field_0) = 1
                                else:
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _447 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                                    _456 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160] = _456
                                    require _447 + (32 * _456) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 192 len ceil32(32 * _456)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _447 + 192 len ceil32(32 * _456)]
                                    if _456 < 1:
                                        revert with 0, 17
                                    if _456 - 1 >= _456:
                                        revert with 0, 50
                                    _638 = mem[(32 * _456 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 32] = mem[(32 * stor3.length - 1) + 172 len 20]
                                    mem[mem[64] + 64] = uint256(stor4.field_0)
                                    mem[mem[64] + 96] = _638
                                    emit Swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5):
                                              mem[mem[64] len 64],
                                              uint256(stor4.field_0),
                                              _638,
                                              stor6,
                                    if _638:
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
                        _596 = mem[160]
                        mem[(32 * stor3.length) + 164] = this.address
                        mem[(32 * stor3.length) + 196] = address(stor2.field_8)
                        require ext_code.size(address(_596))
                        staticcall address(_596).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor2.field_8)
                        mem[(32 * stor3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= uint256(stor4.field_0):
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = this.address
                            require ext_code.size(address(_596))
                            staticcall address(_596).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < uint256(stor4.field_0):
                                revert with 0, 'NOT_ENOUGH_TOKEN'
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if 1 >= stor3.length:
                                revert with 0, 50
                            _741 = mem[192]
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = mem[172 len 20]
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 196] = address(_741)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164], address(_741)
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(ext_call.return_data[12 len 20])
                            staticcall ext_call.return_data[12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if mem[172 len 20] != ext_call.return_data[12 len 20]:
                                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) <= stor5 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) < stor5 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not stor5:
                                    revert with 0, 18
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= 0:
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 > uint256(stor4.field_0):
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _1033 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                                    _1044 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    require _1033 + (32 * _1044) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 192 len ceil32(32 * _1044)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _1033 + 192 len ceil32(32 * _1044)]
                                    if _1044 < 1:
                                        revert with 0, 17
                                    if _1044 - 1 >= _1044:
                                        revert with 0, 50
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 64] = uint256(stor4.field_0)
                                    mem[mem[64] + 96] = mem[(32 * _1044 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]
                                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), uint256(stor4.field_0), mem[(32 * _1044 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192], stor6);
                                    if mem[(32 * _1044 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]:
                                        uint8(stor2.field_0) = 1
                                else:
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _1032 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32
                                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 <= test266151307()
                                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 191
                                    _1043 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]
                                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 161
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]
                                    require _1032 + (32 * _1043) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 192 len ceil32(32 * _1043)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _1032 + 192 len ceil32(32 * _1043)]
                                    if _1043 < 1:
                                        revert with 0, 17
                                    if _1043 - 1 >= _1043:
                                        revert with 0, 50
                                    _1257 = mem[(32 * _1043 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                                    mem[mem[64] + 96] = _1257
                                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5, _1257, stor6);
                                    if _1257:
                                        uint8(stor2.field_0) = 1
                            else:
                                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) <= stor5 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) < stor5 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not stor5:
                                    revert with 0, 18
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= 0:
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= uint256(stor4.field_0):
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _1034 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32
                                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 <= test266151307()
                                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 191
                                    _1045 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]
                                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 161
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]
                                    require _1034 + (32 * _1045) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 192 len ceil32(32 * _1045)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _1034 + 192 len ceil32(32 * _1045)]
                                    if _1045 < 1:
                                        revert with 0, 17
                                    if _1045 - 1 >= _1045:
                                        revert with 0, 50
                                    _1261 = mem[(32 * _1045 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                                    mem[mem[64] + 96] = _1261
                                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5, _1261, stor6);
                                    if _1261:
                                        uint8(stor2.field_0) = 1
                                else:
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (7 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _1035 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require (32 * stor3.length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                                    _1046 = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    if mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    require _1035 + (32 * _1046) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 192 len ceil32(32 * _1046)] = mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + _1035 + 192 len ceil32(32 * _1046)]
                                    if _1046 < 1:
                                        revert with 0, 17
                                    if _1046 - 1 >= _1046:
                                        revert with 0, 50
                                    _1263 = mem[(32 * _1046 - 1) + (32 * stor3.length) + (8 * ceil32(return_data.size)) + 192]
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 64] = uint256(stor4.field_0)
                                    mem[mem[64] + 96] = _1263
                                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), uint256(stor4.field_0), _1263, stor6);
                                    if _1263:
                                        uint8(stor2.field_0) = 1
                        else:
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 164] = address(stor2.field_8)
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 196] = -1
                            require ext_code.size(address(_596))
                            call address(_596).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor2.field_0), -1
                            mem[(32 * stor3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(address(_596))
                            staticcall address(_596).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(32 * stor3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < uint256(stor4.field_0):
                                revert with 0, 'NOT_ENOUGH_TOKEN'
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if 1 >= stor3.length:
                                revert with 0, 50
                            _789 = mem[192]
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164] = mem[172 len 20]
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 196] = address(_789)
                            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 164], address(_789)
                            mem[(32 * stor3.length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(ext_call.return_data[12 len 20])
                            staticcall ext_call.return_data[12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[(32 * stor3.length) + (6 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            mem[(32 * stor3.length) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= stor3.length:
                                revert with 0, 50
                            if mem[172 len 20] != ext_call.return_data[12 len 20]:
                                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) <= stor5 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if stor5 and Mask(112, 0, ext_call.return_data[32]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[0]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0]) < stor5 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not stor5:
                                    revert with 0, 18
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= 0:
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5 <= uint256(stor4.field_0):
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _1036 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32
                                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 <= test266151307()
                                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 191
                                    _1047 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]
                                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5) >> 32 + 160]) + 161
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160] = _1047
                                    require _1036 + (32 * _1047) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 192 len ceil32(32 * _1047)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _1036 + 192 len ceil32(32 * _1047)]
                                    if _1047 < 1:
                                        revert with 0, 17
                                    if _1047 - 1 >= _1047:
                                        revert with 0, 50
                                    _1265 = mem[(32 * _1047 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5
                                    mem[mem[64] + 96] = _1265
                                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[0])) - (stor5 * Mask(112, 0, ext_call.return_data[32])) / stor5, _1265, stor6);
                                    if _1265:
                                        uint8(stor2.field_0) = 1
                                else:
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _1037 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                                    _1048 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160] = _1048
                                    require _1037 + (32 * _1048) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 192 len ceil32(32 * _1048)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _1037 + 192 len ceil32(32 * _1048)]
                                    if _1048 < 1:
                                        revert with 0, 17
                                    if _1048 - 1 >= _1048:
                                        revert with 0, 50
                                    _1267 = mem[(32 * _1048 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 64] = uint256(stor4.field_0)
                                    mem[mem[64] + 96] = _1267
                                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), uint256(stor4.field_0), _1267, stor6);
                                    if _1267:
                                        uint8(stor2.field_0) = 1
                            else:
                                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) <= stor5 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if stor5 and Mask(112, 0, ext_call.return_data[0]) > -1 / stor5:
                                    revert with 0, 17
                                if uint256(stor4.field_0) and Mask(112, 0, ext_call.return_data[32]) > -1 / uint256(stor4.field_0):
                                    revert with 0, 17
                                if uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32]) < stor5 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not stor5:
                                    revert with 0, 18
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 <= 0:
                                    revert with 0, 'PRICE_TOO_HIGH'
                                if 120 > !block.timestamp:
                                    revert with 0, 17
                                mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                if (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5 > uint256(stor4.field_0):
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = uint256(stor4.field_0)
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _1039 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 191
                                    _1050 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]
                                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 0, stor4.field_32) + 160]) + 161
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160] = _1050
                                    require _1039 + (32 * _1050) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 192 len ceil32(32 * _1050)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _1039 + 192 len ceil32(32 * _1050)]
                                    if _1050 < 1:
                                        revert with 0, 17
                                    if _1050 - 1 >= _1050:
                                        revert with 0, 50
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 64] = uint256(stor4.field_0)
                                    mem[mem[64] + 96] = mem[(32 * _1050 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]
                                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), uint256(stor4.field_0), mem[(32 * _1050 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192], stor6);
                                    if mem[(32 * _1050 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]:
                                        uint8(stor2.field_0) = 1
                                else:
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 196] = 0
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 228] = 160
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 324] = stor3.length
                                    idx = 0
                                    s = 160
                                    t = (32 * stor3.length) + (8 * ceil32(return_data.size)) + 356
                                    while idx < stor3.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 260] = stor6
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 292] = block.timestamp + 120
                                    require ext_code.size(address(stor2.field_8))
                                    call address(stor2.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 164 len (96 * stor3.length) + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _1038 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32
                                    require mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 <= test266151307()
                                    require (32 * stor3.length) + (8 * ceil32(return_data.size)) + return_data.size + 160 > (32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 191
                                    _1049 = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]
                                    if mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 1 < 0 or (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 161 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * stor3.length) + (10 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5) >> 32 + 160]) + 161
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 160] = _1049
                                    require _1038 + (32 * _1049) + 32 <= return_data.size
                                    mem[(32 * stor3.length) + (10 * ceil32(return_data.size)) + 192 len ceil32(32 * _1049)] = mem[(32 * stor3.length) + (8 * ceil32(return_data.size)) + _1038 + 192 len ceil32(32 * _1049)]
                                    if _1049 < 1:
                                        revert with 0, 17
                                    if _1049 - 1 >= _1049:
                                        revert with 0, 50
                                    _1269 = mem[(32 * _1049 - 1) + (32 * stor3.length) + (10 * ceil32(return_data.size)) + 192]
                                    if 0 >= stor3.length:
                                        revert with 0, 50
                                    if stor3.length < 1:
                                        revert with 0, 17
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[172 len 20]
                                    mem[mem[64] + 64] = (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5
                                    mem[mem[64] + 96] = _1269
                                    emit Swap(mem[mem[64]], address(mem[(32 * stor3.length - 1) + 160]), (uint256(stor4.field_0) * Mask(112, 0, ext_call.return_data[32])) - (stor5 * Mask(112, 0, ext_call.return_data[0])) / stor5, _1269, stor6);
                                    if _1269:
                                        uint8(stor2.field_0) = 1
}



}
