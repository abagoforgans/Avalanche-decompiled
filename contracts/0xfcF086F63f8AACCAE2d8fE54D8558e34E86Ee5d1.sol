contract main {




// =====================  Runtime code  =====================


#
#  - sub_338dce79(?)
#  - sub_3bd611b1(?)
#  - sub_470750ba(?)
#  - sub_a4ac380b(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address settingsAddress;
uint8 sub_b43462fd; offset 160
uint8 sub_19552df2; offset 168
uint128 stor102; offset 168
uint128 stor102; offset 160
address sub_4b87af47Address;
uint256 sub_e808bee6;
uint256 sub_583d4cc6;
uint256 sub_adb2dff9;
uint256 sub_535aa3bb;
uint256 sub_ac55eac2;
uint256 sub_57a17d1d;
uint256 sub_bf0673d2;

function sub_19552df2(?) payable {
    return bool(sub_19552df2)
}

function sub_4b87af47(?) payable {
    return sub_4b87af47Address
}

function sub_535aa3bb(?) payable {
    return sub_535aa3bb
}

function sub_57a17d1d(?) payable {
    return sub_57a17d1d
}

function sub_583d4cc6(?) payable {
    return sub_583d4cc6
}

function owner() payable {
    return owner
}

function sub_ac55eac2(?) payable {
    return sub_ac55eac2
}

function sub_adb2dff9(?) payable {
    return sub_adb2dff9
}

function sub_b43462fd(?) payable {
    return bool(sub_b43462fd)
}

function sub_bf0673d2(?) payable {
    return sub_bf0673d2
}

function settings() payable {
    return settingsAddress
}

function sub_e808bee6(?) payable {
    return sub_e808bee6
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_4d9f58d3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_adb2dff9 = arg1
}

function sub_a3bd24b2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_535aa3bb = arg1
}

function sub_dee45c6d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_ac55eac2 = arg1
}

function sub_e1a98022(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_e808bee6 = arg1
}

function sub_f6fc5516(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_57a17d1d = arg1
}

function setMinLiquidityRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_583d4cc6 = arg1
}

function setLPEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    Mask(88, 0, stor102.field_168) = Mask(88, 0, arg1)
}

function sub_21ab9a72(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    Mask(96, 0, stor102.field_160) = Mask(96, 0, bool(arg1))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    settingsAddress = arg1
    sub_4b87af47Address = arg2
    sub_e808bee6 = 500
    sub_583d4cc6 = 100
    sub_adb2dff9 = 2000
    sub_535aa3bb = 2500
    sub_ac55eac2 = 100
    sub_57a17d1d = 1000
    sub_bf0673d2 = 100
}

function sub_99d47339(?) payable {
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        return Mask(112, 0, ext_call.return_data[32])
    return Mask(112, 0, ext_call.return_data[0])
}

function sub_4eaafa60(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if arg1 and ext_call.return_data[0] > -1 / arg1:
            revert with 0, 17
        if not 2 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (arg1 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]))
    if Mask(112, 0, ext_call.return_data[0]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if not 2 * Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    return (arg1 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]))
}

function sub_03be6f4c(?) payable {
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xb8746e73 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xb8746e73 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return (ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not s * t:
        revert with 0, 18
    return (ext_call.return_data[0] / s * t)
}

function sub_95afe299(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x6caae832 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Cant go above tx limit!'
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x278e5bba with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x9885fdfa with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 96] = 0x1e9a695000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = arg1 * ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1e9a6950 with:
         gas gas_remaining wei
        args msg.sender, arg1 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1:
        _39 = mem[64]
        mem[64] = mem[64] + 32
        mem[_39] = 0
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xc84eb624 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _43 = mem[_42]
        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 0
        s = 0
        while s < 0:
            mem[s + mem[64] + 100] = mem[s + _39 + 32]
            s = s + 32
            continue 
        require ext_code.size(sub_4b87af47Address)
        call sub_4b87af47Address.0xd0def521 with:
             gas gas_remaining wei
            args msg.sender, 64, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xae82459f with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _70 = mem[_68]
        require mem[_68] == mem[_68 + 12 len 20]
        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _43
        require ext_code.size(address(_70))
        call address(_70).addReputation(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, _43
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_05b3973d(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.dexRouter() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = arg1
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = 128
    t = (4 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _32 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _33 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _32 + (32 * _33) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _33] = mem[(4 * ceil32(return_data.size)) + _32 + 224 len 32 * _33]
    if 0 >= _33:
        revert with 0, 50
    mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_cf1d3228(?) payable {
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.liquidityPair() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 2 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 2 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (2 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 2 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (2 * Mask(112, 0, ext_call.return_data[32]) * s * t / ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[0]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 2 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 2 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (2 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[0])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / 2 * Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (2 * Mask(112, 0, ext_call.return_data[0]) * s * t / ext_call.return_data[0])
}

function sub_4cdc1e2e(?) payable {
    mem[96] = 2
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.dexRouter() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = 1
        mem[(7 * ceil32(return_data.size)) + 228] = 64
        mem[(7 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = 128
        t = (7 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _72 = mem[(7 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _75 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require return_data.size >= _72 + (32 * _75) + 32
        mem[(8 * ceil32(return_data.size)) + 224 len 32 * _75] = mem[(7 * ceil32(return_data.size)) + _72 + 224 len 32 * _75]
        if 0 >= _75:
            revert with 0, 50
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 228] = 64
            mem[(7 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = 128
            t = (7 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _71 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _74 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            require return_data.size >= _71 + (32 * _74) + 32
            mem[(8 * ceil32(return_data.size)) + 224 len 32 * _74] = mem[(7 * ceil32(return_data.size)) + _71 + 224 len 32 * _74]
            if 0 >= _74:
                revert with 0, 50
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = s * t
            mem[(7 * ceil32(return_data.size)) + 228] = 64
            mem[(7 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            u = 128
            v = (7 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s * t, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _111 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _112 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            require return_data.size >= _111 + (32 * _112) + 32
            mem[(8 * ceil32(return_data.size)) + 224 len 32 * _112] = mem[(7 * ceil32(return_data.size)) + _111 + 224 len 32 * _112]
            if 0 >= _112:
                revert with 0, 50
    mem[mem[64]] = mem[(8 * ceil32(return_data.size)) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_b9a951f5(?) payable {
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.usdc() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xb8746e73 with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.dexRouter() with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = 1
        mem[(8 * ceil32(return_data.size)) + 228] = 64
        mem[(8 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (8 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _104 = mem[(8 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _107 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require return_data.size >= _104 + (32 * _107) + 32
        mem[(10 * ceil32(return_data.size)) + 224 len 32 * _107] = mem[(8 * ceil32(return_data.size)) + _104 + 224 len 32 * _107]
        if 0 >= _107:
            revert with 0, 50
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.usdc() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.dexRouter() with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 228] = 64
            mem[(8 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (8 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _103 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
            _106 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            require return_data.size >= _103 + (32 * _106) + 32
            mem[(10 * ceil32(return_data.size)) + 224 len 32 * _106] = mem[(8 * ceil32(return_data.size)) + _103 + 224 len 32 * _106]
            if 0 >= _106:
                revert with 0, 50
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.usdc() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.dexRouter() with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 196] = s * t
            mem[(8 * ceil32(return_data.size)) + 228] = 64
            mem[(8 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            u = (2 * ceil32(return_data.size)) + 128
            v = (8 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s * t, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _156 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
            _157 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            require return_data.size >= _156 + (32 * _157) + 32
            mem[(10 * ceil32(return_data.size)) + 224 len 32 * _157] = mem[(8 * ceil32(return_data.size)) + _156 + 224 len 32 * _157]
            if 0 >= _157:
                revert with 0, 50
    mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + 224]
    return memory
      from mem[64]
       len 32
}

function purchaseWithUSDC(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x6caae832 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Cant go above tx limit!'
    if not sub_b43462fd:
        revert with 0, 'USDC discount off'
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.PRECISION() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.PRECISION() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_e808bee6:
        revert with 0, 17
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xcfe19c66 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    mem[(9 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.dexRouter() with:
            gas gas_remaining wei
           args mem[(9 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
    mem[(9 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(11 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(11 * ceil32(return_data.size)) + 228] = 64
    mem[(11 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = (11 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (12 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _297 = mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
    _298 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(12 * ceil32(return_data.size)) + 192] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require return_data.size >= _297 + (32 * _298) + 32
    mem[(12 * ceil32(return_data.size)) + 224 len 32 * _298] = mem[(11 * ceil32(return_data.size)) + _297 + 224 len 32 * _298]
    if 0 >= _298:
        revert with 0, 50
    _552 = mem[(12 * ceil32(return_data.size)) + 224]
    if arg1 and mem[(12 * ceil32(return_data.size)) + 224] > -1 / arg1:
        revert with 0, 17
    if arg1 * mem[(12 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] - sub_e808bee6 > -1 / arg1 * mem[(12 * ceil32(return_data.size)) + 224]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x57cb6dd4 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _555 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _556 = mem[_555]
    require mem[_555] == mem[_555 + 12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _559 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _560 = mem[_559]
    require mem[_559] == mem[_559 + 12 len 20]
    _561 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = address(_556)
    mem[mem[64] + 100] = (ext_call.return_data[0] * arg1 * _552) - (sub_e808bee6 * arg1 * _552) / ext_call.return_data[0]
    _562 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_561 + 132] = 32
    mem[_561 + 164] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_560)):
        revert with 0, 'Address: call to non-contract'
    _569 = mem[_562]
    mem[_561 + 196 len ceil32(mem[_562])] = mem[_562 + 32 len ceil32(mem[_562])]
    if ceil32(_569) <= _569:
        call address(_560) with:
             gas gas_remaining wei
            args mem[_561 + 200 len _569 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                idx = 0
                while idx < arg1:
                    _1030 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1030] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1057 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1067 = mem[_1057]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1030 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.0xd0def521 with:
                         gas gas_remaining wei
                        args msg.sender, 64, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xae82459f with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1273 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1289 = mem[_1273]
                    require mem[_1273] == mem[_1273 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1067
                    require ext_code.size(address(_1289))
                    call address(_1289).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1067
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < arg1:
                    _1033 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1033] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1058 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1068 = mem[_1058]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1033 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.0xd0def521 with:
                         gas gas_remaining wei
                        args msg.sender, 64, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xae82459f with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1275 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1291 = mem[_1275]
                    require mem[_1275] == mem[_1275 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1068
                    require ext_code.size(address(_1291))
                    call address(_1291).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1068
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[64] = _561 + ceil32(return_data.size) + 197
            mem[_561 + 196] = return_data.size
            mem[_561 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                idx = 0
                while idx < arg1:
                    _1037 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1037] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1059 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1071 = mem[_1059]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1037 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.0xd0def521 with:
                         gas gas_remaining wei
                        args msg.sender, 64, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xae82459f with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1277 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1293 = mem[_1277]
                    require mem[_1277] == mem[_1277 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1071
                    require ext_code.size(address(_1293))
                    call address(_1293).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1071
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                require mem[_561 + 228] == bool(mem[_561 + 228])
                if not mem[_561 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < arg1:
                    _1040 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1040] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1060 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1072 = mem[_1060]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1040 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.0xd0def521 with:
                         gas gas_remaining wei
                        args msg.sender, 64, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xae82459f with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1295 = mem[_1279]
                    require mem[_1279] == mem[_1279 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1072
                    require ext_code.size(address(_1295))
                    call address(_1295).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1072
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        mem[_569 + _561 + 196] = 0
        call address(_560) with:
             gas gas_remaining wei
            args mem[_561 + 200 len _569 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                idx = 0
                while idx < arg1:
                    _1044 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1044] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1061 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1075 = mem[_1061]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1044 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.0xd0def521 with:
                         gas gas_remaining wei
                        args msg.sender, 64, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xae82459f with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1297 = mem[_1281]
                    require mem[_1281] == mem[_1281 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1075
                    require ext_code.size(address(_1297))
                    call address(_1297).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1075
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < arg1:
                    _1047 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1047] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1076 = mem[_1062]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1047 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.0xd0def521 with:
                         gas gas_remaining wei
                        args msg.sender, 64, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xae82459f with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1299 = mem[_1283]
                    require mem[_1283] == mem[_1283 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1076
                    require ext_code.size(address(_1299))
                    call address(_1299).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1076
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[64] = _561 + ceil32(return_data.size) + 197
            mem[_561 + 196] = return_data.size
            mem[_561 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                idx = 0
                while idx < arg1:
                    _1051 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1051] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1079 = mem[_1063]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1051 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.0xd0def521 with:
                         gas gas_remaining wei
                        args msg.sender, 64, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xae82459f with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1285 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1301 = mem[_1285]
                    require mem[_1285] == mem[_1285 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1079
                    require ext_code.size(address(_1301))
                    call address(_1301).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1079
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                require mem[_561 + 228] == bool(mem[_561 + 228])
                if not mem[_561 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < arg1:
                    _1054 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1054] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1064 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1080 = mem[_1064]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1054 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.0xd0def521 with:
                         gas gas_remaining wei
                        args msg.sender, 64, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xae82459f with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1287 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1303 = mem[_1287]
                    require mem[_1287] == mem[_1287 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1080
                    require ext_code.size(address(_1303))
                    call address(_1303).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1080
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}

function sub_61bba381(?) payable {
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xb8746e73 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xb8746e73 with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            mem[(8 * ceil32(return_data.size)) + 96] = 2
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.usdc() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
            mem[(10 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
                   args mem[(10 * ceil32(return_data.size)) + 196 len 16 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(12 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.dexRouter() with:
                    gas gas_remaining wei
                   args mem[(12 * ceil32(return_data.size)) + 196 len 20 * ceil32(return_data.size)]
            mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(14 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(14 * ceil32(return_data.size)) + 196] = 1
            mem[(14 * ceil32(return_data.size)) + 228] = 64
            mem[(14 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 128
            t = (14 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 1, Array(len=2, data=mem[(14 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(14 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (15 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _335 = mem[(14 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (14 * ceil32(return_data.size)) + return_data.size + 192
            _342 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(15 * ceil32(return_data.size)) + 192] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require return_data.size >= _335 + (32 * _342) + 32
            mem[(15 * ceil32(return_data.size)) + 224 len 32 * _342] = mem[(14 * ceil32(return_data.size)) + _335 + 224 len 32 * _342]
            if 0 >= _342:
                revert with 0, 50
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                mem[(8 * ceil32(return_data.size)) + 96] = 2
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.usdc() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                mem[(10 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                       args mem[(10 * ceil32(return_data.size)) + 196 len 16 * ceil32(return_data.size)]
                mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                mem[(12 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.dexRouter() with:
                        gas gas_remaining wei
                       args mem[(12 * ceil32(return_data.size)) + 196 len 20 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(14 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                mem[(14 * ceil32(return_data.size)) + 228] = 64
                mem[(14 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 128
                t = (14 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(14 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(14 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (15 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _334 = mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                require mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (14 * ceil32(return_data.size)) + return_data.size + 192
                _341 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                mem[(15 * ceil32(return_data.size)) + 192] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                require return_data.size >= _334 + (32 * _341) + 32
                mem[(15 * ceil32(return_data.size)) + 224 len 32 * _341] = mem[(14 * ceil32(return_data.size)) + _334 + 224 len 32 * _341]
                if 0 >= _341:
                    revert with 0, 50
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                mem[(8 * ceil32(return_data.size)) + 96] = 2
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.usdc() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                mem[(10 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                       args mem[(10 * ceil32(return_data.size)) + 196 len 16 * ceil32(return_data.size)]
                mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                mem[(12 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.dexRouter() with:
                        gas gas_remaining wei
                       args mem[(12 * ceil32(return_data.size)) + 196 len 20 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(14 * ceil32(return_data.size)) + 196] = s * t
                mem[(14 * ceil32(return_data.size)) + 228] = 64
                mem[(14 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                u = (8 * ceil32(return_data.size)) + 128
                v = (14 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s * t, Array(len=2, data=mem[(14 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(14 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (15 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _540 = mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                require mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (14 * ceil32(return_data.size)) + return_data.size + 192
                _551 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                mem[(15 * ceil32(return_data.size)) + 192] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                require return_data.size >= _540 + (32 * _551) + 32
                mem[(15 * ceil32(return_data.size)) + 224 len 32 * _551] = mem[(14 * ceil32(return_data.size)) + _540 + 224 len 32 * _551]
                if 0 >= _551:
                    revert with 0, 50
        if mem[(15 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] > -1 / mem[(15 * ceil32(return_data.size)) + 224]:
            revert with 0, 17
        mem[mem[64]] = mem[(15 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                mem[(8 * ceil32(return_data.size)) + 96] = 2
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.usdc() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                mem[(10 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                       args mem[(10 * ceil32(return_data.size)) + 196 len 16 * ceil32(return_data.size)]
                mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                mem[(12 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.dexRouter() with:
                        gas gas_remaining wei
                       args mem[(12 * ceil32(return_data.size)) + 196 len 20 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(14 * ceil32(return_data.size)) + 196] = 1
                mem[(14 * ceil32(return_data.size)) + 228] = 64
                mem[(14 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 128
                t = (14 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 1, Array(len=2, data=mem[(14 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(14 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (15 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _332 = mem[(14 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (14 * ceil32(return_data.size)) + return_data.size + 192
                _339 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(15 * ceil32(return_data.size)) + 192] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _332 + (32 * _339) + 32
                mem[(15 * ceil32(return_data.size)) + 224 len 32 * _339] = mem[(14 * ceil32(return_data.size)) + _332 + 224 len 32 * _339]
                if 0 >= _339:
                    revert with 0, 50
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 196 len 16 * ceil32(return_data.size)]
                    mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(12 * ceil32(return_data.size)) + 196 len 20 * ceil32(return_data.size)]
                    mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(14 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(14 * ceil32(return_data.size)) + 228] = 64
                    mem[(14 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + 128
                    t = (14 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(14 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(14 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (15 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _331 = mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                    require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (14 * ceil32(return_data.size)) + return_data.size + 192
                    _338 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                    mem[(15 * ceil32(return_data.size)) + 192] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    require return_data.size >= _331 + (32 * _338) + 32
                    mem[(15 * ceil32(return_data.size)) + 224 len 32 * _338] = mem[(14 * ceil32(return_data.size)) + _331 + 224 len 32 * _338]
                    if 0 >= _338:
                        revert with 0, 50
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 196 len 16 * ceil32(return_data.size)]
                    mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(12 * ceil32(return_data.size)) + 196 len 20 * ceil32(return_data.size)]
                    mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(14 * ceil32(return_data.size)) + 196] = s * t
                    mem[(14 * ceil32(return_data.size)) + 228] = 64
                    mem[(14 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (8 * ceil32(return_data.size)) + 128
                    v = (14 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s * t, Array(len=2, data=mem[(14 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(14 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (15 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _539 = mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                    require mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                    require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (14 * ceil32(return_data.size)) + return_data.size + 192
                    _548 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                    mem[(15 * ceil32(return_data.size)) + 192] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    require return_data.size >= _539 + (32 * _548) + 32
                    mem[(15 * ceil32(return_data.size)) + 224 len 32 * _548] = mem[(14 * ceil32(return_data.size)) + _539 + 224 len 32 * _548]
                    if 0 >= _548:
                        revert with 0, 50
            if mem[(15 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[(15 * ceil32(return_data.size)) + 224]:
                revert with 0, 17
            mem[mem[64]] = mem[(15 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not s * t:
                revert with 0, 18
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                mem[(8 * ceil32(return_data.size)) + 96] = 2
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.usdc() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                mem[(10 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                       args mem[(10 * ceil32(return_data.size)) + 196 len 16 * ceil32(return_data.size)]
                mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                mem[(12 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.dexRouter() with:
                        gas gas_remaining wei
                       args mem[(12 * ceil32(return_data.size)) + 196 len 20 * ceil32(return_data.size)]
                mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(14 * ceil32(return_data.size)) + 196] = 1
                mem[(14 * ceil32(return_data.size)) + 228] = 64
                mem[(14 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                u = (8 * ceil32(return_data.size)) + 128
                v = (14 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 1, Array(len=2, data=mem[(14 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(14 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (15 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _538 = mem[(14 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (14 * ceil32(return_data.size)) + return_data.size + 192
                _547 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(15 * ceil32(return_data.size)) + 192] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _538 + (32 * _547) + 32
                mem[(15 * ceil32(return_data.size)) + 224 len 32 * _547] = mem[(14 * ceil32(return_data.size)) + _538 + 224 len 32 * _547]
                if 0 >= _547:
                    revert with 0, 50
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 196 len 16 * ceil32(return_data.size)]
                    mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(12 * ceil32(return_data.size)) + 196 len 20 * ceil32(return_data.size)]
                    mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(14 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(14 * ceil32(return_data.size)) + 228] = 64
                    mem[(14 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (8 * ceil32(return_data.size)) + 128
                    v = (14 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(14 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(14 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (15 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _537 = mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                    require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (14 * ceil32(return_data.size)) + return_data.size + 192
                    _546 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                    mem[(15 * ceil32(return_data.size)) + 192] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    require return_data.size >= _537 + (32 * _546) + 32
                    mem[(15 * ceil32(return_data.size)) + 224 len 32 * _546] = mem[(14 * ceil32(return_data.size)) + _537 + 224 len 32 * _546]
                    if 0 >= _546:
                        revert with 0, 50
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 192] = 0xb8746e7300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 196 len 16 * ceil32(return_data.size)]
                    mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(12 * ceil32(return_data.size)) + 196 len 20 * ceil32(return_data.size)]
                    mem[(12 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(14 * ceil32(return_data.size)) + 196] = u * v
                    mem[(14 * ceil32(return_data.size)) + 228] = 64
                    mem[(14 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    w = (8 * ceil32(return_data.size)) + 128
                    x = (14 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[x] = mem[w + 12 len 20]
                        idx = idx + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args u * v, Array(len=2, data=mem[(14 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(14 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (15 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _616 = mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32
                    require mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 <= test266151307()
                    require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 223 < (14 * ceil32(return_data.size)) + return_data.size + 192
                    _621 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                    if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 1 < 0 or (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (15 * ceil32(return_data.size)) + ceil32(32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193
                    mem[(15 * ceil32(return_data.size)) + 192] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                    require return_data.size >= _616 + (32 * _621) + 32
                    mem[(15 * ceil32(return_data.size)) + 224 len 32 * _621] = mem[(14 * ceil32(return_data.size)) + _616 + 224 len 32 * _621]
                    if 0 >= _621:
                        revert with 0, 50
            if mem[(15 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / s * t > -1 / mem[(15 * ceil32(return_data.size)) + 224]:
                revert with 0, 17
            mem[mem[64]] = mem[(15 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t
    return memory
      from mem[64]
       len 32
}

function sub_ebfc5b37(?) payable {
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                mem[(14 * ceil32(return_data.size)) + 96] = 2
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.usdc() with:
                        gas gas_remaining wei
                mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.dexRouter() with:
                        gas gas_remaining wei
                       args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(19 * ceil32(return_data.size)) + 196] = 1
                mem[(19 * ceil32(return_data.size)) + 228] = 64
                mem[(19 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (14 * ceil32(return_data.size)) + 128
                t = (19 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (20 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _686 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                _700 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _686 + (32 * _700) + 32
                mem[(20 * ceil32(return_data.size)) + 224 len 32 * _700] = mem[(19 * ceil32(return_data.size)) + _686 + 224 len 32 * _700]
                if 0 >= _700:
                    revert with 0, 50
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _685 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _699 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    require return_data.size >= _685 + (32 * _699) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _699] = mem[(19 * ceil32(return_data.size)) + _685 + 224 len 32 * _699]
                    if 0 >= _699:
                        revert with 0, 50
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = s * t
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s * t, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _1097 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _1107 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    require return_data.size >= _1097 + (32 * _1107) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1107] = mem[(19 * ceil32(return_data.size)) + _1097 + 224 len 32 * _1107]
                    if 0 >= _1107:
                        revert with 0, 50
            if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]:
                revert with 0, 18
            mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _683 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _697 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _683 + (32 * _697) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _697] = mem[(19 * ceil32(return_data.size)) + _683 + 224 len 32 * _697]
                    if 0 >= _697:
                        revert with 0, 50
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _682 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _696 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        require return_data.size >= _682 + (32 * _696) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _696] = mem[(19 * ceil32(return_data.size)) + _682 + 224 len 32 * _696]
                        if 0 >= _696:
                            revert with 0, 50
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = s * t
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s * t, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1096 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1106 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                        require return_data.size >= _1096 + (32 * _1106) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1106] = mem[(19 * ceil32(return_data.size)) + _1096 + 224 len 32 * _1106]
                        if 0 >= _1106:
                            revert with 0, 50
                if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s * t:
                    revert with 0, 18
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _1095 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _1105 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _1095 + (32 * _1105) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1105] = mem[(19 * ceil32(return_data.size)) + _1095 + 224 len 32 * _1105]
                    if 0 >= _1105:
                        revert with 0, 50
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1094 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1104 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        require return_data.size >= _1094 + (32 * _1104) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1104] = mem[(19 * ceil32(return_data.size)) + _1094 + 224 len 32 * _1104]
                        if 0 >= _1104:
                            revert with 0, 50
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = u * v
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        w = (14 * ceil32(return_data.size)) + 128
                        x = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[x] = mem[w + 12 len 20]
                            idx = idx + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args u * v, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1253 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1255 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                        require return_data.size >= _1253 + (32 * _1255) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1255] = mem[(19 * ceil32(return_data.size)) + _1253 + 224 len 32 * _1255]
                        if 0 >= _1255:
                            revert with 0, 50
                if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / s * t > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t:
                    revert with 0, 18
                mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t
    else:
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                mem[(14 * ceil32(return_data.size)) + 96] = 2
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.usdc() with:
                        gas gas_remaining wei
                mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.dexRouter() with:
                        gas gas_remaining wei
                       args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(19 * ceil32(return_data.size)) + 196] = 1
                mem[(19 * ceil32(return_data.size)) + 228] = 64
                mem[(19 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (14 * ceil32(return_data.size)) + 128
                t = (19 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (20 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _692 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                _706 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _692 + (32 * _706) + 32
                mem[(20 * ceil32(return_data.size)) + 224 len 32 * _706] = mem[(19 * ceil32(return_data.size)) + _692 + 224 len 32 * _706]
                if 0 >= _706:
                    revert with 0, 50
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _691 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _705 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    require return_data.size >= _691 + (32 * _705) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _705] = mem[(19 * ceil32(return_data.size)) + _691 + 224 len 32 * _705]
                    if 0 >= _705:
                        revert with 0, 50
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = s * t
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s * t, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _1102 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _1112 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    require return_data.size >= _1102 + (32 * _1112) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1112] = mem[(19 * ceil32(return_data.size)) + _1102 + 224 len 32 * _1112]
                    if 0 >= _1112:
                        revert with 0, 50
            if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]:
                revert with 0, 18
            mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _689 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _703 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _689 + (32 * _703) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _703] = mem[(19 * ceil32(return_data.size)) + _689 + 224 len 32 * _703]
                    if 0 >= _703:
                        revert with 0, 50
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _688 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _702 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        require return_data.size >= _688 + (32 * _702) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _702] = mem[(19 * ceil32(return_data.size)) + _688 + 224 len 32 * _702]
                        if 0 >= _702:
                            revert with 0, 50
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = s * t
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s * t, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1101 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1111 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                        require return_data.size >= _1101 + (32 * _1111) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1111] = mem[(19 * ceil32(return_data.size)) + _1101 + 224 len 32 * _1111]
                        if 0 >= _1111:
                            revert with 0, 50
                if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s * t:
                    revert with 0, 18
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _1100 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _1110 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _1100 + (32 * _1110) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1110] = mem[(19 * ceil32(return_data.size)) + _1100 + 224 len 32 * _1110]
                    if 0 >= _1110:
                        revert with 0, 50
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1099 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1109 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        require return_data.size >= _1099 + (32 * _1109) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1109] = mem[(19 * ceil32(return_data.size)) + _1099 + 224 len 32 * _1109]
                        if 0 >= _1109:
                            revert with 0, 50
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = u * v
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        w = (14 * ceil32(return_data.size)) + 128
                        x = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[x] = mem[w + 12 len 20]
                            idx = idx + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args u * v, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1254 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1256 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                        require return_data.size >= _1254 + (32 * _1256) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1256] = mem[(19 * ceil32(return_data.size)) + _1254 + 224 len 32 * _1256]
                        if 0 >= _1256:
                            revert with 0, 50
                if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / s * t > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t:
                    revert with 0, 18
                mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t
    return memory
      from mem[64]
       len 32
}

function sub_e435a949(?) payable {
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.liquidityPair() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                mem[(14 * ceil32(return_data.size)) + 96] = 2
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.usdc() with:
                        gas gas_remaining wei
                mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.dexRouter() with:
                        gas gas_remaining wei
                       args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(19 * ceil32(return_data.size)) + 196] = 1
                mem[(19 * ceil32(return_data.size)) + 228] = 64
                mem[(19 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (14 * ceil32(return_data.size)) + 128
                t = (19 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (20 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _734 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                _748 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _734 + (32 * _748) + 32
                mem[(20 * ceil32(return_data.size)) + 224 len 32 * _748] = mem[(19 * ceil32(return_data.size)) + _734 + 224 len 32 * _748]
                if 0 >= _748:
                    revert with 0, 50
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _733 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _747 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    require return_data.size >= _733 + (32 * _747) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _747] = mem[(19 * ceil32(return_data.size)) + _733 + 224 len 32 * _747]
                    if 0 >= _747:
                        revert with 0, 50
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = s * t
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s * t, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _1217 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _1227 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    require return_data.size >= _1217 + (32 * _1227) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1227] = mem[(19 * ceil32(return_data.size)) + _1217 + 224 len 32 * _1227]
                    if 0 >= _1227:
                        revert with 0, 50
            if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]:
                revert with 0, 18
            if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] <= sub_583d4cc6:
                return sub_535aa3bb
            if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] >= sub_adb2dff9:
                return sub_ac55eac2
            if sub_adb2dff9 < sub_583d4cc6:
                revert with 0, 17
            if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] < sub_583d4cc6:
                revert with 0, 17
            if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]) - sub_583d4cc6 > -1 / sub_ac55eac2:
                revert with 0, 17
            if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]:
                revert with 0, 17
            if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]) > -1 / sub_535aa3bb:
                revert with 0, 17
            if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                revert with 0, 17
            if not sub_adb2dff9 - sub_583d4cc6:
                revert with 0, 18
            mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _731 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _745 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _731 + (32 * _745) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _745] = mem[(19 * ceil32(return_data.size)) + _731 + 224 len 32 * _745]
                    if 0 >= _745:
                        revert with 0, 50
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _730 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _744 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        require return_data.size >= _730 + (32 * _744) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _744] = mem[(19 * ceil32(return_data.size)) + _730 + 224 len 32 * _744]
                        if 0 >= _744:
                            revert with 0, 50
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = s * t
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s * t, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1216 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1226 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                        require return_data.size >= _1216 + (32 * _1226) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1226] = mem[(19 * ceil32(return_data.size)) + _1216 + 224 len 32 * _1226]
                        if 0 >= _1226:
                            revert with 0, 50
                if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= sub_583d4cc6:
                    return sub_535aa3bb
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= sub_adb2dff9:
                    return sub_ac55eac2
                if sub_adb2dff9 < sub_583d4cc6:
                    revert with 0, 17
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) < sub_583d4cc6:
                    revert with 0, 17
                if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) - sub_583d4cc6 > -1 / sub_ac55eac2:
                    revert with 0, 17
                if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) > -1 / sub_535aa3bb:
                    revert with 0, 17
                if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                    revert with 0, 17
                if not sub_adb2dff9 - sub_583d4cc6:
                    revert with 0, 18
                mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s * t:
                    revert with 0, 18
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _1215 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _1225 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _1215 + (32 * _1225) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1225] = mem[(19 * ceil32(return_data.size)) + _1215 + 224 len 32 * _1225]
                    if 0 >= _1225:
                        revert with 0, 50
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1214 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1224 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        require return_data.size >= _1214 + (32 * _1224) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1224] = mem[(19 * ceil32(return_data.size)) + _1214 + 224 len 32 * _1224]
                        if 0 >= _1224:
                            revert with 0, 50
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = u * v
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        w = (14 * ceil32(return_data.size)) + 128
                        x = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[x] = mem[w + 12 len 20]
                            idx = idx + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args u * v, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1445 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1447 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                        require return_data.size >= _1445 + (32 * _1447) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1447] = mem[(19 * ceil32(return_data.size)) + _1445 + 224 len 32 * _1447]
                        if 0 >= _1447:
                            revert with 0, 50
                if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / s * t > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t:
                    revert with 0, 18
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t <= sub_583d4cc6:
                    return sub_535aa3bb
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t >= sub_adb2dff9:
                    return sub_ac55eac2
                if sub_adb2dff9 < sub_583d4cc6:
                    revert with 0, 17
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t < sub_583d4cc6:
                    revert with 0, 17
                if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t) - sub_583d4cc6 > -1 / sub_ac55eac2:
                    revert with 0, 17
                if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t:
                    revert with 0, 17
                if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t) > -1 / sub_535aa3bb:
                    revert with 0, 17
                if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                    revert with 0, 17
                if not sub_adb2dff9 - sub_583d4cc6:
                    revert with 0, 18
                mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
    else:
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                mem[(14 * ceil32(return_data.size)) + 96] = 2
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.usdc() with:
                        gas gas_remaining wei
                mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.dexRouter() with:
                        gas gas_remaining wei
                       args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(19 * ceil32(return_data.size)) + 196] = 1
                mem[(19 * ceil32(return_data.size)) + 228] = 64
                mem[(19 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (14 * ceil32(return_data.size)) + 128
                t = (19 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (20 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _740 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                _754 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _740 + (32 * _754) + 32
                mem[(20 * ceil32(return_data.size)) + 224 len 32 * _754] = mem[(19 * ceil32(return_data.size)) + _740 + 224 len 32 * _754]
                if 0 >= _754:
                    revert with 0, 50
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _739 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _753 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                    require return_data.size >= _739 + (32 * _753) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _753] = mem[(19 * ceil32(return_data.size)) + _739 + 224 len 32 * _753]
                    if 0 >= _753:
                        revert with 0, 50
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = s * t
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args s * t, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _1222 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _1232 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                    require return_data.size >= _1222 + (32 * _1232) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1232] = mem[(19 * ceil32(return_data.size)) + _1222 + 224 len 32 * _1232]
                    if 0 >= _1232:
                        revert with 0, 50
            if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]:
                revert with 0, 18
            if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] <= sub_583d4cc6:
                return sub_535aa3bb
            if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] >= sub_adb2dff9:
                return sub_ac55eac2
            if sub_adb2dff9 < sub_583d4cc6:
                revert with 0, 17
            if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] < sub_583d4cc6:
                revert with 0, 17
            if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]) - sub_583d4cc6 > -1 / sub_ac55eac2:
                revert with 0, 17
            if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]:
                revert with 0, 17
            if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0]) > -1 / sub_535aa3bb:
                revert with 0, 17
            if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                revert with 0, 17
            if not sub_adb2dff9 - sub_583d4cc6:
                revert with 0, 18
            mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _737 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _751 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _737 + (32 * _751) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _751] = mem[(19 * ceil32(return_data.size)) + _737 + 224 len 32 * _751]
                    if 0 >= _751:
                        revert with 0, 50
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _736 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _750 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        require return_data.size >= _736 + (32 * _750) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _750] = mem[(19 * ceil32(return_data.size)) + _736 + 224 len 32 * _750]
                        if 0 >= _750:
                            revert with 0, 50
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = s * t
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args s * t, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1221 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1231 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                        require return_data.size >= _1221 + (32 * _1231) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1231] = mem[(19 * ceil32(return_data.size)) + _1221 + 224 len 32 * _1231]
                        if 0 >= _1231:
                            revert with 0, 50
                if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= sub_583d4cc6:
                    return sub_535aa3bb
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= sub_adb2dff9:
                    return sub_ac55eac2
                if sub_adb2dff9 < sub_583d4cc6:
                    revert with 0, 17
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) < sub_583d4cc6:
                    revert with 0, 17
                if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) - sub_583d4cc6 > -1 / sub_ac55eac2:
                    revert with 0, 17
                if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) > -1 / sub_535aa3bb:
                    revert with 0, 17
                if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                    revert with 0, 17
                if not sub_adb2dff9 - sub_583d4cc6:
                    revert with 0, 18
                mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s * t:
                    revert with 0, 18
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.usdc() with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xb8746e73 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.dexRouter() with:
                            gas gas_remaining wei
                           args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                    mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (20 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _1220 = mem[(19 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                    _1230 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _1220 + (32 * _1230) + 32
                    mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1230] = mem[(19 * ceil32(return_data.size)) + _1220 + 224 len 32 * _1230]
                    if 0 >= _1230:
                        revert with 0, 50
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1219 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1229 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                        require return_data.size >= _1219 + (32 * _1229) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1229] = mem[(19 * ceil32(return_data.size)) + _1219 + 224 len 32 * _1229]
                        if 0 >= _1229:
                            revert with 0, 50
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        mem[(14 * ceil32(return_data.size)) + 96] = 2
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.usdc() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xb8746e73 with:
                                gas gas_remaining wei
                        mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(14 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        mem[(17 * ceil32(return_data.size)) + 192] = 0x758d92400000000000000000000000000000000000000000000000000000000
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.dexRouter() with:
                                gas gas_remaining wei
                               args mem[(17 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
                        mem[(17 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = u * v
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        w = (14 * ceil32(return_data.size)) + 128
                        x = (19 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[x] = mem[w + 12 len 20]
                            idx = idx + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args u * v, Array(len=2, data=mem[(19 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1446 = mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 223 < (19 * ceil32(return_data.size)) + return_data.size + 192
                        _1448 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(32 * mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]) + 193
                        mem[(20 * ceil32(return_data.size)) + 192] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, u * v) >> 32 + 192]
                        require return_data.size >= _1446 + (32 * _1448) + 32
                        mem[(20 * ceil32(return_data.size)) + 224 len 32 * _1448] = mem[(19 * ceil32(return_data.size)) + _1446 + 224 len 32 * _1448]
                        if 0 >= _1448:
                            revert with 0, 50
                if mem[(20 * ceil32(return_data.size)) + 224] and ext_call.return_data[0] / s * t > -1 / mem[(20 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t:
                    revert with 0, 18
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t <= sub_583d4cc6:
                    return sub_535aa3bb
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t >= sub_adb2dff9:
                    return sub_ac55eac2
                if sub_adb2dff9 < sub_583d4cc6:
                    revert with 0, 17
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t < sub_583d4cc6:
                    revert with 0, 17
                if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t) - sub_583d4cc6 > -1 / sub_ac55eac2:
                    revert with 0, 17
                if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t:
                    revert with 0, 17
                if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t) > -1 / sub_535aa3bb:
                    revert with 0, 17
                if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                    revert with 0, 17
                if not sub_adb2dff9 - sub_583d4cc6:
                    revert with 0, 18
                mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[(20 * ceil32(return_data.size)) + 224] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
    return memory
      from mem[64]
       len 32
}



}
