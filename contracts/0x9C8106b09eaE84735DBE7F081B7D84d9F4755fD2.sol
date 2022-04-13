contract main {




// =====================  Runtime code  =====================


#
#  - sub_947ea4e4(?)
#
const ethToken = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const ADMIN_ROLE = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775

const DEFAULT_ADMIN_ROLE = 0

const MANAGER_ROLE = 0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
address ruleEngineAddress;
mapping of uint256 deposits;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deposits[arg1]
}

function ruleEngine() {
    return ruleEngineAddress
}

function _fallback() payable {
  stop
}

function deposit() payable {
    if deposits[msg.sender] > !msg.value:
        revert with 0, 17
    deposits[msg.sender] += msg.value
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

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > deposits[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DexManager: Not enough funds to withdraw'
    if deposits[msg.sender] < arg1:
        revert with 0, 17
    deposits[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'EthDexManager: Transfer failed.'
}

function sub_f7187c61(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775, msg.sender, msg.sender);
    emit RoleAdminChanged(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256, 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775);
    roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256 = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, msg.sender, msg.sender);
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
        if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
            roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0 = 1
            emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, mem[(32 * idx) + 140 len 20], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_a6e64013(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    mem[ceil32(32 * ('cd', 36).length) + 101] = address(cd[4])
    require ext_code.size(0x1dc4c71306c24c34fee55fbc168ca748653395b7)
    delegate 0x1dc4c71306c24c34fee55fbc168ca748653395b7.isContract(address rg1) with:
         gas gas_remaining wei
        args address(cd[4])
    mem[ceil32(32 * ('cd', 36).length) + 97] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if not delegate.return_data[0]:
        revert with 0, 'DexManager: The staker needs to be a contract'
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775, msg.sender, msg.sender);
    emit RoleAdminChanged(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256, 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775);
    roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256 = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, msg.sender, msg.sender);
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
        if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
            roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0 = 1
            emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, mem[(32 * idx) + 140 len 20], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint8(stor0.field_8):
        ruleEngineAddress = address(cd[4])
    else:
        uint8(stor0.field_8) = 0
        ruleEngineAddress = address(cd[4])
        uint8(stor0.field_8) = 0
}

function sub_103e32cf(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
    mem[ceil32(32 * ('cd', 36).length) + 101] = address(cd[4])
    require ext_code.size(0x1dc4c71306c24c34fee55fbc168ca748653395b7)
    delegate 0x1dc4c71306c24c34fee55fbc168ca748653395b7.isContract(address rg1) with:
         gas gas_remaining wei
        args address(cd[4])
    mem[ceil32(32 * ('cd', 36).length) + 97] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if not delegate.return_data[0]:
        revert with 0, 'DexManager: The staker needs to be a contract'
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775, msg.sender, msg.sender);
    emit RoleAdminChanged(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256, 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775);
    roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256 = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, msg.sender, msg.sender);
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
        if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
            roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0 = 1
            emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, mem[(32 * idx) + 140 len 20], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint8(stor0.field_8):
        ruleEngineAddress = address(cd[4])
    else:
        uint8(stor0.field_8) = 0
        ruleEngineAddress = address(cd[4])
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function initialize(address arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    uint16(stor0.field_0) = 257
    mem[ceil32(32 * arg2.length) + 101] = arg1
    require ext_code.size(0x1dc4c71306c24c34fee55fbc168ca748653395b7)
    delegate 0x1dc4c71306c24c34fee55fbc168ca748653395b7.isContract(address rg1) with:
         gas gas_remaining wei
        args arg1
    mem[ceil32(32 * arg2.length) + 97] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if not delegate.return_data[0]:
        revert with 0, 'DexManager: The staker needs to be a contract'
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775, msg.sender, msg.sender);
    emit RoleAdminChanged(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256, 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775);
    roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256 = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, msg.sender, msg.sender);
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
        if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
            roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0 = 1
            emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, mem[(32 * idx) + 140 len 20], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint8(stor0.field_8):
        ruleEngineAddress = arg1
    else:
        uint8(stor0.field_8) = 0
        ruleEngineAddress = arg1
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function sub_a82a4ae4(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 97 < 96 or ceil32(ceil32(arg6.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[128 len arg6.length] = arg6[all]
    mem[arg6.length + 128] = 0
    require arg7 == address(arg7)
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        revert with 0, 'AccessControl:only manager'
    require ext_code.size(ruleEngineAddress)
    call ruleEngineAddress.0x5f2df38f with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg5 != msg.value:
        revert with 0, 'DexManager: msg.value must equal fee parameter'
    mem[ceil32(ceil32(arg6.length)) + 101] = this.address
    require ext_code.size(address(arg7))
    staticcall address(arg7).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg6.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 97] = 100
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 133 len 28] = address(arg1) << 64
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 129 len 4] = unknown_0x23b872dd(?????)
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg7)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 293 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg4, 0
    mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 393] = 0
    call address(arg7) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg4, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg4, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg6.length:
                revert with arg6[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg6.length:
            require arg6.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 297] = this.address
        mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 329] = address(arg3)
        require ext_code.size(address(arg7))
        staticcall address(arg7).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg3)
        mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg4:
            mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 293 len ceil32(arg6.length)] = arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
            if ceil32(arg6.length) > arg6.length:
                mem[arg6.length + ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 293] = 0
            call address(arg2).mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 293 len 4] with:
               value arg5 wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 297 len arg6.length - 4]
        else:
            mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 297] = address(arg3)
            mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 329] = -1
            require ext_code.size(address(arg7))
            call address(arg7).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), -1
            mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 293 len ceil32(arg6.length)] = arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
            if ceil32(arg6.length) > arg6.length:
                mem[arg6.length + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 293] = 0
            call address(arg2).mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 293 len 4] with:
               value arg5 wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + 297 len arg6.length - 4]
    else:
        mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 325] == bool(mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 325])
            if not mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + 325]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = this.address
        mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = address(arg3)
        require ext_code.size(address(arg7))
        staticcall address(arg7).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg3)
        mem[ceil32(ceil32(arg6.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg4:
            mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294 len ceil32(arg6.length)] = arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
            if ceil32(arg6.length) > arg6.length:
                mem[arg6.length + ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294] = 0
            call address(arg2).mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294 len 4] with:
               value arg5 wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 298 len arg6.length - 4]
        else:
            mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 298] = address(arg3)
            mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = -1
            require ext_code.size(address(arg7))
            call address(arg7).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), -1
            mem[ceil32(ceil32(arg6.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 294 len ceil32(arg6.length)] = arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
            if ceil32(arg6.length) > arg6.length:
                mem[arg6.length + ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 294] = 0
            call address(arg2).mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 294 len 4] with:
               value arg5 wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg6.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 298 len arg6.length - 4]
    if not ext_call.success:
        revert with 0, 'DexManager: SWAP_CALL_FAILED'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    call address(arg1) with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'EthDexManager: Transfer failed.'
    require ext_code.size(address(arg7))
    staticcall address(arg7).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    emit 0xad671c9d: 0, arg4, 0, address(arg1), address(arg7), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
}

function sub_6fd403b4(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require arg6 == address(arg6)
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        revert with 0, 'AccessControl:only manager'
    require ext_code.size(ruleEngineAddress)
    call ruleEngineAddress.0x5f2df38f with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 != msg.value:
        revert with 0, 'DexManager: msg.value must equal fee parameter'
    if arg3 > deposits[address(arg1)]:
        revert with 0, 'EthDexManager: Not enough ETH deposited'
    if deposits[address(arg1)] < arg3:
        revert with 0, 17
    deposits[address(arg1)] -= arg3
    if arg4 > !arg3:
        revert with 0, 17
    mem[ceil32(ceil32(arg5.length)) + 101] = this.address
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg5.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 97 len ceil32(arg5.length)] = arg5[all], ext_call.return_data[arg5.length + -ceil32(ceil32(arg5.length)) + 31 len ceil32(arg5.length) - arg5.length]
    if ceil32(arg5.length) > arg5.length:
        mem[arg5.length + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 97] = 0
    call address(arg2).mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 97 len 4] with:
       value arg4 + arg3 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 101 len arg5.length - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'DexManager: SWAP_CALL_FAILED'
        mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 101] = this.address
        require ext_code.size(address(arg6))
        staticcall address(arg6).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 133] = address(arg1)
        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 97] = 68
        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 129 len 4] = unknown_0xa9059cbb(?????)
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg6)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 261 len 96] = 0, address(arg1), 0, 0
        call address(arg6) with:
           funct Mask(32, 224, 0, address(arg1), 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if arg5.length:
                    revert with arg5[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg5.length:
                require arg5.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 293] == bool(mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 293])
                if not mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 293]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xad671c9d: 0, arg3, 0, address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg6)
    mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 97] = return_data.size
    mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'DexManager: SWAP_CALL_FAILED'
    mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 102] = this.address
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 134] = address(arg1)
    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 98] = 68
    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 130 len 4] = unknown_0xa9059cbb(?????)
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg6)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 96] = 0, address(arg1), 0, 0
    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = 0
    call address(arg6) with:
       funct Mask(32, 224, 0, address(arg1), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(arg1), 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if arg5.length:
                revert with arg5[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg5.length:
            require arg5.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xad671c9d: 0, arg3, 0, address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg6)
    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = return_data.size
    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 263] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 267] = 32
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 299] = 32
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 331] = 'SafeERC20: low-level call failed'
        revert with memory
          from ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 263
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 263] = 0
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 295] = arg3
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 327] = 0
        emit 0xad671c9d: mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 263 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96], address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg6)
    require return_data.size >= 32
    require mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294] == bool(mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294])
    if mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294]:
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 263] = 0
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 295] = arg3
        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 327] = 0
        emit 0xad671c9d: mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 263 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96], address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg6)
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 263] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 267] = 32
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 299] = 42
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 331] = 'SafeERC20: ERC20 operation did n'
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 363] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 263
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
