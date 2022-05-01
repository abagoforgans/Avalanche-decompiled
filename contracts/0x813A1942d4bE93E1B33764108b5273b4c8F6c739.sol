contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - sub_30741fa4(?)
#  - harvest()
#  - rebalance()
#  - deposit(uint256 arg1)
#  - closePosition()
#  - sub_e642dd35(?)
#  - _fallback()
#
const decimals = 18

const sub_cbf25376(?) = 500

const sub_e86b07ea(?) = 20000

const WHITELIST_ROLE = 0xfedc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be67

const DEFAULT_ADMIN_ROLE = 0

const MANAGER_ROLE = 0x60241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
uint256 stor101;
uint256 stor102;
mapping of uint256 nonces;
uint256 stor154;
mapping of struct roleAdmin;
uint256 sub_f7c18daa;
uint256 sub_263f4f40;
uint256 sub_04b2b886;
uint256 sub_c089f572;
uint256 sub_f90766a6;
address sub_b15f67b3Address;
uint256 lastHarvest;
address wantAddress;
address shortAddress;
uint16 sub_3dfe9f6a;
address stor466;
address stor467;
address comptrollerAddress;
address oracleAddress;
uint256 sub_d539fe4b;
address stor574;
address pairAddress;

function sub_04b2b886(?) {
    return sub_04b2b886
}

function totalSupply() {
    return totalSupply
}

function want() {
    return wantAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_263f4f40(?) {
    return sub_263f4f40
}

function short() {
    return shortAddress
}

function sub_3dfe9f6a(?) {
    return sub_3dfe9f6a
}

function comptroller() {
    return comptrollerAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function oracle() {
    return oracleAddress
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[address(arg1)]
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function pair() {
    return pairAddress
}

function sub_b15f67b3(?) {
    return sub_b15f67b3Address
}

function sub_c089f572(?) {
    return sub_c089f572
}

function sub_d539fe4b(?) {
    return sub_d539fe4b
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function lastHarvest() {
    return lastHarvest
}

function sub_f7c18daa(?) {
    return sub_f7c18daa
}

function sub_f90766a6(?) {
    return sub_f90766a6
}

function DOMAIN_SEPARATOR() {
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getCollateralRatio() {
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.markets(address arg1) with:
            gas gas_remaining wei
           args stor466
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    if ext_call.return_data[32] and sub_d539fe4b > -1 / ext_call.return_data[32]:
        revert with 0, 17
    return (ext_call.return_data[32] * sub_d539fe4b / 10^18)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit 0x8ddf252a: arg2, msg.sender, arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x60241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        require arg1
        emit 0x4e02820e: arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x60241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b
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
    revert with 0, 'Strings: hex length insufficient'
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if block.timestamp > arg4:
        revert with 0, 'ERC20Permit: expired deadline'
    nonces[address(arg1)]++
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if arg5 != 27:
        if arg5 != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(stor154, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'ERC20Permit: invalid signature'
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit 0x8ddf252a: arg3, arg1, arg2
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function name() {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function estimatedTotalAssets() {
    require ext_code.size(stor466)
    staticcall stor466.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor466)
    staticcall stor466.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor467)
    staticcall stor467.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor574)
        staticcall stor574.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if wantAddress == shortAddress:
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if wantAddress < shortAddress:
            if not wantAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if wantAddress == wantAddress:
                require ext_code.size(pairAddress)
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
        else:
            if not shortAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if wantAddress == shortAddress:
                require ext_code.size(pairAddress)
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0])
    if shortAddress == wantAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if shortAddress < wantAddress:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == shortAddress:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            require ext_code.size(stor574)
            staticcall stor574.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if wantAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if wantAddress < shortAddress:
                if not wantAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == wantAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == shortAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
    else:
        if not wantAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == wantAddress:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            require ext_code.size(stor574)
            staticcall stor574.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if wantAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if wantAddress < shortAddress:
                if not wantAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == wantAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == shortAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
    if ext_call.return_data[0] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[50 len 14]:
        revert with 0, 18
    require ext_code.size(stor574)
    staticcall stor574.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if wantAddress == shortAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if wantAddress < shortAddress:
        if not wantAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if wantAddress == wantAddress:
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
    else:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if wantAddress == shortAddress:
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
}

function getTVL() {
    require ext_code.size(stor466)
    staticcall stor466.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor466)
    staticcall stor466.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor467)
    staticcall stor467.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor574)
        staticcall stor574.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if wantAddress == shortAddress:
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if wantAddress < shortAddress:
            if not wantAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if wantAddress == wantAddress:
                require ext_code.size(pairAddress)
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                       ext_call.return_data[0]
        else:
            if not shortAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if wantAddress == shortAddress:
                require ext_code.size(pairAddress)
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                       ext_call.return_data[0]
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0], 
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
               ext_call.return_data[0],
               0,
               2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
               ext_call.return_data[0]
    if shortAddress == wantAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if shortAddress < wantAddress:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == shortAddress:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            require ext_code.size(stor574)
            staticcall stor574.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if wantAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if wantAddress < shortAddress:
                if not wantAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == wantAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == shortAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                   ext_call.return_data[0]
    else:
        if not wantAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == wantAddress:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            require ext_code.size(stor574)
            staticcall stor574.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if wantAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if wantAddress < shortAddress:
                if not wantAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == wantAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == shortAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                   ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[50 len 14]:
        revert with 0, 18
    require ext_code.size(stor574)
    staticcall stor574.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if wantAddress == shortAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if wantAddress < shortAddress:
        if not wantAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if wantAddress == wantAddress:
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                   ext_call.return_data[0]
    else:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if wantAddress == shortAddress:
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                   ext_call.return_data[0]
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
           ext_call.return_data[0],
           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
           ext_call.return_data[0]
}

function getPricePerShare() {
    require ext_code.size(stor466)
    staticcall stor466.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor466)
    staticcall stor466.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor467)
    staticcall stor467.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor574)
        staticcall stor574.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if wantAddress == shortAddress:
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if wantAddress < shortAddress:
            if not wantAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if wantAddress == wantAddress:
                require ext_code.size(pairAddress)
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0]:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (10^18 * ext_call.return_data[0]) / totalSupply)
        else:
            if not shortAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if wantAddress == shortAddress:
                require ext_code.size(pairAddress)
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0]:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + (10^18 * ext_call.return_data[0]) / totalSupply)
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0]:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + (10^18 * ext_call.return_data[0]) / totalSupply)
    if shortAddress == wantAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if shortAddress < wantAddress:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == shortAddress:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            require ext_code.size(stor574)
            staticcall stor574.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if wantAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if wantAddress < shortAddress:
                if not wantAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == wantAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * ext_call.return_data[0]) / totalSupply)
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == shortAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * ext_call.return_data[0]) / totalSupply)
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * ext_call.return_data[0]) / totalSupply)
    else:
        if not wantAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == wantAddress:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            require ext_code.size(stor574)
            staticcall stor574.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if wantAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if wantAddress < shortAddress:
                if not wantAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == wantAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * ext_call.return_data[0]) / totalSupply)
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                require ext_code.size(pairAddress)
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if wantAddress == shortAddress:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * ext_call.return_data[0]) / totalSupply)
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * ext_call.return_data[0]) / totalSupply)
    if ext_call.return_data[0] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[50 len 14]:
        revert with 0, 18
    require ext_code.size(stor574)
    staticcall stor574.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if wantAddress == shortAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if wantAddress < shortAddress:
        if not wantAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if wantAddress == wantAddress:
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * ext_call.return_data[0]) / totalSupply)
    else:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if wantAddress == shortAddress:
            require ext_code.size(pairAddress)
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * ext_call.return_data[0]) / totalSupply)
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0]:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * 2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * ext_call.return_data[0]) / totalSupply)
}

function sub_5439c4ad(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniUtils: INSUFFICIENT_OUTPUT_AMOUNT'
    if address(arg3) == address(arg4):
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if address(arg3) < address(arg4):
        if not address(arg3):
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg3) == address(arg3):
            if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
                revert with 0, 17
            if ext_call.return_data[18 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if ext_call.return_data[50 len 14] < arg2:
                revert with 0, 17
            if ext_call.return_data[50 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if not (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                revert with 0, 18
            if 1 > !(1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)):
                revert with 0, 17
            if address(arg4) == address(arg3):
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if address(arg4) < address(arg3):
                if not address(arg4):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if address(arg3) == address(arg4):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0, None
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0, None
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
            else:
                if not address(arg3):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if address(arg3) == address(arg3):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0, None
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0, None
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1)
        if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
            revert with 0, 17
        if ext_call.return_data[50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if ext_call.return_data[18 len 14] < arg2:
            revert with 0, 17
        if ext_call.return_data[18 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
            revert with 0, 18
        if 1 > !(1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)):
            revert with 0, 17
        if address(arg4) == address(arg3):
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if address(arg4) < address(arg3):
            if not address(arg4):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) << 288)
            if address(arg3) == address(arg4):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg2, address(this.address), 128, 0, None
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg2, 0, address(this.address), 128, 0
        else:
            if not address(arg3):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) << 288)
            if address(arg3) == address(arg3):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg2, 0, address(this.address), 128, 0
    else:
        if not address(arg4):
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg3) == address(arg4):
            if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
                revert with 0, 17
            if ext_call.return_data[18 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if ext_call.return_data[50 len 14] < arg2:
                revert with 0, 17
            if ext_call.return_data[50 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if not (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                revert with 0, 18
            if 1 > !(1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)):
                revert with 0, 17
            if address(arg4) == address(arg3):
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if address(arg4) < address(arg3):
                if not address(arg4):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if address(arg3) == address(arg4):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0, None
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0
            else:
                if not address(arg3):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if address(arg3) == address(arg3):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1)
        if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
            revert with 0, 17
        if ext_call.return_data[50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if ext_call.return_data[18 len 14] < arg2:
            revert with 0, 17
        if ext_call.return_data[18 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
            revert with 0, 18
        if 1 > !(1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)):
            revert with 0, 17
        if address(arg4) == address(arg3):
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if address(arg4) < address(arg3):
            if not address(arg4):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) << 288)
            if address(arg3) == address(arg4):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg2, 0, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg2, 0, address(this.address), 128, 0, None
        else:
            if not address(arg3):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) << 288)
            if address(arg3) == address(arg3):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg2, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg2, address(this.address), 128, 0, None
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1)
}



}
