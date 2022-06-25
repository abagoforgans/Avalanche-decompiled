contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const BRIDGE_ROLE = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
address _bridgeAddress;
address sub_0ab75d3eAddress;
address sub_5db99af2Address;
uint8 feeStatus; offset 160
uint128 stor154; offset 160
address _WETHAddress;
address feeManagerAddress;
address _reserveAddress;
mapping of address sub_35d0d5dc;
mapping of uint256 _tokenContract;
mapping of uint8 stor159;
mapping of uint8 stor160;
mapping of struct depositRecord;
mapping of uint8 sub_a6fd91ee;
mapping of uint256 sub_97e76aab;

function sub_0ab75d3e(?) {
    return sub_0ab75d3eAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function _bridgeAddress() {
    return _bridgeAddress
}

function sub_35d0d5dc(?) {
    require calldata.size - 4 >= 32
    return sub_35d0d5dc[arg1]
}

function _reserve() {
    return _reserveAddress
}

function sub_5db99af2(?) {
    return sub_5db99af2Address
}

function _burnList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor160[arg1])
}

function _contractWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor159[arg1])
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_97e76aab(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint64(arg2)
    return sub_97e76aab[arg1][arg2]
}

function sub_a6fd91ee(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    return sub_a6fd91ee[arg1][arg2]
}

function getDepositRecord(uint64 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return depositRecord[arg2 << 248][arg1 << 192].field_0, 
           depositRecord[arg2 << 248][arg1 << 192].field_0,
           depositRecord[arg2 << 248][arg1 << 192].field_256,
           depositRecord[arg2 << 248][arg1 << 192].field_512,
           depositRecord[arg2 << 248][arg1 << 192].field_768,
           depositRecord[arg2 << 248][arg1 << 192].field_1024,
           depositRecord[arg2 << 248][arg1 << 192].field_1280,
           depositRecord[arg2 << 248][arg1 << 192].field_1536,
           depositRecord[arg2 << 248][arg1 << 192].field_1792,
           depositRecord[arg2 << 248][arg1 << 192].field_2048,
           depositRecord[arg2 << 248][arg1 << 192].field_2304,
           depositRecord[arg2 << 248][arg1 << 192].field_2560,
           depositRecord[arg2 << 248][arg1 << 192].field_2816,
           depositRecord[arg2 << 248][arg1 << 192].field_3072,
           depositRecord[arg2 << 248][arg1 << 192].field_3328
}

function _tokenContractAddressToResourceID(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _tokenContract[arg1]
}

function feeManager() {
    return feeManagerAddress
}

function sub_d3ff209d(?) {
    return bool(feeStatus)
}

function getFeeStatus() {
    return bool(feeStatus)
}

function _WETH() {
    return _WETHAddress
}

function _fallback() payable {
    revert
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

function sub_ad527b21(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(_reserveAddress)
    staticcall _reserveAddress.0xad527b21 with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBridgeFee(uint8 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(feeManagerAddress)
    staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function setReserve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        _reserveAddress = arg1
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

function setFeeManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        feeManagerAddress = arg1
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

function toggleFeeStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        stor154 = Mask(96, 0, arg1)
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function setOneSplitAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Handler: contractAddress cannot be null'
        sub_0ab75d3eAddress = arg1
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function setBurnable(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        if not stor159[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'provided contract is not whitelisted'
        stor160[address(arg1)] = uint8(arg2)
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function sub_359d8601(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        if not stor159[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'provided contract is not whitelisted'
        sub_a6fd91ee[address(arg1)][arg2 << 248] = uint8(arg3)
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function setResource(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
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
            s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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
    if not arg2:
        revert with 0, 'contract address can't be zero'
    sub_35d0d5dc[arg1] = arg2
    _tokenContract[address(arg2)] = arg1
    stor159[address(arg2)] = 1
}

function stake(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0xbf6eac2f with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function unstake(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0x60829f8a with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function unstakeETH(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0xdc965582 with:
             gas gas_remaining wei
            args 0, 0, address(arg2), arg3, _WETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function setLiquidityPoolOwner(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0x2dd35dae with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function withdraw(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        require ext_code.size(_reserveAddress)
        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function withdrawFees(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        require ext_code.size(feeManagerAddress)
        call feeManagerAddress.withdrawFee(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function setBridgeFee(uint8 arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        require ext_code.size(feeManagerAddress)
        call feeManagerAddress.0x7d42bfa8 with:
             gas gas_remaining wei
            args 0, 0, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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

function stakeETH(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
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
            s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
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
    require ext_code.size(_WETHAddress)
    call _WETHAddress.0xa9059cbb with:
         gas gas_remaining wei
        args _reserveAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 1
    require ext_code.size(_reserveAddress)
    call _reserveAddress.0xf4e480e1 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_536187d6(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if not sub_a6fd91ee[address(arg1)][arg2 << 248]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Decimals not set for token and chain id'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if sub_a6fd91ee[address(arg1)][arg2 << 248] == ext_call.return_data[31 len 1]:
        return arg3
    if ext_call.return_data[31 len 1] <= sub_a6fd91ee[address(arg1)][arg2 << 248]:
        if sub_a6fd91ee[address(arg1)][arg2 << 248] < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(sub_a6fd91ee[address(arg1)][arg2 << 248] - ext_call.return_data[31 len 1]):
            if arg3 and 1 > -1 / arg3:
                revert with 0, 17
            return arg3
        if bool(bool(uint8(sub_a6fd91ee[address(arg1)][arg2 << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[address(arg1)][arg2 << 248] - ext_call.return_data[31 len 1]) < 32)):
            if 10^uint8(sub_a6fd91ee[address(arg1)][arg2 << 248] - ext_call.return_data[31 len 1]) > -1:
                revert with 0, 17
            if arg3 and 10^uint8(sub_a6fd91ee[address(arg1)][arg2 << 248] - ext_call.return_data[31 len 1]) > -1 / arg3:
                revert with 0, 17
            return (arg3 * 10^uint8(sub_a6fd91ee[address(arg1)][arg2 << 248] - ext_call.return_data[31 len 1]))
        if var45005 > 1:
            s = var45001
            t = var45002
            u = var45005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg3 and s * s * t > -1 / arg3:
                        revert with 0, 17
                    return (arg3 * s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg3 and s * s * s * t > -1 / arg3:
                    revert with 0, 17
                return (arg3 * s * s * s * t)
            revert with 0, 17
        if var45002 > -1 / var45001:
            revert with 0, 17
        if arg3 and var45001 * var45002 > -1 / arg3:
            revert with 0, 17
        return (arg3 * var45001 * var45002)
    if ext_call.return_data[31 len 1] < sub_a6fd91ee[address(arg1)][arg2 << 248]:
        revert with 0, 17
    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[address(arg1)][arg2 << 248]):
        return arg3
    if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[address(arg1)][arg2 << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[address(arg1)][arg2 << 248]) < 32)):
        if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[address(arg1)][arg2 << 248]) > -1:
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[address(arg1)][arg2 << 248]):
            revert with 0, 18
        return (arg3 / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[address(arg1)][arg2 << 248]))
    if var45005 > 1:
        s = var45001
        t = var45002
        u = var45005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if not s * s * t:
                    revert with 0, 18
                return (arg3 / s * s * t)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if not s * s * s * t:
                revert with 0, 18
            return (arg3 / s * s * s * t)
        revert with 0, 17
    if var45002 > -1 / var45001:
        revert with 0, 17
    if not var45001 * var45002:
        revert with 0, 18
    return (arg3 / var45001 * var45002)
}

function sub_9680504c(?) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == uint8(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if not roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0x3c94d19e with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 160) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 192, arg3 << 248, address(arg4), address(arg5)
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 294] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 326 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 160) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 326] = 0
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0x3c94d19e with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 326 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 192, arg3 << 248, address(arg4), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor159[ext_call.return_data[12 len 20]] = 1
    if not stor159[address(ext_call.return_data[0])]:
        revert with 0, 'provided contract is not whitelisted'
    stor160[address(ext_call.return_data[0])] = 1
}

function sub_eae9befc(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 100).length) + 97 < 96 or floor32(('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    t = 128
    idx = 0
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 132).length) + 98 < 97 or floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 100).length) + 97] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 164).length) + 99 < 98 or floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 99 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98] = ('cd', 164).length
    require calldata.size >= cd[164] + (32 * ('cd', 164).length) + 36
    idx = 0
    s = cd[164] + 36
    t = floor32(('cd', 100).length) + floor32(('cd', 132).length) + 130
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        revert with 0, 'Initializable: contract is not initializing'
    if ext_code.size(this.address):
        revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        revert with 0, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e, msg.sender, msg.sender);
    feeStatus = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    if ('cd', 100).length != ('cd', 132).length:
        revert with 0, 'initialResourceIDs & initialContractAddresses len mismatch'
    _bridgeAddress = address(cd[4])
    sub_5db99af2Address = address(cd[36])
    _WETHAddress = address(cd[68])
    idx = 0
    while idx < ('cd', 100).length:
        if idx >= ('cd', 100).length:
            revert with 0, 50
        if idx >= ('cd', 132).length:
            revert with 0, 50
        if not mem[(32 * idx) + floor32(('cd', 100).length) + 141 len 20]:
            revert with 0, 'contract address can't be zero'
        sub_35d0d5dc[mem[(32 * idx) + 128]] = mem[(32 * idx) + floor32(('cd', 100).length) + 141 len 20]
        mem[0] = mem[(32 * idx) + floor32(('cd', 100).length) + 141 len 20]
        _tokenContract[address(mem[(32 * idx) + floor32(('cd', 100).length) + 129])] = mem[(32 * idx) + 128]
        mem[32] = 159
        stor159[address(mem[(32 * idx) + floor32(('cd', 100).length) + 129])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 164).length:
        if idx >= ('cd', 164).length:
            revert with 0, 50
        if not stor159[mem[(32 * idx) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 142 len 20]]:
            revert with 0, 'provided contract is not whitelisted'
        mem[0] = mem[(32 * idx) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 142 len 20]
        mem[32] = 160
        stor160[address(mem[(32 * idx) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 130])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function sub_78d92eb0(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 736
    require ('cd', 4).length == address(('cd', 4).length)
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] == uint64(('cd', 4)[0])
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] == address(('cd', 4)[3])
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] == address(('cd', 4)[4])
    mem[256] = ('cd', 4)[4]
    require ('cd', 4)[5] == address(('cd', 4)[5])
    mem[288] = ('cd', 4)[5]
    mem[320] = ('cd', 4)[6]
    mem[352] = ('cd', 4)[7]
    mem[384] = ('cd', 4)[8]
    mem[416] = ('cd', 4)[9]
    mem[448] = ('cd', 4)[10]
    mem[480] = ('cd', 4)[11]
    mem[512] = ('cd', 4)[12]
    require ('cd', 4)[13] == Mask(160, 96, ('cd', 4)[13])
    mem[544] = ('cd', 4)[13]
    require ('cd', 4)[14] == address(('cd', 4)[14])
    mem[576] = ('cd', 4)[14]
    require ('cd', 4)[15] == Mask(160, 96, ('cd', 4)[15])
    mem[608] = ('cd', 4)[15]
    require ('cd', 4)[16] == address(('cd', 4)[16])
    require ('cd', 4)[17] <= test266151307()
    require cd[4] + ('cd', 4)[17] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[17] + 4)] > test266151307():
        revert with 0, 65
    if floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833 < 832 or floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833 > test266151307():
        revert with 0, 65
    mem[832] = cd[(cd[4] + ('cd', 4)[17] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[17] + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[17] + 36
    t = 864
    while idx < cd[(cd[4] + ('cd', 4)[17] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[672] = 832
    require ('cd', 4)[18] <= test266151307()
    require cd[4] + ('cd', 4)[18] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[18] + 4)] > test266151307():
        revert with 0, 65
    if floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 834 < 833 or floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 834 > test266151307():
        revert with 0, 65
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833] = cd[(cd[4] + ('cd', 4)[18] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[18] + (32 * cd[(cd[4] + ('cd', 4)[18] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[18] + 36
    t = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 865
    while idx < cd[(cd[4] + ('cd', 4)[18] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[704] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833
    require ('cd', 4)[19] <= test266151307()
    require cd[4] + ('cd', 4)[19] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[19] + 4)] > test266151307():
        revert with 0, 65
    if floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 835 < 834 or floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 835 > test266151307():
        revert with 0, 65
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 834] = cd[(cd[4] + ('cd', 4)[19] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[19] + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[19] + 36
    t = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 866
    while idx < cd[(cd[4] + ('cd', 4)[19] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[736] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 834
    require ('cd', 4)[20] == address(('cd', 4)[20])
    mem[768] = ('cd', 4)[20]
    require ('cd', 4)[21] == bool(('cd', 4)[21])
    mem[800] = ('cd', 4)[21]
    if not roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 867 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 963 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    mem[640] = sub_35d0d5dc[cd[36]]
    if not stor159[stor157[cd[36]]]:
        revert with 0, 'provided tokenAddress is not whitelisted'
    if Mask(64, 96, ('cd', 4)[15]) >> 96 == sub_35d0d5dc[cd[36]]:
        if stor160[address(('cd', 4)[15]) >> 96]:
            require ext_code.size(_reserveAddress)
            call _reserveAddress.mintERC20(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), ('cd', 4)[8]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
            return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
        require ext_code.size(sub_35d0d5dc[cd[36]])
        staticcall sub_35d0d5dc[cd[36]].0x70a08231 with:
                gas gas_remaining wei
               args _reserveAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_reserveAddress)
        if ext_call.return_data[0] >= ('cd', 4)[8]:
            if _WETHAddress != sub_35d0d5dc[cd[36]]:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
            else:
                if not ('cd', 4)[21]:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
                else:
                    call _reserveAddress.0x93113b5c with:
                         gas gas_remaining wei
                        args _WETHAddress, ('cd', 4)[8]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(('cd', 4)[3]), ('cd', 4)[8]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
            return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
        call _reserveAddress.0x5739ac7a with:
             gas gas_remaining wei
            args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0x5fae9245 with:
             gas gas_remaining wei
            args sub_35d0d5dc[cd[36]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
        return address(ext_call.return_data[0]), ('cd', 4)[8]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 839] = sub_35d0d5dc[cd[36]]
    require ext_code.size(_reserveAddress)
    call _reserveAddress.0x5fae9245 with:
         gas gas_remaining wei
        args sub_35d0d5dc[cd[36]]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 835] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 835
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(('cd', 4)[15]) >> 96:
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0x5739ac7a with:
             gas gas_remaining wei
            args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
        return Mask(64, 96, ('cd', 4)[15]) >> 96, ('cd', 4)[8]
    mem[0] = sub_35d0d5dc[cd[36]]
    mem[32] = 160
    if stor160[stor157[cd[36]]]:
        if cd[(cd[4] + ('cd', 4)[19] + 4)] <= 2:
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 835] = 0x47c07e8800000000000000000000000000000000000000000000000000000000
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 839] = sub_35d0d5dc[cd[36]]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 871] = sub_0ab75d3eAddress
            require ext_code.size(_reserveAddress)
            call _reserveAddress.mintERC20(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args sub_35d0d5dc[cd[36]], sub_0ab75d3eAddress, ('cd', 4)[8]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(cd[4] + ('cd', 4)[19] + 4)] <= 2:
                if 0 >= cd[(cd[4] + ('cd', 4)[18] + 4)]:
                    revert with 0, 50
                _7007 = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 865]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 871] = sub_0ab75d3eAddress
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 903] = sub_35d0d5dc[cd[36]]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 935] = Mask(64, 96, ('cd', 4)[15]) >> 96
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 967] = ('cd', 4)[8]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 999] = ('cd', 4)[9]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1031] = 224
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1095] = cd[(cd[4] + ('cd', 4)[17] + 4)]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1127 len 32 * cd[(cd[4] + ('cd', 4)[17] + 4)]] = mem[864 len 32 * cd[(cd[4] + ('cd', 4)[17] + 4)]]
                var133001 = cd[(cd[4] + ('cd', 4)[17] + 4)]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1127 len floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291)] = 0, sub_0ab75d3eAddress, sub_35d0d5dc[cd[36]], Mask(64, 96, ('cd', 4)[15]) << 96, ('cd', 4)[8], ('cd', 4)[9], 224, _7007, cd[(cd[4] + ('cd', 4)[17] + 4)], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1127 len floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291) - 260]
                if floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291) > (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 260:
                    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (64 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1387] = 0
                call _reserveAddress with:
                   funct Mask(32, 224, (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 260) >> 224
                     gas gas_remaining wei
                    args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1131 len (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 256]
                if not return_data.size:
                    if not ext_call.success:
                        require ext_code.size(sub_0ab75d3eAddress)
                        call sub_0ab75d3eAddress.0xd9caed12 with:
                             gas gas_remaining wei
                            args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                        return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
                    require ('cd', 4).length >= 32
                    require ext_code.size(_reserveAddress)
                    if _WETHAddress != address(('cd', 4)[15]) >> 96:
                        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), ('cd', 4)[0]
                    else:
                        if not ('cd', 4)[21]:
                            call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), ('cd', 4)[0]
                        else:
                            call _reserveAddress.0x93113b5c with:
                                 gas gas_remaining wei
                                args _WETHAddress, ('cd', 4)[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(_reserveAddress)
                            call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(('cd', 4)[3]), ('cd', 4)[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                    return Mask(64, 96, ('cd', 4)[15]) >> 96, ('cd', 4)[0]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require ext_code.size(sub_0ab75d3eAddress)
                    call sub_0ab75d3eAddress.0xd9caed12 with:
                         gas gas_remaining wei
                        args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                    return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
                require return_data.size >= 32
                require ext_code.size(_reserveAddress)
                if _WETHAddress != address(('cd', 4)[15]) >> 96:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
                else:
                    if not ('cd', 4)[21]:
                        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
                    else:
                        call _reserveAddress.0x93113b5c with:
                             gas gas_remaining wei
                            args _WETHAddress, mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(_reserveAddress)
                        call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                return Mask(64, 96, ('cd', 4)[15]) >> 96, 
                       mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 871] = sub_0ab75d3eAddress
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 903] = 192
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1063] = cd[(cd[4] + ('cd', 4)[19] + 4)]
            idx = 0
            s = mem[64] + 260
            t = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 866
            while idx < cd[(cd[4] + ('cd', 4)[19] + 4)]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 935] = ('cd', 4)[8]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 967] = ('cd', 4)[9]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 999] = (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 224
            _9166 = mem[832]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 1095] = mem[832]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 1127 len 32 * mem[832]] = mem[864 len 32 * mem[832]]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1031] = (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 256
            _11191 = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 1127] = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 1159 len 32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]] = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 865 len 32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]]
            _13208 = mem[64]
            mem[mem[64]] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + (32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]) + -mem[64] + 1127
            mem[64] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1159
            mem[_13208 + 32 len 4] = 2376471303
            _13217 = mem[_13208]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1159 len ceil32(mem[_13208])] = mem[_13208 + 32 len ceil32(mem[_13208])]
            if ceil32(_13217) > _13217:
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + _13217 + 1159] = 0
            call _reserveAddress.mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1159 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1163 len _13217 - 4]
            if not return_data.size:
                if not ext_call.success:
                    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1163] = mem[652 len 20]
                    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1195] = mem[236 len 20]
                    require ext_code.size(sub_0ab75d3eAddress)
                    call sub_0ab75d3eAddress.0xd9caed12 with:
                         gas gas_remaining wei
                        args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1163 len 64], mem[384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    sub_97e76aab[mem[160]][mem[128] << 192] = block.number
                    return mem[652 len 20], mem[384]
                require mem[96] >= 32
                require ext_code.size(_reserveAddress)
                if _WETHAddress != address(mem[608]) >> 96:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[620], mem[236 len 20], mem[128]
                else:
                    if not mem[800]:
                        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args mem[620], mem[236 len 20], mem[128]
                    else:
                        call _reserveAddress.0x93113b5c with:
                             gas gas_remaining wei
                            args _WETHAddress, mem[128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(_reserveAddress)
                        call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[236 len 20], mem[128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_97e76aab[mem[160]][mem[128] << 192] = block.number
                return mem[620 len 8], mem[128]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1191 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + ceil32(return_data.size) + 1164] = mem[652 len 20]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + ceil32(return_data.size) + 1196] = mem[236 len 20]
                require ext_code.size(sub_0ab75d3eAddress)
                call sub_0ab75d3eAddress.0xd9caed12 with:
                     gas gas_remaining wei
                    args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + ceil32(return_data.size) + 1164 len 64], mem[384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_97e76aab[mem[160]][mem[128] << 192] = block.number
                return mem[652 len 20], mem[384]
            require return_data.size >= 32
            require ext_code.size(_reserveAddress)
            if _WETHAddress != address(mem[608]) >> 96:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[620], mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1191]
            else:
                if not mem[800]:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[620], mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1191]
                else:
                    call _reserveAddress.0x93113b5c with:
                         gas gas_remaining wei
                        args _WETHAddress, mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1191]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1191]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_97e76aab[mem[160]][mem[128] << 192] = block.number
            return mem[620 len 8], 
                   mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9166) + (32 * _11191) + 1191]
        if cd[(cd[4] + ('cd', 4)[19] + 4)] < 1:
            revert with 0, 17
        if cd[(cd[4] + ('cd', 4)[19] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[19] + 4)]:
            revert with 0, 50
        if mem[(32 * cd[(cd[4] + ('cd', 4)[19] + 4)] - 1) + floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 878 len 20] != address(('cd', 4)[15]) >> 96:
            require ext_code.size(_reserveAddress)
            call _reserveAddress.mintERC20(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
            return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 835] = 0x47c07e8800000000000000000000000000000000000000000000000000000000
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 839] = sub_35d0d5dc[cd[36]]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 871] = sub_0ab75d3eAddress
        require ext_code.size(_reserveAddress)
        call _reserveAddress.mintERC20(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_35d0d5dc[cd[36]], sub_0ab75d3eAddress, ('cd', 4)[8]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if cd[(cd[4] + ('cd', 4)[19] + 4)] <= 2:
            if 0 >= cd[(cd[4] + ('cd', 4)[18] + 4)]:
                revert with 0, 50
            _7087 = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 865]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 871] = sub_0ab75d3eAddress
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 903] = sub_35d0d5dc[cd[36]]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 935] = Mask(64, 96, ('cd', 4)[15]) >> 96
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 967] = ('cd', 4)[8]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 999] = ('cd', 4)[9]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1031] = 224
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1095] = cd[(cd[4] + ('cd', 4)[17] + 4)]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1127 len 32 * cd[(cd[4] + ('cd', 4)[17] + 4)]] = mem[864 len 32 * cd[(cd[4] + ('cd', 4)[17] + 4)]]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1127 len floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291)] = 0, sub_0ab75d3eAddress, sub_35d0d5dc[cd[36]], Mask(64, 96, ('cd', 4)[15]) << 96, ('cd', 4)[8], ('cd', 4)[9], 224, _7087, cd[(cd[4] + ('cd', 4)[17] + 4)], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1127 len floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291) - 260]
            if floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291) > (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 260:
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (64 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1387] = 0
            call _reserveAddress with:
               funct Mask(32, 224, (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 260) >> 224
                 gas gas_remaining wei
                args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1131 len (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 256]
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(sub_0ab75d3eAddress)
                    call sub_0ab75d3eAddress.0xd9caed12 with:
                         gas gas_remaining wei
                        args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                    return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
                require ('cd', 4).length >= 32
                require ext_code.size(_reserveAddress)
                if _WETHAddress != address(('cd', 4)[15]) >> 96:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), ('cd', 4)[0]
                else:
                    if not ('cd', 4)[21]:
                        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), ('cd', 4)[0]
                    else:
                        call _reserveAddress.0x93113b5c with:
                             gas gas_remaining wei
                            args _WETHAddress, ('cd', 4)[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(_reserveAddress)
                        call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(('cd', 4)[3]), ('cd', 4)[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                return Mask(64, 96, ('cd', 4)[15]) >> 96, ('cd', 4)[0]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(sub_0ab75d3eAddress)
                call sub_0ab75d3eAddress.0xd9caed12 with:
                     gas gas_remaining wei
                    args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
            require return_data.size >= 32
            require ext_code.size(_reserveAddress)
            if _WETHAddress != address(('cd', 4)[15]) >> 96:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
            else:
                if not ('cd', 4)[21]:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
                else:
                    call _reserveAddress.0x93113b5c with:
                         gas gas_remaining wei
                        args _WETHAddress, mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
            return Mask(64, 96, ('cd', 4)[15]) >> 96, 
                   mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 871] = sub_0ab75d3eAddress
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 903] = 192
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1063] = cd[(cd[4] + ('cd', 4)[19] + 4)]
        idx = 0
        s = mem[64] + 260
        t = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 866
        while idx < cd[(cd[4] + ('cd', 4)[19] + 4)]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 935] = ('cd', 4)[8]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 967] = ('cd', 4)[9]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 999] = (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 224
        _9167 = mem[832]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 1095] = mem[832]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 1127 len 32 * mem[832]] = mem[864 len 32 * mem[832]]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 1031] = (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 256
        _11192 = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 1127] = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 1159 len 32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]] = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 865 len 32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]]
        _13211 = mem[64]
        mem[mem[64]] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + (32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]) + -mem[64] + 1127
        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1159
        mem[_13211 + 32 len 4] = 2376471303
        _13218 = mem[_13211]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1159 len ceil32(mem[_13211])] = mem[_13211 + 32 len ceil32(mem[_13211])]
        if ceil32(_13218) > _13218:
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + _13218 + 1159] = 0
        call _reserveAddress.mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1159 len 4] with:
             gas gas_remaining wei
            args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1163 len _13218 - 4]
        if not return_data.size:
            if not ext_call.success:
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1163] = mem[652 len 20]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1195] = mem[236 len 20]
                require ext_code.size(sub_0ab75d3eAddress)
                call sub_0ab75d3eAddress.0xd9caed12 with:
                     gas gas_remaining wei
                    args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1163 len 64], mem[384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_97e76aab[mem[160]][mem[128] << 192] = block.number
                return mem[652 len 20], mem[384]
            require mem[96] >= 32
            require ext_code.size(_reserveAddress)
            if _WETHAddress != address(mem[608]) >> 96:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[620], mem[236 len 20], mem[128]
            else:
                if not mem[800]:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[620], mem[236 len 20], mem[128]
                else:
                    call _reserveAddress.0x93113b5c with:
                         gas gas_remaining wei
                        args _WETHAddress, mem[128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[236 len 20], mem[128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_97e76aab[mem[160]][mem[128] << 192] = block.number
            return mem[620 len 8], mem[128]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1191 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + ceil32(return_data.size) + 1164] = mem[652 len 20]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + ceil32(return_data.size) + 1196] = mem[236 len 20]
            require ext_code.size(sub_0ab75d3eAddress)
            call sub_0ab75d3eAddress.0xd9caed12 with:
                 gas gas_remaining wei
                args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + ceil32(return_data.size) + 1164 len 64], mem[384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            sub_97e76aab[mem[160]][mem[128] << 192] = block.number
            return mem[652 len 20], mem[384]
        require return_data.size >= 32
        require ext_code.size(_reserveAddress)
        if _WETHAddress != address(mem[608]) >> 96:
            call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[620], mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1191]
        else:
            if not mem[800]:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[620], mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1191]
            else:
                call _reserveAddress.0x93113b5c with:
                     gas gas_remaining wei
                    args _WETHAddress, mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1191]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(_reserveAddress)
                call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1191]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_97e76aab[mem[160]][mem[128] << 192] = block.number
        return mem[620 len 8], 
               mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9167) + (32 * _11192) + 1191]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 839] = _reserveAddress
    require ext_code.size(sub_35d0d5dc[cd[36]])
    staticcall sub_35d0d5dc[cd[36]].0x70a08231 with:
            gas gas_remaining wei
           args _reserveAddress
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + ceil32(return_data.size) + 835] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 835
    require return_data.size >= 32
    if ext_call.return_data[0] < ('cd', 4)[8]:
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0x5739ac7a with:
             gas gas_remaining wei
            args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0x5fae9245 with:
             gas gas_remaining wei
            args sub_35d0d5dc[cd[36]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
        return address(ext_call.return_data[0]), ('cd', 4)[8]
    if cd[(cd[4] + ('cd', 4)[19] + 4)] <= 2:
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 835] = 0x6cd533d800000000000000000000000000000000000000000000000000000000
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 839] = sub_35d0d5dc[cd[36]]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 871] = sub_0ab75d3eAddress
        require ext_code.size(_reserveAddress)
        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_35d0d5dc[cd[36]], sub_0ab75d3eAddress, ('cd', 4)[8]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if cd[(cd[4] + ('cd', 4)[19] + 4)] <= 2:
            if 0 >= cd[(cd[4] + ('cd', 4)[18] + 4)]:
                revert with 0, 50
            _7091 = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 865]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 871] = sub_0ab75d3eAddress
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 903] = sub_35d0d5dc[cd[36]]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 935] = Mask(64, 96, ('cd', 4)[15]) >> 96
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 967] = ('cd', 4)[8]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 999] = ('cd', 4)[9]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1031] = 224
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1095] = cd[(cd[4] + ('cd', 4)[17] + 4)]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1127 len 32 * cd[(cd[4] + ('cd', 4)[17] + 4)]] = mem[864 len 32 * cd[(cd[4] + ('cd', 4)[17] + 4)]]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1127 len floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291)] = 0, sub_0ab75d3eAddress, sub_35d0d5dc[cd[36]], Mask(64, 96, ('cd', 4)[15]) << 96, ('cd', 4)[8], ('cd', 4)[9], 224, _7091, cd[(cd[4] + ('cd', 4)[17] + 4)], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1127 len floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291) - 260]
            if floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291) > (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 260:
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (64 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1387] = 0
            call _reserveAddress with:
               funct Mask(32, 224, (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 260) >> 224
                 gas gas_remaining wei
                args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1131 len (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 256]
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(sub_0ab75d3eAddress)
                    call sub_0ab75d3eAddress.0xd9caed12 with:
                         gas gas_remaining wei
                        args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                    return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
                require ('cd', 4).length >= 32
                require ext_code.size(_reserveAddress)
                if _WETHAddress != address(('cd', 4)[15]) >> 96:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), ('cd', 4)[0]
                else:
                    if not ('cd', 4)[21]:
                        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), ('cd', 4)[0]
                    else:
                        call _reserveAddress.0x93113b5c with:
                             gas gas_remaining wei
                            args _WETHAddress, ('cd', 4)[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(_reserveAddress)
                        call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(('cd', 4)[3]), ('cd', 4)[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                return Mask(64, 96, ('cd', 4)[15]) >> 96, ('cd', 4)[0]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(sub_0ab75d3eAddress)
                call sub_0ab75d3eAddress.0xd9caed12 with:
                     gas gas_remaining wei
                    args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
            require return_data.size >= 32
            require ext_code.size(_reserveAddress)
            if _WETHAddress != address(('cd', 4)[15]) >> 96:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
            else:
                if not ('cd', 4)[21]:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
                else:
                    call _reserveAddress.0x93113b5c with:
                         gas gas_remaining wei
                        args _WETHAddress, mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
            return Mask(64, 96, ('cd', 4)[15]) >> 96, 
                   mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 871] = sub_0ab75d3eAddress
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 903] = 192
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1063] = cd[(cd[4] + ('cd', 4)[19] + 4)]
        idx = 0
        s = mem[64] + 260
        t = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 866
        while idx < cd[(cd[4] + ('cd', 4)[19] + 4)]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 935] = ('cd', 4)[8]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 967] = ('cd', 4)[9]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 999] = (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 224
        _9164 = mem[832]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 1095] = mem[832]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 1127 len 32 * mem[832]] = mem[864 len 32 * mem[832]]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1031] = (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 256
        _11189 = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 1127] = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 1159 len 32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]] = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 865 len 32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]]
        _13202 = mem[64]
        mem[mem[64]] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + (32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]) + -mem[64] + 1127
        mem[64] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1159
        mem[_13202 + 32 len 4] = 2376471303
        _13215 = mem[_13202]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1159 len ceil32(mem[_13202])] = mem[_13202 + 32 len ceil32(mem[_13202])]
        if ceil32(_13215) > _13215:
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + _13215 + 1159] = 0
        call _reserveAddress.mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1159 len 4] with:
             gas gas_remaining wei
            args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1163 len _13215 - 4]
        if not return_data.size:
            if not ext_call.success:
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1163] = mem[652 len 20]
                mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1195] = mem[236 len 20]
                require ext_code.size(sub_0ab75d3eAddress)
                call sub_0ab75d3eAddress.0xd9caed12 with:
                     gas gas_remaining wei
                    args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1163 len 64], mem[384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_97e76aab[mem[160]][mem[128] << 192] = block.number
                return mem[652 len 20], mem[384]
            require mem[96] >= 32
            require ext_code.size(_reserveAddress)
            if _WETHAddress != address(mem[608]) >> 96:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[620], mem[236 len 20], mem[128]
            else:
                if not mem[800]:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[620], mem[236 len 20], mem[128]
                else:
                    call _reserveAddress.0x93113b5c with:
                         gas gas_remaining wei
                        args _WETHAddress, mem[128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[236 len 20], mem[128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_97e76aab[mem[160]][mem[128] << 192] = block.number
            return mem[620 len 8], mem[128]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1191 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + ceil32(return_data.size) + 1164] = mem[652 len 20]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + ceil32(return_data.size) + 1196] = mem[236 len 20]
            require ext_code.size(sub_0ab75d3eAddress)
            call sub_0ab75d3eAddress.0xd9caed12 with:
                 gas gas_remaining wei
                args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + ceil32(return_data.size) + 1164 len 64], mem[384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            sub_97e76aab[mem[160]][mem[128] << 192] = block.number
            return mem[652 len 20], mem[384]
        require return_data.size >= 32
        require ext_code.size(_reserveAddress)
        if _WETHAddress != address(mem[608]) >> 96:
            call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[620], mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1191]
        else:
            if not mem[800]:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[620], mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1191]
            else:
                call _reserveAddress.0x93113b5c with:
                     gas gas_remaining wei
                    args _WETHAddress, mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1191]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(_reserveAddress)
                call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1191]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_97e76aab[mem[160]][mem[128] << 192] = block.number
        return mem[620 len 8], 
               mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9164) + (32 * _11189) + 1191]
    if cd[(cd[4] + ('cd', 4)[19] + 4)] < 1:
        revert with 0, 17
    if cd[(cd[4] + ('cd', 4)[19] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[19] + 4)]:
        revert with 0, 50
    if mem[(32 * cd[(cd[4] + ('cd', 4)[19] + 4)] - 1) + floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 878 len 20] != address(('cd', 4)[15]) >> 96:
        require ext_code.size(_reserveAddress)
        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
        return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 835] = 0x6cd533d800000000000000000000000000000000000000000000000000000000
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 839] = sub_35d0d5dc[cd[36]]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 871] = sub_0ab75d3eAddress
    require ext_code.size(_reserveAddress)
    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args sub_35d0d5dc[cd[36]], sub_0ab75d3eAddress, ('cd', 4)[8]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if cd[(cd[4] + ('cd', 4)[19] + 4)] <= 2:
        if 0 >= cd[(cd[4] + ('cd', 4)[18] + 4)]:
            revert with 0, 50
        _7147 = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 865]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 871] = sub_0ab75d3eAddress
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 903] = sub_35d0d5dc[cd[36]]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 935] = Mask(64, 96, ('cd', 4)[15]) >> 96
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 967] = ('cd', 4)[8]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 999] = ('cd', 4)[9]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1031] = 224
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1095] = cd[(cd[4] + ('cd', 4)[17] + 4)]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1127 len 32 * cd[(cd[4] + ('cd', 4)[17] + 4)]] = mem[864 len 32 * cd[(cd[4] + ('cd', 4)[17] + 4)]]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1127 len floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291)] = 0, sub_0ab75d3eAddress, sub_35d0d5dc[cd[36]], Mask(64, 96, ('cd', 4)[15]) << 96, ('cd', 4)[8], ('cd', 4)[9], 224, _7147, cd[(cd[4] + ('cd', 4)[17] + 4)], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1127 len floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291) - 260]
        if floor32((32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 291) > (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 260:
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (64 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1387] = 0
        call _reserveAddress with:
           funct Mask(32, 224, (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 260) >> 224
             gas gas_remaining wei
            args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1131 len (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 256]
        if not return_data.size:
            if not ext_call.success:
                require ext_code.size(sub_0ab75d3eAddress)
                call sub_0ab75d3eAddress.0xd9caed12 with:
                     gas gas_remaining wei
                    args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
                return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
            require ('cd', 4).length >= 32
            require ext_code.size(_reserveAddress)
            if _WETHAddress != address(('cd', 4)[15]) >> 96:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), ('cd', 4)[0]
            else:
                if not ('cd', 4)[21]:
                    call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), ('cd', 4)[0]
                else:
                    call _reserveAddress.0x93113b5c with:
                         gas gas_remaining wei
                        args _WETHAddress, ('cd', 4)[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(('cd', 4)[3]), ('cd', 4)[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
            return Mask(64, 96, ('cd', 4)[15]) >> 96, ('cd', 4)[0]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require ext_code.size(sub_0ab75d3eAddress)
            call sub_0ab75d3eAddress.0xd9caed12 with:
                 gas gas_remaining wei
                args sub_35d0d5dc[cd[36]], address(('cd', 4)[3]), ('cd', 4)[8]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
            return sub_35d0d5dc[cd[36]], ('cd', 4)[8]
        require return_data.size >= 32
        require ext_code.size(_reserveAddress)
        if _WETHAddress != address(('cd', 4)[15]) >> 96:
            call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
        else:
            if not ('cd', 4)[21]:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 4)[15]) << 96, address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
            else:
                call _reserveAddress.0x93113b5c with:
                     gas gas_remaining wei
                    args _WETHAddress, mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(_reserveAddress)
                call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(('cd', 4)[3]), mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_97e76aab[('cd', 4)[1]][('cd', 4)[0] << 192] = block.number
        return Mask(64, 96, ('cd', 4)[15]) >> 96, 
               mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[17] + 4)]) + 1159]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 871] = sub_0ab75d3eAddress
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 903] = 192
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1063] = cd[(cd[4] + ('cd', 4)[19] + 4)]
    idx = 0
    s = mem[64] + 260
    t = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 866
    while idx < cd[(cd[4] + ('cd', 4)[19] + 4)]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 935] = ('cd', 4)[8]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 967] = ('cd', 4)[9]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 999] = (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 224
    _9165 = mem[832]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 1095] = mem[832]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + 1127 len 32 * mem[832]] = mem[864 len 32 * mem[832]]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1031] = (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 256
    _11190 = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 1127] = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + 1159 len 32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]] = mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 865 len 32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]]
    _13205 = mem[64]
    mem[mem[64]] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * mem[832]) + (32 * mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 833]) + -mem[64] + 1127
    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1159
    mem[_13205 + 32 len 4] = 2376471303
    _13216 = mem[_13205]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1159 len ceil32(mem[_13205])] = mem[_13205 + 32 len ceil32(mem[_13205])]
    if ceil32(_13216) > _13216:
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + _13216 + 1159] = 0
    call _reserveAddress.mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1159 len 4] with:
         gas gas_remaining wei
        args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1163 len _13216 - 4]
    if not return_data.size:
        if not ext_call.success:
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1163] = mem[652 len 20]
            mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1195] = mem[236 len 20]
            require ext_code.size(sub_0ab75d3eAddress)
            call sub_0ab75d3eAddress.0xd9caed12 with:
                 gas gas_remaining wei
                args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1163 len 64], mem[384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            sub_97e76aab[mem[160]][mem[128] << 192] = block.number
            return mem[652 len 20], mem[384]
        require mem[96] >= 32
        require ext_code.size(_reserveAddress)
        if _WETHAddress != address(mem[608]) >> 96:
            call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[620], mem[236 len 20], mem[128]
        else:
            if not mem[800]:
                call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[620], mem[236 len 20], mem[128]
            else:
                call _reserveAddress.0x93113b5c with:
                     gas gas_remaining wei
                    args _WETHAddress, mem[128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(_reserveAddress)
                call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[236 len 20], mem[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_97e76aab[mem[160]][mem[128] << 192] = block.number
        return mem[620 len 8], mem[128]
    mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1191 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + ceil32(return_data.size) + 1164] = mem[652 len 20]
        mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + ceil32(return_data.size) + 1196] = mem[236 len 20]
        require ext_code.size(sub_0ab75d3eAddress)
        call sub_0ab75d3eAddress.0xd9caed12 with:
             gas gas_remaining wei
            args mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + ceil32(return_data.size) + 1164 len 64], mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        sub_97e76aab[mem[160]][mem[128] << 192] = block.number
        return mem[652 len 20], mem[384]
    require return_data.size >= 32
    require ext_code.size(_reserveAddress)
    if _WETHAddress != address(mem[608]) >> 96:
        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[620], mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1191]
    else:
        if not mem[800]:
            call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[620], mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1191]
        else:
            call _reserveAddress.0x93113b5c with:
                 gas gas_remaining wei
                args _WETHAddress, mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1191]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(_reserveAddress)
            call _reserveAddress.safeTransferETH(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[236 len 20], mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1191]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_97e76aab[mem[160]][mem[128] << 192] = block.number
    return mem[620 len 8], 
           mem[floor32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[19] + 4)]) + (32 * _9165) + (32 * _11190) + 1191]
}

function sub_6ac6376b(?) {
    require calldata.size - 4 >= 128
    require cd[36] == uint8(cd[36])
    require cd[68] == uint64(cd[68])
    require cd[100] <= test266151307()
    require calldata.size + -cd[100] - 4 >= 736
    require ('cd', 100).length == address(('cd', 100).length)
    require ('cd', 100)[0] == uint64(('cd', 100)[0])
    require ('cd', 100)[3] == address(('cd', 100)[3])
    require ('cd', 100)[4] == address(('cd', 100)[4])
    require ('cd', 100)[5] == address(('cd', 100)[5])
    require ('cd', 100)[13] == Mask(160, 96, ('cd', 100)[13])
    require ('cd', 100)[14] == address(('cd', 100)[14])
    require ('cd', 100)[15] == Mask(160, 96, ('cd', 100)[15])
    require ('cd', 100)[16] == address(('cd', 100)[16])
    require ('cd', 100)[17] <= test266151307()
    require cd[100] + ('cd', 100)[17] + 35 < calldata.size
    if cd[(cd[100] + ('cd', 100)[17] + 4)] > test266151307():
        revert with 0, 65
    if floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + 833 < 832 or floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + 833 > test266151307():
        revert with 0, 65
    mem[832] = cd[(cd[100] + ('cd', 100)[17] + 4)]
    require calldata.size >= cd[100] + ('cd', 100)[17] + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 36
    idx = 0
    s = cd[100] + ('cd', 100)[17] + 36
    t = 864
    while idx < cd[(cd[100] + ('cd', 100)[17] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 100)[18] <= test266151307()
    require cd[100] + ('cd', 100)[18] + 35 < calldata.size
    if cd[(cd[100] + ('cd', 100)[18] + 4)] > test266151307():
        revert with 0, 65
    if floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + 834 < 833 or floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + 834 > test266151307():
        revert with 0, 65
    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + 833] = cd[(cd[100] + ('cd', 100)[18] + 4)]
    require calldata.size >= cd[100] + ('cd', 100)[18] + (32 * cd[(cd[100] + ('cd', 100)[18] + 4)]) + 36
    idx = 0
    s = cd[100] + ('cd', 100)[18] + 36
    t = floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + 865
    while idx < cd[(cd[100] + ('cd', 100)[18] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 100)[19] <= test266151307()
    require cd[100] + ('cd', 100)[19] + 35 < calldata.size
    if cd[(cd[100] + ('cd', 100)[19] + 4)] > test266151307():
        revert with 0, 65
    if floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + 835 < 834 or floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + 835 > test266151307():
        revert with 0, 65
    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + 834] = cd[(cd[100] + ('cd', 100)[19] + 4)]
    require calldata.size >= cd[100] + ('cd', 100)[19] + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + 36
    idx = 0
    s = cd[100] + ('cd', 100)[19] + 36
    t = floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + 866
    while idx < cd[(cd[100] + ('cd', 100)[19] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 100)[20] == address(('cd', 100)[20])
    require ('cd', 100)[21] == bool(('cd', 100)[21])
    if not roleAdmin[0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + 867 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe52ba824bfabc2bcfcdf7f0edbb486ebb05e1836c90e78047efeb949990f72e
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + 963 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not stor159[stor157[cd[4]]]:
        revert with 0, 'provided tokenAddress is not whitelisted'
    if Mask(64, 96, ('cd', 100)[13]) >> 96 == sub_35d0d5dc[cd[4]]:
        if ('cd', 100)[7] != ('cd', 100)[6]:
            revert with 0, 'Invalid token amount'
        require ext_code.size(feeManagerAddress)
        if address(('cd', 100).length):
            staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
                    gas gas_remaining wei
                   args cd[36] << 248, address(('cd', 100).length)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(_reserveAddress)
            call _reserveAddress.0x4a1d7f9 with:
                 gas gas_remaining wei
                args address(('cd', 100).length), address(('cd', 100)[20]), ext_call.return_data[0], bool(feeStatus), feeManagerAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(_reserveAddress)
            if not stor160[address(('cd', 100)[13]) >> 96]:
                call _reserveAddress.lockERC20(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 100)[13]) << 96, address(('cd', 100)[20]), _reserveAddress, ('cd', 100)[6]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                    revert with 0, 'Decimals not set for token and chain id'
                require ext_code.size(sub_35d0d5dc[cd[4]])
                staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                    if ('cd', 100)[7] <= 0:
                        revert with 0, 'Transfer amount too low'
                    depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                    if ('cd', 100)[21]:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                    else:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                else:
                    if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                        if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                            revert with 0, 17
                        if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                            if ('cd', 100)[7] and 1 > -1 / ('cd', 100)[7]:
                                revert with 0, 17
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                    revert with 0, 17
                                if ('cd', 100)[7] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var169005 > 1:
                                    s = var169001
                                    t = var169002
                                    u = var169005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var169002 > -1 / var169001:
                                    revert with 0, 17
                                if ('cd', 100)[7] and var169001 * var169002 > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * var169001 * var169002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * var169001 * var169002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                            revert with 0, 17
                        if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                    revert with 0, 17
                                if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                    revert with 0, 18
                                if ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var169005 > 1:
                                    s = var169001
                                    t = var169002
                                    u = var169005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var169002 > -1 / var169001:
                                    revert with 0, 17
                                if not var169001 * var169002:
                                    revert with 0, 18
                                if ('cd', 100)[7] / var169001 * var169002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / var169001 * var169002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
            else:
                call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 100)[13]) << 96, address(('cd', 100)[20]), ('cd', 100)[6]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                    revert with 0, 'Decimals not set for token and chain id'
                require ext_code.size(sub_35d0d5dc[cd[4]])
                staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                    if ('cd', 100)[7] <= 0:
                        revert with 0, 'Transfer amount too low'
                    depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                    if ('cd', 100)[21]:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                    else:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                else:
                    if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                        if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                            revert with 0, 17
                        if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                            if ('cd', 100)[7] and 1 > -1 / ('cd', 100)[7]:
                                revert with 0, 17
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                    revert with 0, 17
                                if ('cd', 100)[7] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var168005 > 1:
                                    s = var168001
                                    t = var168002
                                    u = var168005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var168002 > -1 / var168001:
                                    revert with 0, 17
                                if ('cd', 100)[7] and var168001 * var168002 > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * var168001 * var168002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * var168001 * var168002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                            revert with 0, 17
                        if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                    revert with 0, 17
                                if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                    revert with 0, 18
                                if ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var168005 > 1:
                                    s = var168001
                                    t = var168002
                                    u = var168005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var168002 > -1 / var168001:
                                    revert with 0, 17
                                if not var168001 * var168002:
                                    revert with 0, 18
                                if ('cd', 100)[7] / var168001 * var168002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / var168001 * var168002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
        else:
            staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
                    gas gas_remaining wei
                   args cd[36] << 248, sub_35d0d5dc[cd[4]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(_reserveAddress)
            call _reserveAddress.0x4a1d7f9 with:
                 gas gas_remaining wei
                args sub_35d0d5dc[cd[4]], address(('cd', 100)[20]), ext_call.return_data[0], bool(feeStatus), feeManagerAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(_reserveAddress)
            if not stor160[address(('cd', 100)[13]) >> 96]:
                call _reserveAddress.lockERC20(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 100)[13]) << 96, address(('cd', 100)[20]), _reserveAddress, ('cd', 100)[6]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                    revert with 0, 'Decimals not set for token and chain id'
                require ext_code.size(sub_35d0d5dc[cd[4]])
                staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                    if ('cd', 100)[7] <= 0:
                        revert with 0, 'Transfer amount too low'
                    depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                    if ('cd', 100)[21]:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                    else:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                else:
                    if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                        if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                            revert with 0, 17
                        if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                            if ('cd', 100)[7] and 1 > -1 / ('cd', 100)[7]:
                                revert with 0, 17
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                    revert with 0, 17
                                if ('cd', 100)[7] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var170005 > 1:
                                    s = var170001
                                    t = var170002
                                    u = var170005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var170002 > -1 / var170001:
                                    revert with 0, 17
                                if ('cd', 100)[7] and var170001 * var170002 > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * var170001 * var170002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * var170001 * var170002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                            revert with 0, 17
                        if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                    revert with 0, 17
                                if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                    revert with 0, 18
                                if ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var170005 > 1:
                                    s = var170001
                                    t = var170002
                                    u = var170005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var170002 > -1 / var170001:
                                    revert with 0, 17
                                if not var170001 * var170002:
                                    revert with 0, 18
                                if ('cd', 100)[7] / var170001 * var170002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / var170001 * var170002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
            else:
                call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 100)[13]) << 96, address(('cd', 100)[20]), ('cd', 100)[6]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                    revert with 0, 'Decimals not set for token and chain id'
                require ext_code.size(sub_35d0d5dc[cd[4]])
                staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                    if ('cd', 100)[7] <= 0:
                        revert with 0, 'Transfer amount too low'
                    depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                    if ('cd', 100)[21]:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                    else:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                else:
                    if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                        if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                            revert with 0, 17
                        if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                            if ('cd', 100)[7] and 1 > -1 / ('cd', 100)[7]:
                                revert with 0, 17
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                    revert with 0, 17
                                if ('cd', 100)[7] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var169005 > 1:
                                    s = var169001
                                    t = var169002
                                    u = var169005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var169002 > -1 / var169001:
                                    revert with 0, 17
                                if ('cd', 100)[7] and var169001 * var169002 > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * var169001 * var169002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * var169001 * var169002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                            revert with 0, 17
                        if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                    revert with 0, 17
                                if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                    revert with 0, 18
                                if ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var169005 > 1:
                                    s = var169001
                                    t = var169002
                                    u = var169005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var169002 > -1 / var169001:
                                    revert with 0, 17
                                if not var169001 * var169002:
                                    revert with 0, 18
                                if ('cd', 100)[7] / var169001 * var169002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / var169001 * var169002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
    else:
        mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + 839] = sub_35d0d5dc[cd[4]]
        require ext_code.size(_reserveAddress)
        call _reserveAddress.0x5fae9245 with:
             gas gas_remaining wei
            args sub_35d0d5dc[cd[4]]
        mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + 835] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(('cd', 100)[13]) >> 96:
            if ('cd', 100)[7] != ('cd', 100)[6]:
                revert with 0, 'Invalid token amount'
            require ext_code.size(feeManagerAddress)
            if address(('cd', 100).length):
                staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args cd[36] << 248, address(('cd', 100).length)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(_reserveAddress)
                call _reserveAddress.0x4a1d7f9 with:
                     gas gas_remaining wei
                    args address(('cd', 100).length), address(('cd', 100)[20]), ext_call.return_data[0], bool(feeStatus), feeManagerAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(_reserveAddress)
                call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 100)[13]) << 96, address(('cd', 100)[20]), ('cd', 100)[6]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                    revert with 0, 'Decimals not set for token and chain id'
                require ext_code.size(sub_35d0d5dc[cd[4]])
                staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                    if ('cd', 100)[7] <= 0:
                        revert with 0, 'Transfer amount too low'
                    depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                    if ('cd', 100)[21]:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                    else:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                else:
                    if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                        if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                            revert with 0, 17
                        if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                            if ('cd', 100)[7] and 1 > -1 / ('cd', 100)[7]:
                                revert with 0, 17
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                    revert with 0, 17
                                if ('cd', 100)[7] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var176005 > 1:
                                    s = var176001
                                    t = var176002
                                    u = var176005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var176002 > -1 / var176001:
                                    revert with 0, 17
                                if ('cd', 100)[7] and var176001 * var176002 > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * var176001 * var176002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * var176001 * var176002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                            revert with 0, 17
                        if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                    revert with 0, 17
                                if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                    revert with 0, 18
                                if ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var176005 > 1:
                                    s = var176001
                                    t = var176002
                                    u = var176005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var176002 > -1 / var176001:
                                    revert with 0, 17
                                if not var176001 * var176002:
                                    revert with 0, 18
                                if ('cd', 100)[7] / var176001 * var176002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / var176001 * var176002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
            else:
                staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args cd[36] << 248, sub_35d0d5dc[cd[4]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(_reserveAddress)
                call _reserveAddress.0x4a1d7f9 with:
                     gas gas_remaining wei
                    args Mask(64, 96, ('cd', 100)[13]), address(('cd', 100)[20]), ext_call.return_data[0], bool(feeStatus), feeManagerAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(_reserveAddress)
                call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 100)[13]) << 96, address(('cd', 100)[20]), ('cd', 100)[6]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                    revert with 0, 'Decimals not set for token and chain id'
                require ext_code.size(sub_35d0d5dc[cd[4]])
                staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                    if ('cd', 100)[7] <= 0:
                        revert with 0, 'Transfer amount too low'
                    depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                    depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                    depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                    if ('cd', 100)[21]:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                    else:
                        depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                else:
                    if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                        if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                            revert with 0, 17
                        if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                            if ('cd', 100)[7] and 1 > -1 / ('cd', 100)[7]:
                                revert with 0, 17
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                    revert with 0, 17
                                if ('cd', 100)[7] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var176005 > 1:
                                    s = var176001
                                    t = var176002
                                    u = var176005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if ('cd', 100)[7] and s * s * s * t > -1 / ('cd', 100)[7]:
                                                revert with 0, 17
                                            if ('cd', 100)[7] * s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var176002 > -1 / var176001:
                                    revert with 0, 17
                                if ('cd', 100)[7] and var176001 * var176002 > -1 / ('cd', 100)[7]:
                                    revert with 0, 17
                                if ('cd', 100)[7] * var176001 * var176002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] * var176001 * var176002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                            revert with 0, 17
                        if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                            if ('cd', 100)[7] <= 0:
                                revert with 0, 'Transfer amount too low'
                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                            if ('cd', 100)[21]:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                            else:
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                    revert with 0, 17
                                if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                    revert with 0, 18
                                if ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if var176005 > 1:
                                    s = var176001
                                    t = var176002
                                    u = var176005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            if ('cd', 100)[7] / s * s * s * t <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / s * s * s * t
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    revert with 0, 17
                                if var176002 > -1 / var176001:
                                    revert with 0, 17
                                if not var176001 * var176002:
                                    revert with 0, 18
                                if ('cd', 100)[7] / var176001 * var176002 <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ('cd', 100)[7]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ('cd', 100)[7] / var176001 * var176002
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = address(('cd', 100)[20])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = Mask(64, -96, ('cd', 100)[13]) << 192
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[0]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
        else:
            if not address(('cd', 100).length):
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 835] = 0x4c62b25700000000000000000000000000000000000000000000000000000000
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 839] = address(('cd', 100)[13]) >> 96
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 871] = address(('cd', 100)[20])
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 903] = sub_0ab75d3eAddress
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 935] = ('cd', 100)[6]
                require ext_code.size(_reserveAddress)
                call _reserveAddress.lockERC20(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 100)[13]) << 96, address(('cd', 100)[20]), sub_0ab75d3eAddress, ('cd', 100)[6]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(cd[100] + ('cd', 100)[19] + 4)] <= 2:
                    if not cd[(cd[100] + ('cd', 100)[18] + 4)]:
                        revert with 0, 50
                    _33606 = mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + 865]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 835] = 0x951db63700000000000000000000000000000000000000000000000000000000
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 839] = sub_0ab75d3eAddress
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 871] = Mask(64, 96, ('cd', 100)[13]) >> 96
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 903] = sub_35d0d5dc[cd[4]]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 935] = ('cd', 100)[6]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 967] = ('cd', 100)[7]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 999] = 224
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 1063] = cd[(cd[100] + ('cd', 100)[17] + 4)]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 1095 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]] = mem[864 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.0x951db637 with:
                         gas gas_remaining wei
                        args sub_0ab75d3eAddress, Mask(64, 96, ('cd', 100)[13]) << 96, sub_35d0d5dc[cd[4]], ('cd', 100)[6], ('cd', 100)[7], Array(len=cd[(cd[100] + ('cd', 100)[17] + 4)], data=mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 1095 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]]), _33606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(('cd', 100).length):
                        if not stor160[stor157[cd[4]]]:
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var180005 > 1:
                                                s = var180001
                                                t = var180002
                                                u = var180005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var180002 > -1 / var180001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and var180001 * var180002 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * var180001 * var180002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * var180001 * var180002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var180005 > 1:
                                                s = var180001
                                                t = var180002
                                                u = var180005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var180002 > -1 / var180001:
                                                revert with 0, 17
                                            if not var180001 * var180002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] / var180001 * var180002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / var180001 * var180002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            require ext_code.size(_reserveAddress)
                            call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_35d0d5dc[cd[4]], _reserveAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var183005 > 1:
                                                s = var183001
                                                t = var183002
                                                u = var183005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var183002 > -1 / var183001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and var183001 * var183002 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * var183001 * var183002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * var183001 * var183002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var183005 > 1:
                                                s = var183001
                                                t = var183002
                                                u = var183005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var183002 > -1 / var183001:
                                                revert with 0, 17
                                            if not var183001 * var183002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] / var183001 * var183002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / var183001 * var183002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        require ext_code.size(feeManagerAddress)
                        staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args cd[36] << 248, sub_35d0d5dc[cd[4]]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > ext_call.return_data[0]:
                            revert with 0, 'ERC20handler : provided fee is less than the amount'
                        if ext_call.return_data[0] < ext_call.return_data[32]:
                            revert with 0, 17
                        require ext_code.size(_reserveAddress)
                        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args sub_35d0d5dc[cd[4]], feeManagerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not stor160[stor157[cd[4]]]:
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] and 1 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0])))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var194005 > 1:
                                                s = var194001
                                                t = var194002
                                                u = var194005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var194002 > -1 / var194001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and var194001 * var194002 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * var194001 * var194002) - (ext_call.return_data[32] * var194001 * var194002) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * var194001 * var194002) - (ext_call.return_data[32] * var194001 * var194002)
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var194005 > 1:
                                                s = var194001
                                                t = var194002
                                                u = var194005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var194002 > -1 / var194001:
                                                revert with 0, 17
                                            if not var194001 * var194002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / var194001 * var194002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / var194001 * var194002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            require ext_code.size(_reserveAddress)
                            call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_35d0d5dc[cd[4]], _reserveAddress, ext_call.return_data[0] - ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] and 1 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0])))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var197005 > 1:
                                                s = var197001
                                                t = var197002
                                                u = var197005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var197002 > -1 / var197001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and var197001 * var197002 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * var197001 * var197002) - (ext_call.return_data[32] * var197001 * var197002) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * var197001 * var197002) - (ext_call.return_data[32] * var197001 * var197002)
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var197005 > 1:
                                                s = var197001
                                                t = var197002
                                                u = var197005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var197002 > -1 / var197001:
                                                revert with 0, 17
                                            if not var197001 * var197002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / var197001 * var197002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / var197001 * var197002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                else:
                    if cd[(cd[100] + ('cd', 100)[19] + 4)] < 1:
                        revert with 0, 17
                    if cd[(cd[100] + ('cd', 100)[19] + 4)] - 1 >= cd[(cd[100] + ('cd', 100)[19] + 4)]:
                        revert with 0, 50
                    require mem[(32 * cd[(cd[100] + ('cd', 100)[19] + 4)] - 1) + floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + 878 len 20] == sub_35d0d5dc[cd[4]]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 835] = 0x8da6130700000000000000000000000000000000000000000000000000000000
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 839] = sub_0ab75d3eAddress
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 871] = 192
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 1031] = cd[(cd[100] + ('cd', 100)[19] + 4)]
                    idx = 0
                    s = floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 1063
                    t = floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + 866
                    while idx < cd[(cd[100] + ('cd', 100)[19] + 4)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 903] = ('cd', 100)[6]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 935] = ('cd', 100)[7]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 967] = (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + 224
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + 1063] = cd[(cd[100] + ('cd', 100)[17] + 4)]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + 1095 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]] = mem[864 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 999] = (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 256
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 1095] = cd[(cd[100] + ('cd', 100)[18] + 4)]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 1127 len 32 * cd[(cd[100] + ('cd', 100)[18] + 4)]] = mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + 865 len 32 * cd[(cd[100] + ('cd', 100)[18] + 4)]]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.0x8da61307 with:
                         gas gas_remaining wei
                        args sub_0ab75d3eAddress, Array(len=cd[(cd[100] + ('cd', 100)[19] + 4)], data=mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 1063 len (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 32], cd[(cd[100] + ('cd', 100)[18] + 4)], mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 1127 len 32 * cd[(cd[100] + ('cd', 100)[18] + 4)]]), ('cd', 100)[6], ('cd', 100)[7], (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + 224, (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(('cd', 100).length):
                        if not stor160[stor157[cd[4]]]:
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var193005 > 1:
                                                s = var193001
                                                t = var193002
                                                u = var193005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var193002 > -1 / var193001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and var193001 * var193002 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * var193001 * var193002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * var193001 * var193002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var193005 > 1:
                                                s = var193001
                                                t = var193002
                                                u = var193005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var193002 > -1 / var193001:
                                                revert with 0, 17
                                            if not var193001 * var193002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] / var193001 * var193002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / var193001 * var193002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            require ext_code.size(_reserveAddress)
                            call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_35d0d5dc[cd[4]], _reserveAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var196005 > 1:
                                                s = var196001
                                                t = var196002
                                                u = var196005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var196002 > -1 / var196001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and var196001 * var196002 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * var196001 * var196002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * var196001 * var196002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var196005 > 1:
                                                s = var196001
                                                t = var196002
                                                u = var196005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var196002 > -1 / var196001:
                                                revert with 0, 17
                                            if not var196001 * var196002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] / var196001 * var196002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / var196001 * var196002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = 0
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        require ext_code.size(feeManagerAddress)
                        staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args cd[36] << 248, sub_35d0d5dc[cd[4]]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > ext_call.return_data[0]:
                            revert with 0, 'ERC20handler : provided fee is less than the amount'
                        if ext_call.return_data[0] < ext_call.return_data[32]:
                            revert with 0, 17
                        require ext_code.size(_reserveAddress)
                        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(sub_35d0d5dc[cd[4]]), feeManagerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not stor160[stor157[cd[4]]]:
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] and 1 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0])))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var207005 > 1:
                                                s = var207001
                                                t = var207002
                                                u = var207005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var207002 > -1 / var207001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and var207001 * var207002 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * var207001 * var207002) - (ext_call.return_data[32] * var207001 * var207002) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * var207001 * var207002) - (ext_call.return_data[32] * var207001 * var207002)
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var207005 > 1:
                                                s = var207001
                                                t = var207002
                                                u = var207005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var207002 > -1 / var207001:
                                                revert with 0, 17
                                            if not var207001 * var207002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / var207001 * var207002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / var207001 * var207002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            require ext_code.size(_reserveAddress)
                            call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_35d0d5dc[cd[4]], _reserveAddress, ext_call.return_data[0] - ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] and 1 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0])))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var210005 > 1:
                                                s = var210001
                                                t = var210002
                                                u = var210005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var210002 > -1 / var210001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and var210001 * var210002 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * var210001 * var210002) - (ext_call.return_data[32] * var210001 * var210002) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * var210001 * var210002) - (ext_call.return_data[32] * var210001 * var210002)
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var210005 > 1:
                                                s = var210001
                                                t = var210002
                                                u = var210005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var210002 > -1 / var210001:
                                                revert with 0, 17
                                            if not var210001 * var210002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / var210001 * var210002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / var210001 * var210002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
            else:
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 871] = address(('cd', 100).length)
                require ext_code.size(feeManagerAddress)
                staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args cd[36] << 248, address(('cd', 100).length)
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + ceil32(return_data.size) + 835 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 967] = feeManagerAddress
                require ext_code.size(_reserveAddress)
                call _reserveAddress.0x4a1d7f9 with:
                     gas gas_remaining wei
                    args address(('cd', 100).length), address(('cd', 100)[20]), ext_call.return_data[32], bool(feeStatus), feeManagerAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 835] = 0x4c62b25700000000000000000000000000000000000000000000000000000000
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 839] = address(('cd', 100)[13]) >> 96
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 871] = address(('cd', 100)[20])
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 903] = sub_0ab75d3eAddress
                mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 935] = ('cd', 100)[6]
                require ext_code.size(_reserveAddress)
                call _reserveAddress.lockERC20(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args Mask(256, -96, ('cd', 100)[13]) << 96, address(('cd', 100)[20]), sub_0ab75d3eAddress, ('cd', 100)[6]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(cd[100] + ('cd', 100)[19] + 4)] <= 2:
                    if not cd[(cd[100] + ('cd', 100)[18] + 4)]:
                        revert with 0, 50
                    _33710 = mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + 865]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 835] = 0x951db63700000000000000000000000000000000000000000000000000000000
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 839] = sub_0ab75d3eAddress
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 871] = Mask(64, 96, ('cd', 100)[13]) >> 96
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 903] = sub_35d0d5dc[cd[4]]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 935] = ('cd', 100)[6]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 967] = ('cd', 100)[7]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 999] = 224
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1063] = cd[(cd[100] + ('cd', 100)[17] + 4)]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1095 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]] = mem[864 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.0x951db637 with:
                         gas gas_remaining wei
                        args sub_0ab75d3eAddress, Mask(64, 96, ('cd', 100)[13]) << 96, sub_35d0d5dc[cd[4]], ('cd', 100)[6], ('cd', 100)[7], Array(len=cd[(cd[100] + ('cd', 100)[17] + 4)], data=mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1095 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]]), _33710
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(('cd', 100).length):
                        if not stor160[stor157[cd[4]]]:
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var190005 > 1:
                                                s = var190001
                                                t = var190002
                                                u = var190005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var190002 > -1 / var190001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and var190001 * var190002 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * var190001 * var190002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * var190001 * var190002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var190005 > 1:
                                                s = var190001
                                                t = var190002
                                                u = var190005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var190002 > -1 / var190001:
                                                revert with 0, 17
                                            if not var190001 * var190002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] / var190001 * var190002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / var190001 * var190002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            require ext_code.size(_reserveAddress)
                            call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_35d0d5dc[cd[4]], _reserveAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var193005 > 1:
                                                s = var193001
                                                t = var193002
                                                u = var193005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var193002 > -1 / var193001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and var193001 * var193002 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * var193001 * var193002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * var193001 * var193002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var193005 > 1:
                                                s = var193001
                                                t = var193002
                                                u = var193005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var193002 > -1 / var193001:
                                                revert with 0, 17
                                            if not var193001 * var193002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] / var193001 * var193002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / var193001 * var193002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        require ext_code.size(feeManagerAddress)
                        staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args cd[36] << 248, sub_35d0d5dc[cd[4]]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > ext_call.return_data[0]:
                            revert with 0, 'ERC20handler : provided fee is less than the amount'
                        if ext_call.return_data[0] < ext_call.return_data[32]:
                            revert with 0, 17
                        require ext_code.size(_reserveAddress)
                        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args sub_35d0d5dc[cd[4]], feeManagerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not stor160[stor157[cd[4]]]:
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] and 1 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0])))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var204005 > 1:
                                                s = var204001
                                                t = var204002
                                                u = var204005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var204002 > -1 / var204001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and var204001 * var204002 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * var204001 * var204002) - (ext_call.return_data[32] * var204001 * var204002) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * var204001 * var204002) - (ext_call.return_data[32] * var204001 * var204002)
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var204005 > 1:
                                                s = var204001
                                                t = var204002
                                                u = var204005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var204002 > -1 / var204001:
                                                revert with 0, 17
                                            if not var204001 * var204002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / var204001 * var204002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / var204001 * var204002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            require ext_code.size(_reserveAddress)
                            call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_35d0d5dc[cd[4]], _reserveAddress, ext_call.return_data[0] - ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] and 1 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0])))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var207005 > 1:
                                                s = var207001
                                                t = var207002
                                                u = var207005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var207002 > -1 / var207001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and var207001 * var207002 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * var207001 * var207002) - (ext_call.return_data[32] * var207001 * var207002) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * var207001 * var207002) - (ext_call.return_data[32] * var207001 * var207002)
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var207005 > 1:
                                                s = var207001
                                                t = var207002
                                                u = var207005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var207002 > -1 / var207001:
                                                revert with 0, 17
                                            if not var207001 * var207002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / var207001 * var207002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / var207001 * var207002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                else:
                    if cd[(cd[100] + ('cd', 100)[19] + 4)] < 1:
                        revert with 0, 17
                    if cd[(cd[100] + ('cd', 100)[19] + 4)] - 1 >= cd[(cd[100] + ('cd', 100)[19] + 4)]:
                        revert with 0, 50
                    require mem[(32 * cd[(cd[100] + ('cd', 100)[19] + 4)] - 1) + floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + 878 len 20] == sub_35d0d5dc[cd[4]]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 835] = 0x8da6130700000000000000000000000000000000000000000000000000000000
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 839] = sub_0ab75d3eAddress
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 871] = 192
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1031] = cd[(cd[100] + ('cd', 100)[19] + 4)]
                    idx = 0
                    s = floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1063
                    t = floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + 866
                    while idx < cd[(cd[100] + ('cd', 100)[19] + 4)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 903] = ('cd', 100)[6]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 935] = ('cd', 100)[7]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 967] = (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + 224
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + 1063] = cd[(cd[100] + ('cd', 100)[17] + 4)]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + 1095 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]] = mem[864 len 32 * cd[(cd[100] + ('cd', 100)[17] + 4)]]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 999] = (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 256
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 1095] = cd[(cd[100] + ('cd', 100)[18] + 4)]
                    mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 1127 len 32 * cd[(cd[100] + ('cd', 100)[18] + 4)]] = mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + 865 len 32 * cd[(cd[100] + ('cd', 100)[18] + 4)]]
                    require ext_code.size(_reserveAddress)
                    call _reserveAddress.0x8da61307 with:
                         gas gas_remaining wei
                        args sub_0ab75d3eAddress, Array(len=cd[(cd[100] + ('cd', 100)[19] + 4)], data=mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + 1063 len (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 32], cd[(cd[100] + ('cd', 100)[18] + 4)], mem[floor32(cd[(cd[100] + ('cd', 100)[17] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[18] + 4)]) + floor32(cd[(cd[100] + ('cd', 100)[19] + 4)]) + (2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 1127 len 32 * cd[(cd[100] + ('cd', 100)[18] + 4)]]), ('cd', 100)[6], ('cd', 100)[7], (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + 224, (32 * cd[(cd[100] + ('cd', 100)[19] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[17] + 4)]) + 256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(('cd', 100).length):
                        if not stor160[stor157[cd[4]]]:
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var203005 > 1:
                                                s = var203001
                                                t = var203002
                                                u = var203005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var203002 > -1 / var203001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and var203001 * var203002 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * var203001 * var203002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * var203001 * var203002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var203005 > 1:
                                                s = var203001
                                                t = var203002
                                                u = var203005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var203002 > -1 / var203001:
                                                revert with 0, 17
                                            if not var203001 * var203002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] / var203001 * var203002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / var203001 * var203002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            require ext_code.size(_reserveAddress)
                            call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_35d0d5dc[cd[4]], _reserveAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var206005 > 1:
                                                s = var206001
                                                t = var206002
                                                u = var206005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] and s * s * s * t > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] * s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var206002 > -1 / var206001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and var206001 * var206002 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * var206001 * var206002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] * var206001 * var206002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var206005 > 1:
                                                s = var206001
                                                t = var206002
                                                u = var206005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var206002 > -1 / var206001:
                                                revert with 0, 17
                                            if not var206001 * var206002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] / var206001 * var206002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] / var206001 * var206002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = uint64(('cd', 100).length) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                    else:
                        require ext_code.size(feeManagerAddress)
                        staticcall feeManagerAddress.getFee(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args cd[36] << 248, sub_35d0d5dc[cd[4]]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > ext_call.return_data[0]:
                            revert with 0, 'ERC20handler : provided fee is less than the amount'
                        if ext_call.return_data[0] < ext_call.return_data[32]:
                            revert with 0, 17
                        require ext_code.size(_reserveAddress)
                        call _reserveAddress.releaseERC20(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(sub_35d0d5dc[cd[4]]), feeManagerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not stor160[stor157[cd[4]]]:
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] and 1 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0])))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var217005 > 1:
                                                s = var217001
                                                t = var217002
                                                u = var217005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var217002 > -1 / var217001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and var217001 * var217002 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * var217001 * var217002) - (ext_call.return_data[32] * var217001 * var217002) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * var217001 * var217002) - (ext_call.return_data[32] * var217001 * var217002)
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var217005 > 1:
                                                s = var217001
                                                t = var217002
                                                u = var217005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var217002 > -1 / var217001:
                                                revert with 0, 17
                                            if not var217001 * var217002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / var217001 * var217002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / var217001 * var217002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                        else:
                            require ext_code.size(_reserveAddress)
                            call _reserveAddress.burnERC20(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_35d0d5dc[cd[4]], _reserveAddress, ext_call.return_data[0] - ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                revert with 0, 'Decimals not set for token and chain id'
                            require ext_code.size(sub_35d0d5dc[cd[4]])
                            staticcall sub_35d0d5dc[cd[4]].0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] == ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                    revert with 0, 'Transfer amount too low'
                                depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                if ('cd', 100)[21]:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                else:
                                    depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                            else:
                                if ext_call.return_data[31 len 1] <= sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                    if sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] < ext_call.return_data[31 len 1]:
                                        revert with 0, 17
                                    if not uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] and 1 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) < 32)):
                                            if 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1]) > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - ext_call.return_data[31 len 1])) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0]))) - (ext_call.return_data[32] * 10^uint8(sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248] - uint8(ext_call.return_data[0])))
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var220005 > 1:
                                                s = var220001
                                                t = var220002
                                                u = var220005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * t) - (ext_call.return_data[32] * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] - ext_call.return_data[32] and s * s * s * t > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                            revert with 0, 17
                                                        if (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t) <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * s * s * s * t) - (ext_call.return_data[32] * s * s * s * t)
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var220002 > -1 / var220001:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - ext_call.return_data[32] and var220001 * var220002 > -1 / ext_call.return_data[0] - ext_call.return_data[32]:
                                                revert with 0, 17
                                            if (ext_call.return_data[0] * var220001 * var220002) - (ext_call.return_data[32] * var220001 * var220002) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = (ext_call.return_data[0] * var220001 * var220002) - (ext_call.return_data[32] * var220001 * var220002)
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                else:
                                    if ext_call.return_data[31 len 1] < sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]:
                                        revert with 0, 17
                                    if not uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                        if ext_call.return_data[0] - ext_call.return_data[32] <= 0:
                                            revert with 0, 'Transfer amount too low'
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                        if ('cd', 100)[21]:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                        else:
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                    else:
                                        if bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) < 32)):
                                            if 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) > -1:
                                                revert with 0, 17
                                            if not 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]):
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248]) <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - sub_a6fd91ee[stor157[cd[4]]][cd[36] << 248])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                        else:
                                            if var220005 > 1:
                                                s = var220001
                                                t = var220002
                                                u = var220005
                                                while s <= -1 / s:
                                                    if not bool(u):
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                    else:
                                                        if uint255(u) * 0.5 > 1:
                                                            s = s * s
                                                            t = s * t
                                                            u = uint255(u) * 0.5
                                                            continue 
                                                        if s * t > -1 / s * s:
                                                            revert with 0, 17
                                                        if not s * s * s * t:
                                                            revert with 0, 18
                                                        if ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t <= 0:
                                                            revert with 0, 'Transfer amount too low'
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / s * s * s * t
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                                        depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                                        if ('cd', 100)[21]:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                                        else:
                                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
                                                revert with 0, 17
                                            if var220002 > -1 / var220001:
                                                revert with 0, 17
                                            if not var220001 * var220002:
                                                revert with 0, 18
                                            if ext_call.return_data[0] - ext_call.return_data[32] / var220001 * var220002 <= 0:
                                                revert with 0, 'Transfer amount too low'
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_0 = uint8(cd[36])
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_8 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_256 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_512 = ext_call.return_data[0] - ext_call.return_data[32]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_768 = uint64(('cd', 100)[16]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1024 = ext_call.return_data[0] - ext_call.return_data[32] / var220001 * var220002
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1280 = 0
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1536 = ('cd', 100)[9]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_1792 = cd[4]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2048 = uint64(('cd', 100)[3]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2304 = uint64(('cd', 100)[20]) << 96
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2560 = ('cd', 100)[6]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_2816 = sub_35d0d5dc[cd[4]]
                                            depositRecord[cd[36] << 248][cd[68] << 192].field_3072 = ext_call.return_data[32]
                                            if ('cd', 100)[21]:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 1
                                            else:
                                                depositRecord[cd[36] << 248][cd[68] << 192].field_3328 = 0
}



}
