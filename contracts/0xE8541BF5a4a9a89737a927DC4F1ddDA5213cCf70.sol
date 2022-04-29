contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const RELAYER_ROLE = 0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d

const DEFAULT_ADMIN_ROLE = 0

const NAME = 'Wasdaq Bridge', 0

const PAUSER_ROLE = 0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86


mapping of struct roleAdmin;
array of struct roleMember;
uint8 stor2;
address tokenAddress; offset 8
uint256 nonce;
uint256 sub_6e9688d1;
uint256 minTransfer;
uint256 fee;
uint256 feeBalance;
uint256 sub_a4ed5f73;
mapping of struct sub_8747bf9c;

function sub_0a42723d(?) {
    require calldata.size - 4 >= 32
    return bool(sub_8747bf9c[arg1].field_0)
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(arg1)].field_0)
}

function paused() {
    return bool(stor2)
}

function feeBalance() {
    return feeBalance
}

function sub_6e9688d1(?) {
    return sub_6e9688d1
}

function sub_7cbe4069(?) {
    require calldata.size - 4 >= 32
    return bool(sub_8747bf9c[arg1].field_8)
}

function sub_8747bf9c(?) {
    require calldata.size - 4 >= 32
    return bool(sub_8747bf9c[arg1].field_0), 
           bool(sub_8747bf9c[arg1].field_8),
           sub_8747bf9c[arg1].field_256,
           sub_8747bf9c[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_a4ed5f73(?) {
    return sub_a4ed5f73
}

function minTransfer() {
    return minTransfer
}

function nonce() {
    return nonce
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function fee() {
    return fee
}

function token() {
    return tokenAddress
}

function hash(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    return sha3(arg1, arg2, arg3)
}

function pause() {
    if not roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0:
        revert with 0, 'Account missing Pauser role'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0:
        revert with 0, 'Account missing Pauser role'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function sub_3feb3265(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if sub_8747bf9c[arg1].field_0:
        return not bool(sub_8747bf9c[arg1].field_0)
    if sub_8747bf9c[arg1][3][address(arg2)].field_0:
        return not bool(sub_8747bf9c[arg1][3][address(arg2)].field_0)
    return not bool(sub_8747bf9c[arg1].field_8)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < minTransfer:
        revert with 0, 'Deposit too low'
    if stor2:
        revert with 0, 'Deposit has been paused!'
    if feeBalance > !fee:
        revert with 0, 17
    feeBalance += fee
    if arg1 < fee:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x6e610d33: msg.sender, this.address, arg1 - fee, nonce, sha3(msg.sender, arg1 - fee, nonce)
    if nonce == -1:
        revert with 0, 17
    nonce++
}

function sub_1212323c(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d][address(msg.sender)].field_0:
        sub_6e9688d1 = arg1
        emit 0xf93954dd: arg1
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
        s = 0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d
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

function sub_bf64a586(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        if arg1 < fee:
            revert with 0, 'MinTransfer too low!'
        minTransfer = arg1
        emit 0xd0a97904: arg1
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        if arg1 > minTransfer:
            revert with 0, 'Transfer fees too low!'
        fee = arg1
        emit FeeUpdated(arg1);
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_46782652(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        if arg1 > roleMember[0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d].field_0:
            revert with 0, 'Insufficient number of relayers'
        sub_a4ed5f73 = arg1
        emit 0xf48471ab: arg1
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_6eb2714e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if feeBalance <= 0:
        revert with 0, 'Fee balance is empty!'
    feeBalance = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), feeBalance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x5a7af898: address(arg1), feeBalance
}

function forceWithdraw(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    sub_8747bf9c[arg3].field_0 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xf4b527c1: msg.sender, address(arg1), arg2, arg3, 0
    emit 0xb7d1985c: address(arg1), arg2, arg3
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function drain(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not arg1:
        revert with 0, 'account is the zero address'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit 0xf36f4d66: address(arg1), eth.balance(this.address)
}

function sub_fc0c833a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not address(arg1):
        revert with 0, 'destination is the zero address'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xac6572a4: address(arg1), ext_call.return_data[0]
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_256
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
        if roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(arg1)].field_0:
        roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(arg1)].field_0 = 1
        emit RoleGranted(0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86, arg1, msg.sender);
    if not roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg1)].field_0:
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0++
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_0 = arg1
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_160 = 0
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg1)].field_0 = roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0
    emit PauserAdded(arg1);
}

function sub_1323d654(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    if not roleAdmin[0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d][address(msg.sender)].field_0:
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
            s = 0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d
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
    if sub_8747bf9c[arg3].field_0:
        revert with 0, 'Relayer can't approve'
    if sub_8747bf9c[arg3][3][address(msg.sender)].field_0:
        revert with 0, 'Relayer can't approve'
    if sub_8747bf9c[arg3].field_8:
        revert with 0, 'Relayer can't approve'
    if arg5 != sha3(address(arg1), arg2, arg3):
        revert with 0, 'Invalid input'
    if not sub_8747bf9c[arg3].field_256:
        sub_8747bf9c[arg3].field_256 = arg5
    if arg5 != sub_8747bf9c[arg3].field_256:
        sub_8747bf9c[arg3].field_8 = 1
        emit 0x887b425c: arg3, msg.sender
    sub_8747bf9c[arg3][3][address(msg.sender)].field_0 = 1
    if sub_8747bf9c[arg3].field_512 == -1:
        revert with 0, 17
    sub_8747bf9c[arg3].field_512++
    emit 0x48332cb2: arg3, arg2, msg.sender
    if sub_a4ed5f73 > sub_8747bf9c[arg3].field_512:
        if 1 == sub_a4ed5f73 <= sub_8747bf9c[arg3].field_512:
            sub_6e9688d1 = arg4
            sub_8747bf9c[arg3].field_0 = 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0xf4b527c1: msg.sender, address(arg1), arg2, arg3, 0
    else:
        if sub_8747bf9c[arg3].field_0:
            if 1 == not bool(sub_8747bf9c[arg3].field_0):
                sub_6e9688d1 = arg4
                sub_8747bf9c[arg3].field_0 = 1
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0xf4b527c1: msg.sender, address(arg1), arg2, arg3, 0
        else:
            if 1 == not bool(sub_8747bf9c[arg3].field_8):
                sub_6e9688d1 = arg4
                sub_8747bf9c[arg3].field_0 = 1
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0xf4b527c1: msg.sender, address(arg1), arg2, arg3, 0
}

function renouncePauser() {
    if not roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0:
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
            s = 0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86
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
    if msg.sender != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0:
        roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0 = 0
        emit RoleRevoked(0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86, msg.sender, msg.sender);
    if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0:
        if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0 < 1:
            revert with 0, 17
        if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0 < 1:
            revert with 0, 17
        if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0 - 1 != roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0 - 1:
            if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0 - 1 >= roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0:
                revert with 0, 50
            if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0 - 1 >= roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0:
                revert with 0, 50
            roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0].field_0 = roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_0
            roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_0].field_0 = roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0
        if not roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0:
            revert with 0, 49
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_0 = 0
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0--
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0 = 0
    emit 0xf6018a3d: msg.sender
}

function removePauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_256
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
        if roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(arg1)].field_0:
        roleAdmin[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(arg1)].field_0 = 0
        emit RoleRevoked(0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86, arg1, msg.sender);
    if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg1)].field_0:
        if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg1)].field_0 < 1:
            revert with 0, 17
        if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0 < 1:
            revert with 0, 17
        if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0 - 1 != roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg1)].field_0 - 1:
            if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0 - 1 >= roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0:
                revert with 0, 50
            if roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg1)].field_0 - 1 >= roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0:
                revert with 0, 50
            roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg1)].field_0].field_0 = roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_0
            roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_0].field_0 = roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg1)].field_0
        if not roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0:
            revert with 0, 49
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_0 = 0
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0--
        roleMember[0xc465d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg1)].field_0 = 0
    emit PauserRemoved(arg1);
}



}
