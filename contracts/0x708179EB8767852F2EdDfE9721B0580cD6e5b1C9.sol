contract main {




// =====================  Runtime code  =====================


#
#  - sub_338dce79(?)
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
    mem[(6 * ceil32(return_data.size)) + 192] = _33
    require return_data.size >= _32 + (32 * _33) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _33] = mem[(4 * ceil32(return_data.size)) + _32 + 224 len 32 * _33]
    if 0 >= _33:
        revert with 0, 50
    mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_95afe299(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Amount must be above zero'
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
    call address(ext_call.return_data[0]).redeem(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1:
        _41 = mem[64]
        mem[64] = mem[64] + 32
        mem[_41] = 0
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xc84eb624 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _45 = mem[_44]
        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 0
        s = 0
        while s < 0:
            mem[s + mem[64] + 100] = mem[s + _41 + 32]
            s = s + 32
            continue 
        require ext_code.size(sub_4b87af47Address)
        call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _72 = mem[_70]
        require mem[_70] == mem[_70 + 12 len 20]
        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _45
        require ext_code.size(address(_72))
        call address(_72).addReputation(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, _45
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        mem[(8 * ceil32(return_data.size)) + 192] = _75
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
            mem[(8 * ceil32(return_data.size)) + 192] = _74
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
            mem[(8 * ceil32(return_data.size)) + 192] = _112
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
        mem[(10 * ceil32(return_data.size)) + 192] = _107
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
            mem[(10 * ceil32(return_data.size)) + 192] = _106
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
            mem[(10 * ceil32(return_data.size)) + 192] = _157
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
    if arg1 <= 0:
        revert with 0, 'Amount must be above zero'
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
    _299 = mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
    _300 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(12 * ceil32(return_data.size)) + 192] = _300
    require return_data.size >= _299 + (32 * _300) + 32
    mem[(12 * ceil32(return_data.size)) + 224 len 32 * _300] = mem[(11 * ceil32(return_data.size)) + _299 + 224 len 32 * _300]
    if 0 >= _300:
        revert with 0, 50
    _554 = mem[(12 * ceil32(return_data.size)) + 224]
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
    _557 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _558 = mem[_557]
    require mem[_557] == mem[_557 + 12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.usdc() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _561 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _562 = mem[_561]
    require mem[_561] == mem[_561 + 12 len 20]
    _563 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = address(_558)
    mem[mem[64] + 100] = (ext_call.return_data[0] * arg1 * _554) - (sub_e808bee6 * arg1 * _554) / ext_call.return_data[0]
    _564 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_563 + 132] = 32
    mem[_563 + 164] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_562)):
        revert with 0, 'Address: call to non-contract'
    _571 = mem[_564]
    mem[_563 + 196 len ceil32(mem[_564])] = mem[_564 + 32 len ceil32(mem[_564])]
    if ceil32(_571) <= _571:
        call address(_562) with:
             gas gas_remaining wei
            args mem[_563 + 200 len _571 - 4]
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
                    _1032 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1032] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1059 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1069 = mem[_1059]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1032 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    mem[mem[64] + 36] = _1069
                    require ext_code.size(address(_1291))
                    call address(_1291).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1069
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
                    _1035 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1035] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1060 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1070 = mem[_1060]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1035 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    mem[mem[64] + 36] = _1070
                    require ext_code.size(address(_1293))
                    call address(_1293).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1070
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[64] = _563 + ceil32(return_data.size) + 197
            mem[_563 + 196] = return_data.size
            mem[_563 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                idx = 0
                while idx < arg1:
                    _1039 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1039] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1061 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1073 = mem[_1061]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1039 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    mem[mem[64] + 36] = _1073
                    require ext_code.size(address(_1295))
                    call address(_1295).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1073
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                require mem[_563 + 228] == bool(mem[_563 + 228])
                if not mem[_563 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < arg1:
                    _1042 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1042] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1074 = mem[_1062]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1042 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    mem[mem[64] + 36] = _1074
                    require ext_code.size(address(_1297))
                    call address(_1297).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1074
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        mem[_571 + _563 + 196] = 0
        call address(_562) with:
             gas gas_remaining wei
            args mem[_563 + 200 len _571 - 4]
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
                    _1046 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1046] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1077 = mem[_1063]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1046 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    mem[mem[64] + 36] = _1077
                    require ext_code.size(address(_1299))
                    call address(_1299).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1077
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
                    _1049 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1049] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1064 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1078 = mem[_1064]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1049 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    mem[mem[64] + 36] = _1078
                    require ext_code.size(address(_1301))
                    call address(_1301).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1078
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[64] = _563 + ceil32(return_data.size) + 197
            mem[_563 + 196] = return_data.size
            mem[_563 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                idx = 0
                while idx < arg1:
                    _1053 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1053] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1065 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1081 = mem[_1065]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1053 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    mem[mem[64] + 36] = _1081
                    require ext_code.size(address(_1303))
                    call address(_1303).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1081
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                require mem[_563 + 228] == bool(mem[_563 + 228])
                if not mem[_563 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < arg1:
                    _1056 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1056] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x4549a16e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1066 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1082 = mem[_1066]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _1056 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    _1289 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1305 = mem[_1289]
                    require mem[_1289] == mem[_1289 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1082
                    require ext_code.size(address(_1305))
                    call address(_1305).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1082
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
            mem[(15 * ceil32(return_data.size)) + 192] = _342
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
                mem[(15 * ceil32(return_data.size)) + 192] = _341
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
                mem[(15 * ceil32(return_data.size)) + 192] = _551
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
                mem[(15 * ceil32(return_data.size)) + 192] = _339
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
                    mem[(15 * ceil32(return_data.size)) + 192] = _338
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
                    mem[(15 * ceil32(return_data.size)) + 192] = _548
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
                mem[(15 * ceil32(return_data.size)) + 192] = _547
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
                    mem[(15 * ceil32(return_data.size)) + 192] = _546
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
                    mem[(15 * ceil32(return_data.size)) + 192] = _621
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

function sub_3bd611b1(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Amount must be above zero'
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
    staticcall settingsAddress.0xcfe19c66 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x57cb6dd4 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.PRECISION() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.treasuryFee() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 * ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb8746e73 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 196] = arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 96] = 100
    mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(8 * ceil32(return_data.size)) + 228] = 32
    mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(8 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
    mem[(8 * ceil32(return_data.size)) + 392] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[0]:
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.rewardsPool() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.PRECISION() with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.rewardPoolFee() with:
                    gas gas_remaining wei
            mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(13 * ceil32(return_data.size)) + 328] = msg.sender
            mem[(13 * ceil32(return_data.size)) + 360] = address(ext_call.return_data[0])
            mem[(13 * ceil32(return_data.size)) + 392] = arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 292] = 100
            mem[(13 * ceil32(return_data.size)) + 324 len 4] = unknown_0x23b872dd(?????)
            mem[64] = (13 * ceil32(return_data.size)) + 488
            mem[(13 * ceil32(return_data.size)) + 424] = 32
            mem[(13 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(13 * ceil32(return_data.size)) + 488 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            mem[(13 * ceil32(return_data.size)) + 588] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) << 544)
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
                        _6196 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6196] = 0
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xc84eb624 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6431 = mem[_6329]
                        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 100] = mem[s + _6196 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_4b87af47Address)
                        call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                        _8093 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8221 = mem[_8093]
                        require mem[_8093] == mem[_8093 + 12 len 20]
                        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _6431
                        require ext_code.size(address(_8221))
                        call address(_8221).addReputation(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _6431
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
                        _6199 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6199] = 0
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xc84eb624 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6432 = mem[_6330]
                        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 100] = mem[s + _6199 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_4b87af47Address)
                        call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                        _8095 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8223 = mem[_8095]
                        require mem[_8095] == mem[_8095 + 12 len 20]
                        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _6432
                        require ext_code.size(address(_8223))
                        call address(_8223).addReputation(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _6432
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[64] = (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                mem[(13 * ceil32(return_data.size)) + 488] = return_data.size
                mem[(13 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    idx = 0
                    while idx < arg1:
                        _6203 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6203] = 0
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xc84eb624 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6435 = mem[_6331]
                        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 100] = mem[s + _6203 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_4b87af47Address)
                        call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                        _8097 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8225 = mem[_8097]
                        require mem[_8097] == mem[_8097 + 12 len 20]
                        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _6435
                        require ext_code.size(address(_8225))
                        call address(_8225).addReputation(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _6435
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    require mem[(13 * ceil32(return_data.size)) + 520] == bool(mem[(13 * ceil32(return_data.size)) + 520])
                    if not mem[(13 * ceil32(return_data.size)) + 520]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < arg1:
                        _6206 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6206] = 0
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xc84eb624 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6332 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6436 = mem[_6332]
                        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 100] = mem[s + _6206 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_4b87af47Address)
                        call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                        _8099 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8227 = mem[_8099]
                        require mem[_8099] == mem[_8099 + 12 len 20]
                        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _6436
                        require ext_code.size(address(_8227))
                        call address(_8227).addReputation(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _6436
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
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.rewardsPool() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.PRECISION() with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.rewardPoolFee() with:
                    gas gas_remaining wei
            mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xb8746e73 with:
                    gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(13 * ceil32(return_data.size)) + 328] = msg.sender
            mem[(13 * ceil32(return_data.size)) + 360] = address(ext_call.return_data[0])
            mem[(13 * ceil32(return_data.size)) + 392] = arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 292] = 100
            mem[(13 * ceil32(return_data.size)) + 324 len 4] = unknown_0x23b872dd(?????)
            mem[64] = (13 * ceil32(return_data.size)) + 488
            mem[(13 * ceil32(return_data.size)) + 424] = 32
            mem[(13 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(13 * ceil32(return_data.size)) + 488 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            mem[(13 * ceil32(return_data.size)) + 588] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) << 544)
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
                        _6224 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6224] = 0
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xc84eb624 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6337 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6447 = mem[_6337]
                        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 100] = mem[s + _6224 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_4b87af47Address)
                        call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                        _8109 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8237 = mem[_8109]
                        require mem[_8109] == mem[_8109 + 12 len 20]
                        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _6447
                        require ext_code.size(address(_8237))
                        call address(_8237).addReputation(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _6447
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
                        _6227 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6227] = 0
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xc84eb624 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6338 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6448 = mem[_6338]
                        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 100] = mem[s + _6227 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_4b87af47Address)
                        call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                        _8111 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8239 = mem[_8111]
                        require mem[_8111] == mem[_8111 + 12 len 20]
                        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _6448
                        require ext_code.size(address(_8239))
                        call address(_8239).addReputation(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _6448
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[64] = (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                mem[(13 * ceil32(return_data.size)) + 488] = return_data.size
                mem[(13 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    idx = 0
                    while idx < arg1:
                        _6231 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6231] = 0
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xc84eb624 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6339 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6451 = mem[_6339]
                        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 100] = mem[s + _6231 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_4b87af47Address)
                        call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                        _8113 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8241 = mem[_8113]
                        require mem[_8113] == mem[_8113 + 12 len 20]
                        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _6451
                        require ext_code.size(address(_8241))
                        call address(_8241).addReputation(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _6451
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    require mem[(13 * ceil32(return_data.size)) + 520] == bool(mem[(13 * ceil32(return_data.size)) + 520])
                    if not mem[(13 * ceil32(return_data.size)) + 520]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < arg1:
                        _6234 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6234] = 0
                        require ext_code.size(settingsAddress)
                        staticcall settingsAddress.0xc84eb624 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6340 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6452 = mem[_6340]
                        mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 100] = mem[s + _6234 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(sub_4b87af47Address)
                        call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                        _8115 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8243 = mem[_8115]
                        require mem[_8115] == mem[_8115 + 12 len 20]
                        mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _6452
                        require ext_code.size(address(_8243))
                        call address(_8243).addReputation(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _6452
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = return_data.size
    mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.rewardsPool() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.PRECISION() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.rewardPoolFee() with:
                gas gas_remaining wei
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xb8746e73 with:
                gas gas_remaining wei
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(ext_call.return_data[0])
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 100
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
        mem[64] = (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) << 544)
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
                    _6252 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6252] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xc84eb624 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6463 = mem[_6345]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _6252 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    _8125 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8253 = mem[_8125]
                    require mem[_8125] == mem[_8125 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _6463
                    require ext_code.size(address(_8253))
                    call address(_8253).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _6463
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
                    _6255 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6255] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xc84eb624 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6346 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6464 = mem[_6346]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _6255 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    _8127 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8255 = mem[_8127]
                    require mem[_8127] == mem[_8127 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _6464
                    require ext_code.size(address(_8255))
                    call address(_8255).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _6464
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        mem[64] = (16 * ceil32(return_data.size)) + 490
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(16 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(16 * ceil32(return_data.size)) + 494] = 32
            mem[(16 * ceil32(return_data.size)) + 526] = 32
            mem[(16 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
            revert with memory
              from (16 * ceil32(return_data.size)) + 490
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            idx = 0
            while idx < arg1:
                _6259 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6259] = 0
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xc84eb624 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6347 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6467 = mem[_6347]
                mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 100] = mem[s + _6259 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_4b87af47Address)
                call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                _8129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8257 = mem[_8129]
                require mem[_8129] == mem[_8129 + 12 len 20]
                mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _6467
                require ext_code.size(address(_8257))
                call address(_8257).addReputation(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, _6467
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        require return_data.size >= 32
        require mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
        if mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
            idx = 0
            while idx < arg1:
                _6262 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6262] = 0
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xc84eb624 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6348 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6468 = mem[_6348]
                mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 100] = mem[s + _6262 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_4b87af47Address)
                call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                _8131 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8259 = mem[_8131]
                require mem[_8131] == mem[_8131 + 12 len 20]
                mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _6468
                require ext_code.size(address(_8259))
                call address(_8259).addReputation(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, _6468
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        require return_data.size >= 32
        require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
        if not mem[(8 * ceil32(return_data.size)) + 324]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.rewardsPool() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.PRECISION() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.rewardPoolFee() with:
                gas gas_remaining wei
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xb8746e73 with:
                gas gas_remaining wei
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(ext_call.return_data[0])
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 100
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
        mem[64] = (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0) << 544)
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
                    _6280 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6280] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xc84eb624 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6479 = mem[_6353]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _6280 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    _8141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8269 = mem[_8141]
                    require mem[_8141] == mem[_8141 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _6479
                    require ext_code.size(address(_8269))
                    call address(_8269).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _6479
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
                    _6283 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6283] = 0
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0xc84eb624 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6480 = mem[_6354]
                    mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 100] = mem[s + _6283 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_4b87af47Address)
                    call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                    _8143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8271 = mem[_8143]
                    require mem[_8143] == mem[_8143 + 12 len 20]
                    mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _6480
                    require ext_code.size(address(_8271))
                    call address(_8271).addReputation(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _6480
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        mem[64] = (16 * ceil32(return_data.size)) + 490
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(16 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(16 * ceil32(return_data.size)) + 494] = 32
            mem[(16 * ceil32(return_data.size)) + 526] = 32
            mem[(16 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
            revert with memory
              from (16 * ceil32(return_data.size)) + 490
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            idx = 0
            while idx < arg1:
                _6287 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6287] = 0
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xc84eb624 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6483 = mem[_6355]
                mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 100] = mem[s + _6287 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_4b87af47Address)
                call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                _8145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8273 = mem[_8145]
                require mem[_8145] == mem[_8145 + 12 len 20]
                mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _6483
                require ext_code.size(address(_8273))
                call address(_8273).addReputation(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, _6483
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        require return_data.size >= 32
        require mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
        if mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
            idx = 0
            while idx < arg1:
                _6290 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6290] = 0
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xc84eb624 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6356 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6484 = mem[_6356]
                mem[mem[64]] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 100] = mem[s + _6290 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_4b87af47Address)
                call sub_4b87af47Address.mint(address arg1, string arg2) with:
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
                _8147 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8275 = mem[_8147]
                require mem[_8147] == mem[_8147 + 12 len 20]
                mem[mem[64]] = 0xe24f831300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _6484
                require ext_code.size(address(_8275))
                call address(_8275).addReputation(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, _6484
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    ('iszero', ('mem', ('range', ('add', 521, ('mul', 13, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize'))), 32)))
    mem[(16 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(16 * ceil32(return_data.size)) + 494] = 32
    mem[(16 * ceil32(return_data.size)) + 526] = 42
    mem[(16 * ceil32(return_data.size)) + 558] = 'SafeERC20: ERC20 operation did n'
    mem[(16 * ceil32(return_data.size)) + 590] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (16 * ceil32(return_data.size)) + 490
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
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
                mem[64] = (19 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(19 * ceil32(return_data.size)) + 196] = 1
                mem[(19 * ceil32(return_data.size)) + 228] = 64
                mem[(19 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (14 * ceil32(return_data.size)) + 128
                t = (19 * ceil32(return_data.size)) + 292
                while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _668 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _686 = mem[_668]
                require mem[_668] <= test266151307()
                require _668 + mem[_668] + 31 < _668 + return_data.size
                _700 = mem[_668 + mem[_668]]
                if mem[_668 + mem[_668]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_668 + mem[_668]]) + 1 < 0 or _668 + ceil32(return_data.size) + ceil32(32 * mem[_668 + mem[_668]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _668 + ceil32(return_data.size) + ceil32(32 * mem[_668 + mem[_668]]) + 1
                mem[_668 + ceil32(return_data.size)] = _700
                require return_data.size >= _686 + (32 * _700) + 32
                mem[_668 + ceil32(return_data.size) + 32 len 32 * _700] = mem[_668 + _686 + 32 len 32 * _700]
                if 0 >= _700:
                    revert with 0, 50
                if mem[_668 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_668 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[_668 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                    revert with 0, 18
                mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_668 + ceil32(return_data.size) + 32] * ext_call.return_data[0]
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _667 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _685 = mem[_667]
                    require mem[_667] <= test266151307()
                    require _667 + mem[_667] + 31 < _667 + return_data.size
                    _699 = mem[_667 + mem[_667]]
                    if mem[_667 + mem[_667]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_667 + mem[_667]]) + 1 < 0 or _667 + ceil32(return_data.size) + ceil32(32 * mem[_667 + mem[_667]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _667 + ceil32(return_data.size) + ceil32(32 * mem[_667 + mem[_667]]) + 1
                    mem[_667 + ceil32(return_data.size)] = _699
                    require return_data.size >= _685 + (32 * _699) + 32
                    mem[_667 + ceil32(return_data.size) + 32 len 32 * _699] = mem[_667 + _685 + 32 len 32 * _699]
                    if 0 >= _699:
                        revert with 0, 50
                    if mem[_667 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_667 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_667 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 18
                    mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_667 + ceil32(return_data.size) + 32] * ext_call.return_data[0]
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = s * t
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1085 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1097 = mem[_1085]
                    require mem[_1085] <= test266151307()
                    require _1085 + mem[_1085] + 31 < _1085 + return_data.size
                    _1107 = mem[_1085 + mem[_1085]]
                    if mem[_1085 + mem[_1085]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1085 + mem[_1085]]) + 1 < 0 or _1085 + ceil32(return_data.size) + ceil32(32 * mem[_1085 + mem[_1085]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1085 + ceil32(return_data.size) + ceil32(32 * mem[_1085 + mem[_1085]]) + 1
                    mem[_1085 + ceil32(return_data.size)] = _1107
                    require return_data.size >= _1097 + (32 * _1107) + 32
                    mem[_1085 + ceil32(return_data.size) + 32 len 32 * _1107] = mem[_1085 + _1097 + 32 len 32 * _1107]
                    if 0 >= _1107:
                        revert with 0, 50
                    if mem[_1085 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_1085 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_1085 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 18
                    mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1085 + ceil32(return_data.size) + 32] * ext_call.return_data[0]
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _663 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _683 = mem[_663]
                    require mem[_663] <= test266151307()
                    require _663 + mem[_663] + 31 < _663 + return_data.size
                    _697 = mem[_663 + mem[_663]]
                    if mem[_663 + mem[_663]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_663 + mem[_663]]) + 1 < 0 or _663 + ceil32(return_data.size) + ceil32(32 * mem[_663 + mem[_663]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _663 + ceil32(return_data.size) + ceil32(32 * mem[_663 + mem[_663]]) + 1
                    mem[_663 + ceil32(return_data.size)] = _697
                    require return_data.size >= _683 + (32 * _697) + 32
                    mem[_663 + ceil32(return_data.size) + 32 len 32 * _697] = mem[_663 + _683 + 32 len 32 * _697]
                    if 0 >= _697:
                        revert with 0, 50
                    if mem[_663 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_663 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_663 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_663 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _662 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _682 = mem[_662]
                        require mem[_662] <= test266151307()
                        require _662 + mem[_662] + 31 < _662 + return_data.size
                        _696 = mem[_662 + mem[_662]]
                        if mem[_662 + mem[_662]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_662 + mem[_662]]) + 1 < 0 or _662 + ceil32(return_data.size) + ceil32(32 * mem[_662 + mem[_662]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _662 + ceil32(return_data.size) + ceil32(32 * mem[_662 + mem[_662]]) + 1
                        mem[_662 + ceil32(return_data.size)] = _696
                        require return_data.size >= _682 + (32 * _696) + 32
                        mem[_662 + ceil32(return_data.size) + 32 len 32 * _696] = mem[_662 + _682 + 32 len 32 * _696]
                        if 0 >= _696:
                            revert with 0, 50
                        if mem[_662 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_662 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_662 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_662 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = s * t
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1084 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1096 = mem[_1084]
                        require mem[_1084] <= test266151307()
                        require _1084 + mem[_1084] + 31 < _1084 + return_data.size
                        _1106 = mem[_1084 + mem[_1084]]
                        if mem[_1084 + mem[_1084]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1084 + mem[_1084]]) + 1 < 0 or _1084 + ceil32(return_data.size) + ceil32(32 * mem[_1084 + mem[_1084]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1084 + ceil32(return_data.size) + ceil32(32 * mem[_1084 + mem[_1084]]) + 1
                        mem[_1084 + ceil32(return_data.size)] = _1106
                        require return_data.size >= _1096 + (32 * _1106) + 32
                        mem[_1084 + ceil32(return_data.size) + 32 len 32 * _1106] = mem[_1084 + _1096 + 32 len 32 * _1106]
                        if 0 >= _1106:
                            revert with 0, 50
                        if mem[_1084 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_1084 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1084 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1084 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1083 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1095 = mem[_1083]
                    require mem[_1083] <= test266151307()
                    require _1083 + mem[_1083] + 31 < _1083 + return_data.size
                    _1105 = mem[_1083 + mem[_1083]]
                    if mem[_1083 + mem[_1083]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1083 + mem[_1083]]) + 1 < 0 or _1083 + ceil32(return_data.size) + ceil32(32 * mem[_1083 + mem[_1083]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1083 + ceil32(return_data.size) + ceil32(32 * mem[_1083 + mem[_1083]]) + 1
                    mem[_1083 + ceil32(return_data.size)] = _1105
                    require return_data.size >= _1095 + (32 * _1105) + 32
                    mem[_1083 + ceil32(return_data.size) + 32 len 32 * _1105] = mem[_1083 + _1095 + 32 len 32 * _1105]
                    if 0 >= _1105:
                        revert with 0, 50
                    if mem[_1083 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1083 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_1083 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                        revert with 0, 18
                    mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1083 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1082 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1094 = mem[_1082]
                        require mem[_1082] <= test266151307()
                        require _1082 + mem[_1082] + 31 < _1082 + return_data.size
                        _1104 = mem[_1082 + mem[_1082]]
                        if mem[_1082 + mem[_1082]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1082 + mem[_1082]]) + 1 < 0 or _1082 + ceil32(return_data.size) + ceil32(32 * mem[_1082 + mem[_1082]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1082 + ceil32(return_data.size) + ceil32(32 * mem[_1082 + mem[_1082]]) + 1
                        mem[_1082 + ceil32(return_data.size)] = _1104
                        require return_data.size >= _1094 + (32 * _1104) + 32
                        mem[_1082 + ceil32(return_data.size) + 32 len 32 * _1104] = mem[_1082 + _1094 + 32 len 32 * _1104]
                        if 0 >= _1104:
                            revert with 0, 50
                        if mem[_1082 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1082 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1082 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 18
                        mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1082 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = u * v
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1251 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1253 = mem[_1251]
                        require mem[_1251] <= test266151307()
                        require _1251 + mem[_1251] + 31 < _1251 + return_data.size
                        _1255 = mem[_1251 + mem[_1251]]
                        if mem[_1251 + mem[_1251]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1251 + mem[_1251]]) + 1 < 0 or _1251 + ceil32(return_data.size) + ceil32(32 * mem[_1251 + mem[_1251]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1251 + ceil32(return_data.size) + ceil32(32 * mem[_1251 + mem[_1251]]) + 1
                        mem[_1251 + ceil32(return_data.size)] = _1255
                        require return_data.size >= _1253 + (32 * _1255) + 32
                        mem[_1251 + ceil32(return_data.size) + 32 len 32 * _1255] = mem[_1251 + _1253 + 32 len 32 * _1255]
                        if 0 >= _1255:
                            revert with 0, 50
                        if mem[_1251 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1251 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1251 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 18
                        mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1251 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t
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
                mem[64] = (19 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(19 * ceil32(return_data.size)) + 196] = 1
                mem[(19 * ceil32(return_data.size)) + 228] = 64
                mem[(19 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (14 * ceil32(return_data.size)) + 128
                t = (19 * ceil32(return_data.size)) + 292
                while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _678 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _692 = mem[_678]
                require mem[_678] <= test266151307()
                require _678 + mem[_678] + 31 < _678 + return_data.size
                _706 = mem[_678 + mem[_678]]
                if mem[_678 + mem[_678]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_678 + mem[_678]]) + 1 < 0 or _678 + ceil32(return_data.size) + ceil32(32 * mem[_678 + mem[_678]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _678 + ceil32(return_data.size) + ceil32(32 * mem[_678 + mem[_678]]) + 1
                mem[_678 + ceil32(return_data.size)] = _706
                require return_data.size >= _692 + (32 * _706) + 32
                mem[_678 + ceil32(return_data.size) + 32 len 32 * _706] = mem[_678 + _692 + 32 len 32 * _706]
                if 0 >= _706:
                    revert with 0, 50
                if mem[_678 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_678 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[_678 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                    revert with 0, 18
                mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_678 + ceil32(return_data.size) + 32] * ext_call.return_data[0]
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _677 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _691 = mem[_677]
                    require mem[_677] <= test266151307()
                    require _677 + mem[_677] + 31 < _677 + return_data.size
                    _705 = mem[_677 + mem[_677]]
                    if mem[_677 + mem[_677]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_677 + mem[_677]]) + 1 < 0 or _677 + ceil32(return_data.size) + ceil32(32 * mem[_677 + mem[_677]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _677 + ceil32(return_data.size) + ceil32(32 * mem[_677 + mem[_677]]) + 1
                    mem[_677 + ceil32(return_data.size)] = _705
                    require return_data.size >= _691 + (32 * _705) + 32
                    mem[_677 + ceil32(return_data.size) + 32 len 32 * _705] = mem[_677 + _691 + 32 len 32 * _705]
                    if 0 >= _705:
                        revert with 0, 50
                    if mem[_677 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_677 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_677 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 18
                    mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_677 + ceil32(return_data.size) + 32] * ext_call.return_data[0]
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = s * t
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1092 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1102 = mem[_1092]
                    require mem[_1092] <= test266151307()
                    require _1092 + mem[_1092] + 31 < _1092 + return_data.size
                    _1112 = mem[_1092 + mem[_1092]]
                    if mem[_1092 + mem[_1092]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1092 + mem[_1092]]) + 1 < 0 or _1092 + ceil32(return_data.size) + ceil32(32 * mem[_1092 + mem[_1092]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1092 + ceil32(return_data.size) + ceil32(32 * mem[_1092 + mem[_1092]]) + 1
                    mem[_1092 + ceil32(return_data.size)] = _1112
                    require return_data.size >= _1102 + (32 * _1112) + 32
                    mem[_1092 + ceil32(return_data.size) + 32 len 32 * _1112] = mem[_1092 + _1102 + 32 len 32 * _1112]
                    if 0 >= _1112:
                        revert with 0, 50
                    if mem[_1092 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_1092 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_1092 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 18
                    mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1092 + ceil32(return_data.size) + 32] * ext_call.return_data[0]
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _673 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _689 = mem[_673]
                    require mem[_673] <= test266151307()
                    require _673 + mem[_673] + 31 < _673 + return_data.size
                    _703 = mem[_673 + mem[_673]]
                    if mem[_673 + mem[_673]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_673 + mem[_673]]) + 1 < 0 or _673 + ceil32(return_data.size) + ceil32(32 * mem[_673 + mem[_673]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _673 + ceil32(return_data.size) + ceil32(32 * mem[_673 + mem[_673]]) + 1
                    mem[_673 + ceil32(return_data.size)] = _703
                    require return_data.size >= _689 + (32 * _703) + 32
                    mem[_673 + ceil32(return_data.size) + 32 len 32 * _703] = mem[_673 + _689 + 32 len 32 * _703]
                    if 0 >= _703:
                        revert with 0, 50
                    if mem[_673 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_673 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_673 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_673 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _672 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _688 = mem[_672]
                        require mem[_672] <= test266151307()
                        require _672 + mem[_672] + 31 < _672 + return_data.size
                        _702 = mem[_672 + mem[_672]]
                        if mem[_672 + mem[_672]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_672 + mem[_672]]) + 1 < 0 or _672 + ceil32(return_data.size) + ceil32(32 * mem[_672 + mem[_672]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _672 + ceil32(return_data.size) + ceil32(32 * mem[_672 + mem[_672]]) + 1
                        mem[_672 + ceil32(return_data.size)] = _702
                        require return_data.size >= _688 + (32 * _702) + 32
                        mem[_672 + ceil32(return_data.size) + 32 len 32 * _702] = mem[_672 + _688 + 32 len 32 * _702]
                        if 0 >= _702:
                            revert with 0, 50
                        if mem[_672 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_672 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_672 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_672 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = s * t
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1091 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1101 = mem[_1091]
                        require mem[_1091] <= test266151307()
                        require _1091 + mem[_1091] + 31 < _1091 + return_data.size
                        _1111 = mem[_1091 + mem[_1091]]
                        if mem[_1091 + mem[_1091]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1091 + mem[_1091]]) + 1 < 0 or _1091 + ceil32(return_data.size) + ceil32(32 * mem[_1091 + mem[_1091]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1091 + ceil32(return_data.size) + ceil32(32 * mem[_1091 + mem[_1091]]) + 1
                        mem[_1091 + ceil32(return_data.size)] = _1111
                        require return_data.size >= _1101 + (32 * _1111) + 32
                        mem[_1091 + ceil32(return_data.size) + 32 len 32 * _1111] = mem[_1091 + _1101 + 32 len 32 * _1111]
                        if 0 >= _1111:
                            revert with 0, 50
                        if mem[_1091 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_1091 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1091 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1091 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1090 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1100 = mem[_1090]
                    require mem[_1090] <= test266151307()
                    require _1090 + mem[_1090] + 31 < _1090 + return_data.size
                    _1110 = mem[_1090 + mem[_1090]]
                    if mem[_1090 + mem[_1090]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1090 + mem[_1090]]) + 1 < 0 or _1090 + ceil32(return_data.size) + ceil32(32 * mem[_1090 + mem[_1090]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1090 + ceil32(return_data.size) + ceil32(32 * mem[_1090 + mem[_1090]]) + 1
                    mem[_1090 + ceil32(return_data.size)] = _1110
                    require return_data.size >= _1100 + (32 * _1110) + 32
                    mem[_1090 + ceil32(return_data.size) + 32 len 32 * _1110] = mem[_1090 + _1100 + 32 len 32 * _1110]
                    if 0 >= _1110:
                        revert with 0, 50
                    if mem[_1090 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1090 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_1090 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                        revert with 0, 18
                    mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1090 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1089 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1099 = mem[_1089]
                        require mem[_1089] <= test266151307()
                        require _1089 + mem[_1089] + 31 < _1089 + return_data.size
                        _1109 = mem[_1089 + mem[_1089]]
                        if mem[_1089 + mem[_1089]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1089 + mem[_1089]]) + 1 < 0 or _1089 + ceil32(return_data.size) + ceil32(32 * mem[_1089 + mem[_1089]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1089 + ceil32(return_data.size) + ceil32(32 * mem[_1089 + mem[_1089]]) + 1
                        mem[_1089 + ceil32(return_data.size)] = _1109
                        require return_data.size >= _1099 + (32 * _1109) + 32
                        mem[_1089 + ceil32(return_data.size) + 32 len 32 * _1109] = mem[_1089 + _1099 + 32 len 32 * _1109]
                        if 0 >= _1109:
                            revert with 0, 50
                        if mem[_1089 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1089 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1089 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 18
                        mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1089 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = u * v
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1252 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1254 = mem[_1252]
                        require mem[_1252] <= test266151307()
                        require _1252 + mem[_1252] + 31 < _1252 + return_data.size
                        _1256 = mem[_1252 + mem[_1252]]
                        if mem[_1252 + mem[_1252]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1252 + mem[_1252]]) + 1 < 0 or _1252 + ceil32(return_data.size) + ceil32(32 * mem[_1252 + mem[_1252]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1252 + ceil32(return_data.size) + ceil32(32 * mem[_1252 + mem[_1252]]) + 1
                        mem[_1252 + ceil32(return_data.size)] = _1256
                        require return_data.size >= _1254 + (32 * _1256) + 32
                        mem[_1252 + ceil32(return_data.size) + 32 len 32 * _1256] = mem[_1252 + _1254 + 32 len 32 * _1256]
                        if 0 >= _1256:
                            revert with 0, 50
                        if mem[_1252 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1252 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1252 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 18
                        mem[mem[64]] = 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1252 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t
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
                mem[64] = (19 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(19 * ceil32(return_data.size)) + 196] = 1
                mem[(19 * ceil32(return_data.size)) + 228] = 64
                mem[(19 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (14 * ceil32(return_data.size)) + 128
                t = (19 * ceil32(return_data.size)) + 292
                while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _716 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _734 = mem[_716]
                require mem[_716] <= test266151307()
                require _716 + mem[_716] + 31 < _716 + return_data.size
                _748 = mem[_716 + mem[_716]]
                if mem[_716 + mem[_716]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_716 + mem[_716]]) + 1 < 0 or _716 + ceil32(return_data.size) + ceil32(32 * mem[_716 + mem[_716]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _716 + ceil32(return_data.size) + ceil32(32 * mem[_716 + mem[_716]]) + 1
                mem[_716 + ceil32(return_data.size)] = _748
                require return_data.size >= _734 + (32 * _748) + 32
                mem[_716 + ceil32(return_data.size) + 32 len 32 * _748] = mem[_716 + _734 + 32 len 32 * _748]
                if 0 >= _748:
                    revert with 0, 50
                if mem[_716 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_716 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                    revert with 0, 18
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0] <= sub_583d4cc6:
                    return sub_535aa3bb
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0] >= sub_adb2dff9:
                    return sub_ac55eac2
                if sub_adb2dff9 < sub_583d4cc6:
                    revert with 0, 17
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0] < sub_583d4cc6:
                    revert with 0, 17
                if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) - sub_583d4cc6 > -1 / sub_ac55eac2:
                    revert with 0, 17
                if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                    revert with 0, 17
                if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) > -1 / sub_535aa3bb:
                    revert with 0, 17
                if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                    revert with 0, 17
                if not sub_adb2dff9 - sub_583d4cc6:
                    revert with 0, 18
                mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_716 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _715 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _733 = mem[_715]
                    require mem[_715] <= test266151307()
                    require _715 + mem[_715] + 31 < _715 + return_data.size
                    _747 = mem[_715 + mem[_715]]
                    if mem[_715 + mem[_715]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_715 + mem[_715]]) + 1 < 0 or _715 + ceil32(return_data.size) + ceil32(32 * mem[_715 + mem[_715]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _715 + ceil32(return_data.size) + ceil32(32 * mem[_715 + mem[_715]]) + 1
                    mem[_715 + ceil32(return_data.size)] = _747
                    require return_data.size >= _733 + (32 * _747) + 32
                    mem[_715 + ceil32(return_data.size) + 32 len 32 * _747] = mem[_715 + _733 + 32 len 32 * _747]
                    if 0 >= _747:
                        revert with 0, 50
                    if mem[_715 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_715 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 18
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0] <= sub_583d4cc6:
                        return sub_535aa3bb
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0] >= sub_adb2dff9:
                        return sub_ac55eac2
                    if sub_adb2dff9 < sub_583d4cc6:
                        revert with 0, 17
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0] < sub_583d4cc6:
                        revert with 0, 17
                    if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) - sub_583d4cc6 > -1 / sub_ac55eac2:
                        revert with 0, 17
                    if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) > -1 / sub_535aa3bb:
                        revert with 0, 17
                    if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                        revert with 0, 17
                    if not sub_adb2dff9 - sub_583d4cc6:
                        revert with 0, 18
                    mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_715 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = s * t
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1205 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1217 = mem[_1205]
                    require mem[_1205] <= test266151307()
                    require _1205 + mem[_1205] + 31 < _1205 + return_data.size
                    _1227 = mem[_1205 + mem[_1205]]
                    if mem[_1205 + mem[_1205]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1205 + mem[_1205]]) + 1 < 0 or _1205 + ceil32(return_data.size) + ceil32(32 * mem[_1205 + mem[_1205]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1205 + ceil32(return_data.size) + ceil32(32 * mem[_1205 + mem[_1205]]) + 1
                    mem[_1205 + ceil32(return_data.size)] = _1227
                    require return_data.size >= _1217 + (32 * _1227) + 32
                    mem[_1205 + ceil32(return_data.size) + 32 len 32 * _1227] = mem[_1205 + _1217 + 32 len 32 * _1227]
                    if 0 >= _1227:
                        revert with 0, 50
                    if mem[_1205 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_1205 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 18
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0] <= sub_583d4cc6:
                        return sub_535aa3bb
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0] >= sub_adb2dff9:
                        return sub_ac55eac2
                    if sub_adb2dff9 < sub_583d4cc6:
                        revert with 0, 17
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0] < sub_583d4cc6:
                        revert with 0, 17
                    if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) - sub_583d4cc6 > -1 / sub_ac55eac2:
                        revert with 0, 17
                    if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) > -1 / sub_535aa3bb:
                        revert with 0, 17
                    if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                        revert with 0, 17
                    if not sub_adb2dff9 - sub_583d4cc6:
                        revert with 0, 18
                    mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1205 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _711 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _731 = mem[_711]
                    require mem[_711] <= test266151307()
                    require _711 + mem[_711] + 31 < _711 + return_data.size
                    _745 = mem[_711 + mem[_711]]
                    if mem[_711 + mem[_711]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_711 + mem[_711]]) + 1 < 0 or _711 + ceil32(return_data.size) + ceil32(32 * mem[_711 + mem[_711]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _711 + ceil32(return_data.size) + ceil32(32 * mem[_711 + mem[_711]]) + 1
                    mem[_711 + ceil32(return_data.size)] = _745
                    require return_data.size >= _731 + (32 * _745) + 32
                    mem[_711 + ceil32(return_data.size) + 32 len 32 * _745] = mem[_711 + _731 + 32 len 32 * _745]
                    if 0 >= _745:
                        revert with 0, 50
                    if mem[_711 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_711 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= sub_583d4cc6:
                        return sub_535aa3bb
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= sub_adb2dff9:
                        return sub_ac55eac2
                    if sub_adb2dff9 < sub_583d4cc6:
                        revert with 0, 17
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) < sub_583d4cc6:
                        revert with 0, 17
                    if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) - sub_583d4cc6 > -1 / sub_ac55eac2:
                        revert with 0, 17
                    if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) > -1 / sub_535aa3bb:
                        revert with 0, 17
                    if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                        revert with 0, 17
                    if not sub_adb2dff9 - sub_583d4cc6:
                        revert with 0, 18
                    mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_711 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _710 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _730 = mem[_710]
                        require mem[_710] <= test266151307()
                        require _710 + mem[_710] + 31 < _710 + return_data.size
                        _744 = mem[_710 + mem[_710]]
                        if mem[_710 + mem[_710]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_710 + mem[_710]]) + 1 < 0 or _710 + ceil32(return_data.size) + ceil32(32 * mem[_710 + mem[_710]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _710 + ceil32(return_data.size) + ceil32(32 * mem[_710 + mem[_710]]) + 1
                        mem[_710 + ceil32(return_data.size)] = _744
                        require return_data.size >= _730 + (32 * _744) + 32
                        mem[_710 + ceil32(return_data.size) + 32 len 32 * _744] = mem[_710 + _730 + 32 len 32 * _744]
                        if 0 >= _744:
                            revert with 0, 50
                        if mem[_710 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_710 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= sub_583d4cc6:
                            return sub_535aa3bb
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= sub_adb2dff9:
                            return sub_ac55eac2
                        if sub_adb2dff9 < sub_583d4cc6:
                            revert with 0, 17
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) < sub_583d4cc6:
                            revert with 0, 17
                        if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) - sub_583d4cc6 > -1 / sub_ac55eac2:
                            revert with 0, 17
                        if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) > -1 / sub_535aa3bb:
                            revert with 0, 17
                        if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                            revert with 0, 17
                        if not sub_adb2dff9 - sub_583d4cc6:
                            revert with 0, 18
                        mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_710 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = s * t
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1204 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1216 = mem[_1204]
                        require mem[_1204] <= test266151307()
                        require _1204 + mem[_1204] + 31 < _1204 + return_data.size
                        _1226 = mem[_1204 + mem[_1204]]
                        if mem[_1204 + mem[_1204]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1204 + mem[_1204]]) + 1 < 0 or _1204 + ceil32(return_data.size) + ceil32(32 * mem[_1204 + mem[_1204]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1204 + ceil32(return_data.size) + ceil32(32 * mem[_1204 + mem[_1204]]) + 1
                        mem[_1204 + ceil32(return_data.size)] = _1226
                        require return_data.size >= _1216 + (32 * _1226) + 32
                        mem[_1204 + ceil32(return_data.size) + 32 len 32 * _1226] = mem[_1204 + _1216 + 32 len 32 * _1226]
                        if 0 >= _1226:
                            revert with 0, 50
                        if mem[_1204 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_1204 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= sub_583d4cc6:
                            return sub_535aa3bb
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= sub_adb2dff9:
                            return sub_ac55eac2
                        if sub_adb2dff9 < sub_583d4cc6:
                            revert with 0, 17
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) < sub_583d4cc6:
                            revert with 0, 17
                        if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) - sub_583d4cc6 > -1 / sub_ac55eac2:
                            revert with 0, 17
                        if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) > -1 / sub_535aa3bb:
                            revert with 0, 17
                        if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                            revert with 0, 17
                        if not sub_adb2dff9 - sub_583d4cc6:
                            revert with 0, 18
                        mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1204 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1203 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1215 = mem[_1203]
                    require mem[_1203] <= test266151307()
                    require _1203 + mem[_1203] + 31 < _1203 + return_data.size
                    _1225 = mem[_1203 + mem[_1203]]
                    if mem[_1203 + mem[_1203]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1203 + mem[_1203]]) + 1 < 0 or _1203 + ceil32(return_data.size) + ceil32(32 * mem[_1203 + mem[_1203]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1203 + ceil32(return_data.size) + ceil32(32 * mem[_1203 + mem[_1203]]) + 1
                    mem[_1203 + ceil32(return_data.size)] = _1225
                    require return_data.size >= _1215 + (32 * _1225) + 32
                    mem[_1203 + ceil32(return_data.size) + 32 len 32 * _1225] = mem[_1203 + _1215 + 32 len 32 * _1225]
                    if 0 >= _1225:
                        revert with 0, 50
                    if mem[_1203 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1203 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                        revert with 0, 18
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t <= sub_583d4cc6:
                        return sub_535aa3bb
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t >= sub_adb2dff9:
                        return sub_ac55eac2
                    if sub_adb2dff9 < sub_583d4cc6:
                        revert with 0, 17
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t < sub_583d4cc6:
                        revert with 0, 17
                    if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) - sub_583d4cc6 > -1 / sub_ac55eac2:
                        revert with 0, 17
                    if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                        revert with 0, 17
                    if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) > -1 / sub_535aa3bb:
                        revert with 0, 17
                    if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                        revert with 0, 17
                    if not sub_adb2dff9 - sub_583d4cc6:
                        revert with 0, 18
                    mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1203 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1202 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1214 = mem[_1202]
                        require mem[_1202] <= test266151307()
                        require _1202 + mem[_1202] + 31 < _1202 + return_data.size
                        _1224 = mem[_1202 + mem[_1202]]
                        if mem[_1202 + mem[_1202]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1202 + mem[_1202]]) + 1 < 0 or _1202 + ceil32(return_data.size) + ceil32(32 * mem[_1202 + mem[_1202]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1202 + ceil32(return_data.size) + ceil32(32 * mem[_1202 + mem[_1202]]) + 1
                        mem[_1202 + ceil32(return_data.size)] = _1224
                        require return_data.size >= _1214 + (32 * _1224) + 32
                        mem[_1202 + ceil32(return_data.size) + 32 len 32 * _1224] = mem[_1202 + _1214 + 32 len 32 * _1224]
                        if 0 >= _1224:
                            revert with 0, 50
                        if mem[_1202 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1202 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 18
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t <= sub_583d4cc6:
                            return sub_535aa3bb
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t >= sub_adb2dff9:
                            return sub_ac55eac2
                        if sub_adb2dff9 < sub_583d4cc6:
                            revert with 0, 17
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t < sub_583d4cc6:
                            revert with 0, 17
                        if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) - sub_583d4cc6 > -1 / sub_ac55eac2:
                            revert with 0, 17
                        if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 17
                        if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) > -1 / sub_535aa3bb:
                            revert with 0, 17
                        if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                            revert with 0, 17
                        if not sub_adb2dff9 - sub_583d4cc6:
                            revert with 0, 18
                        mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1202 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = u * v
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1443 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1445 = mem[_1443]
                        require mem[_1443] <= test266151307()
                        require _1443 + mem[_1443] + 31 < _1443 + return_data.size
                        _1447 = mem[_1443 + mem[_1443]]
                        if mem[_1443 + mem[_1443]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1443 + mem[_1443]]) + 1 < 0 or _1443 + ceil32(return_data.size) + ceil32(32 * mem[_1443 + mem[_1443]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1443 + ceil32(return_data.size) + ceil32(32 * mem[_1443 + mem[_1443]]) + 1
                        mem[_1443 + ceil32(return_data.size)] = _1447
                        require return_data.size >= _1445 + (32 * _1447) + 32
                        mem[_1443 + ceil32(return_data.size) + 32 len 32 * _1447] = mem[_1443 + _1445 + 32 len 32 * _1447]
                        if 0 >= _1447:
                            revert with 0, 50
                        if mem[_1443 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1443 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 18
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t <= sub_583d4cc6:
                            return sub_535aa3bb
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t >= sub_adb2dff9:
                            return sub_ac55eac2
                        if sub_adb2dff9 < sub_583d4cc6:
                            revert with 0, 17
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t < sub_583d4cc6:
                            revert with 0, 17
                        if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) - sub_583d4cc6 > -1 / sub_ac55eac2:
                            revert with 0, 17
                        if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 17
                        if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) > -1 / sub_535aa3bb:
                            revert with 0, 17
                        if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                            revert with 0, 17
                        if not sub_adb2dff9 - sub_583d4cc6:
                            revert with 0, 18
                        mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[32]) / mem[_1443 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                mem[64] = (19 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(19 * ceil32(return_data.size)) + 196] = 1
                mem[(19 * ceil32(return_data.size)) + 228] = 64
                mem[(19 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (14 * ceil32(return_data.size)) + 128
                t = (19 * ceil32(return_data.size)) + 292
                while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _726 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _740 = mem[_726]
                require mem[_726] <= test266151307()
                require _726 + mem[_726] + 31 < _726 + return_data.size
                _754 = mem[_726 + mem[_726]]
                if mem[_726 + mem[_726]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_726 + mem[_726]]) + 1 < 0 or _726 + ceil32(return_data.size) + ceil32(32 * mem[_726 + mem[_726]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _726 + ceil32(return_data.size) + ceil32(32 * mem[_726 + mem[_726]]) + 1
                mem[_726 + ceil32(return_data.size)] = _754
                require return_data.size >= _740 + (32 * _754) + 32
                mem[_726 + ceil32(return_data.size) + 32 len 32 * _754] = mem[_726 + _740 + 32 len 32 * _754]
                if 0 >= _754:
                    revert with 0, 50
                if mem[_726 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_726 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                    revert with 0, 18
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0] <= sub_583d4cc6:
                    return sub_535aa3bb
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0] >= sub_adb2dff9:
                    return sub_ac55eac2
                if sub_adb2dff9 < sub_583d4cc6:
                    revert with 0, 17
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0] < sub_583d4cc6:
                    revert with 0, 17
                if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) - sub_583d4cc6 > -1 / sub_ac55eac2:
                    revert with 0, 17
                if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                    revert with 0, 17
                if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) > -1 / sub_535aa3bb:
                    revert with 0, 17
                if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                    revert with 0, 17
                if not sub_adb2dff9 - sub_583d4cc6:
                    revert with 0, 18
                mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_726 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _725 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _739 = mem[_725]
                    require mem[_725] <= test266151307()
                    require _725 + mem[_725] + 31 < _725 + return_data.size
                    _753 = mem[_725 + mem[_725]]
                    if mem[_725 + mem[_725]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_725 + mem[_725]]) + 1 < 0 or _725 + ceil32(return_data.size) + ceil32(32 * mem[_725 + mem[_725]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _725 + ceil32(return_data.size) + ceil32(32 * mem[_725 + mem[_725]]) + 1
                    mem[_725 + ceil32(return_data.size)] = _753
                    require return_data.size >= _739 + (32 * _753) + 32
                    mem[_725 + ceil32(return_data.size) + 32 len 32 * _753] = mem[_725 + _739 + 32 len 32 * _753]
                    if 0 >= _753:
                        revert with 0, 50
                    if mem[_725 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_725 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 18
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0] <= sub_583d4cc6:
                        return sub_535aa3bb
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0] >= sub_adb2dff9:
                        return sub_ac55eac2
                    if sub_adb2dff9 < sub_583d4cc6:
                        revert with 0, 17
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0] < sub_583d4cc6:
                        revert with 0, 17
                    if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) - sub_583d4cc6 > -1 / sub_ac55eac2:
                        revert with 0, 17
                    if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) > -1 / sub_535aa3bb:
                        revert with 0, 17
                    if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                        revert with 0, 17
                    if not sub_adb2dff9 - sub_583d4cc6:
                        revert with 0, 18
                    mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_725 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = s * t
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1212 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1222 = mem[_1212]
                    require mem[_1212] <= test266151307()
                    require _1212 + mem[_1212] + 31 < _1212 + return_data.size
                    _1232 = mem[_1212 + mem[_1212]]
                    if mem[_1212 + mem[_1212]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1212 + mem[_1212]]) + 1 < 0 or _1212 + ceil32(return_data.size) + ceil32(32 * mem[_1212 + mem[_1212]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1212 + ceil32(return_data.size) + ceil32(32 * mem[_1212 + mem[_1212]]) + 1
                    mem[_1212 + ceil32(return_data.size)] = _1232
                    require return_data.size >= _1222 + (32 * _1232) + 32
                    mem[_1212 + ceil32(return_data.size) + 32 len 32 * _1232] = mem[_1212 + _1222 + 32 len 32 * _1232]
                    if 0 >= _1232:
                        revert with 0, 50
                    if mem[_1212 + ceil32(return_data.size) + 32] and ext_call.return_data[0] > -1 / mem[_1212 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 18
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0] <= sub_583d4cc6:
                        return sub_535aa3bb
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0] >= sub_adb2dff9:
                        return sub_ac55eac2
                    if sub_adb2dff9 < sub_583d4cc6:
                        revert with 0, 17
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0] < sub_583d4cc6:
                        revert with 0, 17
                    if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) - sub_583d4cc6 > -1 / sub_ac55eac2:
                        revert with 0, 17
                    if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0]) > -1 / sub_535aa3bb:
                        revert with 0, 17
                    if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                        revert with 0, 17
                    if not sub_adb2dff9 - sub_583d4cc6:
                        revert with 0, 18
                    mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1212 + ceil32(return_data.size) + 32] * ext_call.return_data[0] * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _721 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _737 = mem[_721]
                    require mem[_721] <= test266151307()
                    require _721 + mem[_721] + 31 < _721 + return_data.size
                    _751 = mem[_721 + mem[_721]]
                    if mem[_721 + mem[_721]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_721 + mem[_721]]) + 1 < 0 or _721 + ceil32(return_data.size) + ceil32(32 * mem[_721 + mem[_721]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _721 + ceil32(return_data.size) + ceil32(32 * mem[_721 + mem[_721]]) + 1
                    mem[_721 + ceil32(return_data.size)] = _751
                    require return_data.size >= _737 + (32 * _751) + 32
                    mem[_721 + ceil32(return_data.size) + 32 len 32 * _751] = mem[_721 + _737 + 32 len 32 * _751]
                    if 0 >= _751:
                        revert with 0, 50
                    if mem[_721 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_721 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= sub_583d4cc6:
                        return sub_535aa3bb
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= sub_adb2dff9:
                        return sub_ac55eac2
                    if sub_adb2dff9 < sub_583d4cc6:
                        revert with 0, 17
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) < sub_583d4cc6:
                        revert with 0, 17
                    if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) - sub_583d4cc6 > -1 / sub_ac55eac2:
                        revert with 0, 17
                    if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) > -1 / sub_535aa3bb:
                        revert with 0, 17
                    if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                        revert with 0, 17
                    if not sub_adb2dff9 - sub_583d4cc6:
                        revert with 0, 18
                    mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_721 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _720 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _736 = mem[_720]
                        require mem[_720] <= test266151307()
                        require _720 + mem[_720] + 31 < _720 + return_data.size
                        _750 = mem[_720 + mem[_720]]
                        if mem[_720 + mem[_720]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_720 + mem[_720]]) + 1 < 0 or _720 + ceil32(return_data.size) + ceil32(32 * mem[_720 + mem[_720]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _720 + ceil32(return_data.size) + ceil32(32 * mem[_720 + mem[_720]]) + 1
                        mem[_720 + ceil32(return_data.size)] = _750
                        require return_data.size >= _736 + (32 * _750) + 32
                        mem[_720 + ceil32(return_data.size) + 32 len 32 * _750] = mem[_720 + _736 + 32 len 32 * _750]
                        if 0 >= _750:
                            revert with 0, 50
                        if mem[_720 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_720 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= sub_583d4cc6:
                            return sub_535aa3bb
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= sub_adb2dff9:
                            return sub_ac55eac2
                        if sub_adb2dff9 < sub_583d4cc6:
                            revert with 0, 17
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) < sub_583d4cc6:
                            revert with 0, 17
                        if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) - sub_583d4cc6 > -1 / sub_ac55eac2:
                            revert with 0, 17
                        if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) > -1 / sub_535aa3bb:
                            revert with 0, 17
                        if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                            revert with 0, 17
                        if not sub_adb2dff9 - sub_583d4cc6:
                            revert with 0, 18
                        mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_720 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = s * t
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (14 * ceil32(return_data.size)) + 128
                        t = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1211 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1221 = mem[_1211]
                        require mem[_1211] <= test266151307()
                        require _1211 + mem[_1211] + 31 < _1211 + return_data.size
                        _1231 = mem[_1211 + mem[_1211]]
                        if mem[_1211 + mem[_1211]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1211 + mem[_1211]]) + 1 < 0 or _1211 + ceil32(return_data.size) + ceil32(32 * mem[_1211 + mem[_1211]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1211 + ceil32(return_data.size) + ceil32(32 * mem[_1211 + mem[_1211]]) + 1
                        mem[_1211 + ceil32(return_data.size)] = _1231
                        require return_data.size >= _1221 + (32 * _1231) + 32
                        mem[_1211 + ceil32(return_data.size) + 32 len 32 * _1231] = mem[_1211 + _1221 + 32 len 32 * _1231]
                        if 0 >= _1231:
                            revert with 0, 50
                        if mem[_1211 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / mem[_1211 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= sub_583d4cc6:
                            return sub_535aa3bb
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) >= sub_adb2dff9:
                            return sub_ac55eac2
                        if sub_adb2dff9 < sub_583d4cc6:
                            revert with 0, 17
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) < sub_583d4cc6:
                            revert with 0, 17
                        if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) - sub_583d4cc6 > -1 / sub_ac55eac2:
                            revert with 0, 17
                        if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) > -1 / sub_535aa3bb:
                            revert with 0, 17
                        if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                            revert with 0, 17
                        if not sub_adb2dff9 - sub_583d4cc6:
                            revert with 0, 18
                        mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1211 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                    mem[64] = (19 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 196] = 1
                    mem[(19 * ceil32(return_data.size)) + 228] = 64
                    mem[(19 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    u = (14 * ceil32(return_data.size)) + 128
                    v = (19 * ceil32(return_data.size)) + 292
                    while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                        mem[v] = mem[u + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1210 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1220 = mem[_1210]
                    require mem[_1210] <= test266151307()
                    require _1210 + mem[_1210] + 31 < _1210 + return_data.size
                    _1230 = mem[_1210 + mem[_1210]]
                    if mem[_1210 + mem[_1210]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1210 + mem[_1210]]) + 1 < 0 or _1210 + ceil32(return_data.size) + ceil32(32 * mem[_1210 + mem[_1210]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1210 + ceil32(return_data.size) + ceil32(32 * mem[_1210 + mem[_1210]]) + 1
                    mem[_1210 + ceil32(return_data.size)] = _1230
                    require return_data.size >= _1220 + (32 * _1230) + 32
                    mem[_1210 + ceil32(return_data.size) + 32 len 32 * _1230] = mem[_1210 + _1220 + 32 len 32 * _1230]
                    if 0 >= _1230:
                        revert with 0, 50
                    if mem[_1210 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1210 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                        revert with 0, 18
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t <= sub_583d4cc6:
                        return sub_535aa3bb
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t >= sub_adb2dff9:
                        return sub_ac55eac2
                    if sub_adb2dff9 < sub_583d4cc6:
                        revert with 0, 17
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t < sub_583d4cc6:
                        revert with 0, 17
                    if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) - sub_583d4cc6 > -1 / sub_ac55eac2:
                        revert with 0, 17
                    if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                        revert with 0, 17
                    if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) > -1 / sub_535aa3bb:
                        revert with 0, 17
                    if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                        revert with 0, 17
                    if not sub_adb2dff9 - sub_583d4cc6:
                        revert with 0, 18
                    mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1210 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1209 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1219 = mem[_1209]
                        require mem[_1209] <= test266151307()
                        require _1209 + mem[_1209] + 31 < _1209 + return_data.size
                        _1229 = mem[_1209 + mem[_1209]]
                        if mem[_1209 + mem[_1209]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1209 + mem[_1209]]) + 1 < 0 or _1209 + ceil32(return_data.size) + ceil32(32 * mem[_1209 + mem[_1209]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1209 + ceil32(return_data.size) + ceil32(32 * mem[_1209 + mem[_1209]]) + 1
                        mem[_1209 + ceil32(return_data.size)] = _1229
                        require return_data.size >= _1219 + (32 * _1229) + 32
                        mem[_1209 + ceil32(return_data.size) + 32 len 32 * _1229] = mem[_1209 + _1219 + 32 len 32 * _1229]
                        if 0 >= _1229:
                            revert with 0, 50
                        if mem[_1209 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1209 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 18
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t <= sub_583d4cc6:
                            return sub_535aa3bb
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t >= sub_adb2dff9:
                            return sub_ac55eac2
                        if sub_adb2dff9 < sub_583d4cc6:
                            revert with 0, 17
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t < sub_583d4cc6:
                            revert with 0, 17
                        if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) - sub_583d4cc6 > -1 / sub_ac55eac2:
                            revert with 0, 17
                        if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 17
                        if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) > -1 / sub_535aa3bb:
                            revert with 0, 17
                        if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                            revert with 0, 17
                        if not sub_adb2dff9 - sub_583d4cc6:
                            revert with 0, 18
                        mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1209 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
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
                        mem[64] = (19 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(19 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 196] = u * v
                        mem[(19 * ceil32(return_data.size)) + 228] = 64
                        mem[(19 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        u = (14 * ceil32(return_data.size)) + 128
                        v = (19 * ceil32(return_data.size)) + 292
                        while idx < mem[(14 * ceil32(return_data.size)) + 96]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1444 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1446 = mem[_1444]
                        require mem[_1444] <= test266151307()
                        require _1444 + mem[_1444] + 31 < _1444 + return_data.size
                        _1448 = mem[_1444 + mem[_1444]]
                        if mem[_1444 + mem[_1444]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1444 + mem[_1444]]) + 1 < 0 or _1444 + ceil32(return_data.size) + ceil32(32 * mem[_1444 + mem[_1444]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1444 + ceil32(return_data.size) + ceil32(32 * mem[_1444 + mem[_1444]]) + 1
                        mem[_1444 + ceil32(return_data.size)] = _1448
                        require return_data.size >= _1446 + (32 * _1448) + 32
                        mem[_1444 + ceil32(return_data.size) + 32 len 32 * _1448] = mem[_1444 + _1446 + 32 len 32 * _1448]
                        if 0 >= _1448:
                            revert with 0, 50
                        if mem[_1444 + ceil32(return_data.size) + 32] and ext_call.return_data[0] / s * t > -1 / mem[_1444 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 18
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t <= sub_583d4cc6:
                            return sub_535aa3bb
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t >= sub_adb2dff9:
                            return sub_ac55eac2
                        if sub_adb2dff9 < sub_583d4cc6:
                            revert with 0, 17
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t < sub_583d4cc6:
                            revert with 0, 17
                        if sub_ac55eac2 and (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) - sub_583d4cc6 > -1 / sub_ac55eac2:
                            revert with 0, 17
                        if sub_adb2dff9 < 10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t:
                            revert with 0, 17
                        if sub_535aa3bb and sub_adb2dff9 - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t) > -1 / sub_535aa3bb:
                            revert with 0, 17
                        if (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) > !((10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2)):
                            revert with 0, 17
                        if not sub_adb2dff9 - sub_583d4cc6:
                            revert with 0, 18
                        mem[mem[64]] = (sub_adb2dff9 * sub_535aa3bb) - (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_535aa3bb) + (10000 * Mask(112, 0, ext_call.return_data[0]) / mem[_1444 + ceil32(return_data.size) + 32] * ext_call.return_data[0] / s * t * sub_ac55eac2) - (sub_583d4cc6 * sub_ac55eac2) / sub_adb2dff9 - sub_583d4cc6
    return memory
      from mem[64]
       len 32
}



}
