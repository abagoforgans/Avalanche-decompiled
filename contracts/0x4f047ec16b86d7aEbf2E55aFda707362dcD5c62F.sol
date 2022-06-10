contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


mapping of struct roleAdmin;
uint256 totalMints;
uint8 isMintingEnabled;
uint256 tokenPrice;
address withdrawWalletAddress;
address upgradedToAddress;
address sub_2d4b44e4Address;
uint256 sub_1bf6db06;
uint256 sub_fbcd90bb;
address withdrawalAddress;

function sub_1bf6db06(?) {
    return sub_1bf6db06
}

function totalMints() {
    return totalMints
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2d4b44e4(?) {
    return sub_2d4b44e4Address
}

function isMintingEnabled() {
    return bool(isMintingEnabled)
}

function tokenPrice() {
    return tokenPrice
}

function withdrawWallet() {
    return withdrawWalletAddress
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function upgradedToAddress() {
    return upgradedToAddress
}

function withdrawalAddress() {
    return withdrawalAddress
}

function sub_fbcd90bb(?) {
    return sub_fbcd90bb
}

function _fallback() payable {
    revert
}

function sub_bc18c216(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'GT1MDist: Caller is not a admin'
    tokenPrice = arg1
}

function upgrade(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'GT1MDist: Caller is not a admin'
    upgradedToAddress = arg1
}

function sub_b53859d1(?) {
    require calldata.size - 4 >= 64
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'GT1MDist: Caller is not a admin'
    sub_1bf6db06 = arg1
    sub_fbcd90bb = arg2
    return 1
}

function setMintingEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'GT1MDist: Caller is not a admin'
    isMintingEnabled = uint8(arg1)
}

function sub_53a96cb7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'GT1MDist: Caller is not a admin'
    sub_2d4b44e4Address = address(arg1)
    return 1
}

function updatePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'GT1MDist: Caller is not admin'
    if arg1 <= 0:
        revert with 0, 'CGT1MDist: price invalid'
    tokenPrice = arg1
}

function setWithdrawWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'GT1MDist: Caller is not a admin'
    if not arg1:
        revert with 0, 'CGT1MDist: null address'
    withdrawalAddress = arg1
    return 1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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

function sub_00299cfa(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'GT1MDist: Caller is not a admin'
    if not address(arg1):
        revert with 0, 'GT1MDist: null address'
    if arg2 > eth.balance(this.address):
        revert with 0, 'GT1MDist: amount invalid'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GT1MDist: Number of tokens cannot be zero'
    if upgradedToAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GT1MDist: Contract has been upgraded to a new address'
    if not isMintingEnabled:
        revert with 0, 'GT1MDist: Minting paused'
    if tokenPrice and arg1 > -1 / tokenPrice:
        revert with 0, 17
    if msg.value < tokenPrice * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GT1MDist: Insufficient amount provided'
    if sub_1bf6db06 > !arg1:
        revert with 0, 17
    if sub_1bf6db06 + arg1 > sub_fbcd90bb:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GT1MDist: Dist Maximum cap reached'
    idx = 0
    while idx < arg1:
        if sub_1bf6db06 == -1:
            revert with 0, 17
        sub_1bf6db06++
        if totalMints == -1:
            revert with 0, 17
        totalMints++
        mem[96] = 0x156e29f600000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = sub_1bf6db06
        mem[164] = 0
        require ext_code.size(sub_2d4b44e4Address)
        call sub_2d4b44e4Address.mint(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, sub_1bf6db06, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}



}
