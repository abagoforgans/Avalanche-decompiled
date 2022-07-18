contract main {




// =====================  Runtime code  =====================


#
#  - sub_1b349bd3(?)
#  - sub_4b5255e0(?)
#  - sub_6d7a5be8(?)
#  - sub_6eb18c9f(?)
#  - sub_747b4aae(?)
#  - sub_78968bd9(?)
#  - sub_80711592(?)
#  - sub_8541f963(?)
#  - sub_8d898253(?)
#  - sub_b4366a80(?)
#  - rescueTokensSafe(address arg1, address arg2, uint256 arg3)
#  - sub_dc1685ff(?)
#  - sub_de4503ec(?)
#  - sub_ea267099(?)
#  - sub_f014a449(?)
#  - sub_f49e2efa(?)
#  - _fallback()
#
address owner;
uint8 sub_4fe437d5; offset 160
address bridgeAddress;
address feeCollectorAddress;
uint256 baseFee;
uint256 sub_b7cb7c03;
uint256 sub_d04545cb;
uint256 DIVISOR;
mapping of uint8 stor7;
mapping of struct sub_e5bc1d6c;
mapping of address sub_a54eb960;

function DIVISOR() {
    return DIVISOR
}

function sub_4fe437d5(?) {
    return sub_4fe437d5
}

function baseFee() {
    return baseFee
}

function owner() {
    return owner
}

function sub_a54eb960(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    return sub_a54eb960[arg1]
}

function sub_b7cb7c03(?) {
    return sub_b7cb7c03
}

function feeCollector() {
    return feeCollectorAddress
}

function sub_d04545cb(?) {
    return sub_d04545cb
}

function sub_e5bc1d6c(?) {
    require calldata.size - 4 >= 32
    if sub_e5bc1d6c[arg1].field_72 >= 5:
        revert with 0, 33
    return sub_e5bc1d6c[arg1].field_0, 
           sub_e5bc1d6c[arg1].field_0,
           sub_e5bc1d6c[arg1].field_0,
           sub_e5bc1d6c[arg1].field_256,
           sub_e5bc1d6c[arg1].field_512
}

function bridge() {
    return bridgeAddress
}

function sub_ed91012d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseFee = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_e42fc1ad(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b7cb7c03 = arg1
}

function sub_4e70ae7d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4fe437d5 = uint8(arg1)
}

function sub_57aa96d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bridgeAddress = address(arg1)
}

function sub_e5871fdc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeCollectorAddress = address(arg1)
}

function sub_632ccb5c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = uint8(bool(arg2))
}

function retrieveNative(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getFactory(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_a78c035c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        staticcall address(arg1).WAVAX() with:
                gas gas_remaining wei
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function rescueTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_70e5dec2(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    staticcall address(arg1).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function getPair(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_b4822be3(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    if cd[132] < block.timestamp:
        revert with 0, 'RBXTeleSwap: EXPIRED'
    mem[100] = address(cd[100])
    staticcall this.address.0xa78c035c with:
            gas gas_remaining wei
           args address(cd[100])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if address(('cd', 36)[0]) != ext_call.return_data[12 len 20]:
        revert with 0, 'RBXTeleSwap: INVALID_PATH'
    if msg.value and baseFee > -1 / msg.value:
        revert with 0, 17
    if not DIVISOR:
        revert with 0, 18
    if msg.value < msg.value * baseFee / DIVISOR:
        revert with 0, 17
    if cd[4] and baseFee > -1 / cd[4]:
        revert with 0, 17
    if not DIVISOR:
        revert with 0, 18
    if cd[4] < cd[4] * baseFee / DIVISOR:
        revert with 0, 17
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit() with:
       value msg.value - (msg.value * baseFee / DIVISOR) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    staticcall address(cd[100]).factory() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(('cd', 36)[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(('cd', 36)[1])
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(('cd', 36)[0]), address(('cd', 36)[1])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 132] = msg.value - (msg.value * baseFee / DIVISOR)
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.value - (msg.value * baseFee / DIVISOR)
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 1
    if ('cd', 36).length < 1:
        revert with 0, 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 0, 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    mem[(6 * ceil32(return_data.size)) + 100] = address(cd[68])
    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[68])
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 96] = ('cd', 36).length
    mem[(7 * ceil32(return_data.size)) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128] = 6
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = 0x706174683a200000000000000000000000000000000000000000000000000000
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 228] = 64
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 292] = 6
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 324] = 0x706174683a200000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 330] = 0
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 260] = mem[(7 * ceil32(return_data.size)) + 140 len 20]
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 192] = 132
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 228 len 28] = 0
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 224 len 4] = log(string arg1, address arg2)
    staticcall 'console.log'.log(string arg1, address arg2) with:
            gas gas_remaining wei
           args 0, 0, mem[(7 * ceil32(return_data.size)) + 140 len 20], 6, 0, 0
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 356] = 6
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 388] = 0x706174683a200000000000000000000000000000000000000000000000000000
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 456] = 64
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 520] = 6
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 552] = 0x706174683a200000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 558] = 0
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 488] = mem[(7 * ceil32(return_data.size)) + 172 len 20]
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 420] = 132
    mem[64] = (7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 584
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 456 len 28] = 0
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 452 len 4] = log(string arg1, address arg2)
    staticcall 'console.log'.log(string arg1, address arg2) with:
            gas gas_remaining wei
           args 0, 0, mem[(7 * ceil32(return_data.size)) + 172 len 20], 6, 0, 0
    if var235001 < 1:
        revert with 0, 17
    if var239002 < var239001:
        if var241001 < ('cd', 36).length:
            if 1 > !var245002:
                revert with 0, 17
            idx = var247003 + 1
            s = var247006
            t = var247009
            while idx < ('cd', 36).length:
                _16192 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                if not address(s) - mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                    revert with 0, 'RouterLibrary: IDENTICAL_ADDRESSES'
                if address(s) < mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                    if not address(s):
                        revert with 0, 'RouterLibrary: ZERO_ADDRESS'
                    staticcall address(cd[100]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16239 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16247 = mem[_16239]
                    require mem[_16239] == mem[_16239 + 12 len 20]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_16192)
                    staticcall address(_16247).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), address(_16192)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16271 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16279 = mem[_16271]
                    require mem[_16271] == mem[_16271 + 12 len 20]
                    staticcall mem[_16271 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _16311 = mem[_16303]
                    require mem[_16303] == mem[_16303 + 18 len 14]
                    _16319 = mem[_16303 + 32]
                    require mem[_16303 + 32] == mem[_16303 + 50 len 14]
                    require mem[_16303 + 64] == mem[_16303 + 92 len 4]
                    mem[mem[64] + 4] = address(_16279)
                    staticcall address(s).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_16279)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(s) == address(s):
                        _16373 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16389 = mem[_16373]
                        if mem[_16373] < Mask(112, 0, _16311):
                            revert with 0, 17
                        if mem[_16373] - Mask(112, 0, _16311) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, _16311) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _16319) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_16373] - Mask(112, 0, _16311) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if (997 * mem[_16373]) - (997 * Mask(112, 0, _16311)) and Mask(112, 0, _16319) > -1 / (997 * mem[_16373]) - (997 * Mask(112, 0, _16311)):
                            revert with 0, 17
                        if Mask(112, 0, _16311) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * Mask(112, 0, _16311) > !((997 * mem[_16373]) - (997 * Mask(112, 0, _16311))):
                            revert with 0, 17
                        if not (3 * Mask(112, 0, _16311)) + (997 * mem[_16373]):
                            revert with 0, 18
                        if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                            revert with 0, 17
                        if address(s) == address(s):
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _16545 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_16545 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16545 + 36] = 0
                                mem[_16545 + 68] = (997 * _16389 * Mask(112, 0, _16319)) - (997 * Mask(112, 0, _16311) * Mask(112, 0, _16319)) / (3 * Mask(112, 0, _16311)) + (997 * _16389)
                                mem[_16545 + 100] = address(cd[68])
                                mem[_16545 + 132] = 128
                                mem[_16545 + 164] = mem[_16545]
                                idx = 0
                                while idx < mem[_16545]:
                                    mem[idx + _16545 + 196] = mem[idx + _16545 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_16545]) <= mem[_16545]:
                                    require ext_code.size(address(_16279))
                                    call address(_16279).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_16545]) + _16545 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19243 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19243] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19243] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    mem[mem[_16545] + _16545 + 196] = 0
                                    require ext_code.size(address(_16279))
                                    call address(_16279).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_16545]) + _16545 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19244 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19244] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19244] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _16641 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16761 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16801 = mem[_16761]
                                require mem[_16761] == mem[_16761 + 12 len 20]
                                mem[mem[64] + 4] = address(_16192)
                                mem[mem[64] + 36] = address(_16641)
                                staticcall address(_16801).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_16192), address(_16641)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16961 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16993 = mem[_16961]
                                require mem[_16961] == mem[_16961 + 12 len 20]
                                _17137 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_17137 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17137 + 36] = 0
                                mem[_17137 + 68] = (997 * _16389 * Mask(112, 0, _16319)) - (997 * Mask(112, 0, _16311) * Mask(112, 0, _16319)) / (3 * Mask(112, 0, _16311)) + (997 * _16389)
                                mem[_17137 + 100] = address(_16993)
                                mem[_17137 + 132] = 128
                                mem[_17137 + 164] = mem[_17137]
                                idx = 0
                                while idx < mem[_17137]:
                                    mem[idx + _17137 + 196] = mem[idx + _17137 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_17137]) > mem[_17137]:
                                    mem[mem[_17137] + _17137 + 196] = 0
                                require ext_code.size(address(_16279))
                                call address(_16279).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * _16389 * Mask(112, 0, _16319)) - (997 * Mask(112, 0, _16311) * Mask(112, 0, _16319)) / (3 * Mask(112, 0, _16311)) + (997 * _16389), address(_16993), 128, mem[_17137], mem[_17137 + 196 len ceil32(mem[_17137])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not t + 1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _16546 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_16546 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16546 + 36] = (997 * _16389 * Mask(112, 0, _16319)) - (997 * Mask(112, 0, _16311) * Mask(112, 0, _16319)) / (3 * Mask(112, 0, _16311)) + (997 * _16389)
                                mem[_16546 + 68] = 0
                                mem[_16546 + 100] = address(cd[68])
                                mem[_16546 + 132] = 128
                                mem[_16546 + 164] = mem[_16546]
                                idx = 0
                                while idx < mem[_16546]:
                                    mem[idx + _16546 + 196] = mem[idx + _16546 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_16546]) > mem[_16546]:
                                    mem[mem[_16546] + _16546 + 196] = 0
                                require ext_code.size(address(_16279))
                                call address(_16279).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * _16389 * Mask(112, 0, _16319)) - (997 * Mask(112, 0, _16311) * Mask(112, 0, _16319)) / (3 * Mask(112, 0, _16311)) + (997 * _16389), 0, address(cd[68]), 128, mem[_16546], mem[_16546 + 196 len ceil32(mem[_16546])]
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _16642 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16763 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16802 = mem[_16763]
                                require mem[_16763] == mem[_16763 + 12 len 20]
                                mem[mem[64] + 4] = address(_16192)
                                mem[mem[64] + 36] = address(_16642)
                                staticcall address(_16802).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_16192), address(_16642)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16962 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16994 = mem[_16962]
                                require mem[_16962] == mem[_16962 + 12 len 20]
                                _17140 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_17140 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17140 + 36] = (997 * _16389 * Mask(112, 0, _16319)) - (997 * Mask(112, 0, _16311) * Mask(112, 0, _16319)) / (3 * Mask(112, 0, _16311)) + (997 * _16389)
                                mem[_17140 + 68] = 0
                                mem[_17140 + 100] = address(_16994)
                                mem[_17140 + 132] = 128
                                mem[_17140 + 164] = mem[_17140]
                                idx = 0
                                while idx < mem[_17140]:
                                    mem[idx + _17140 + 196] = mem[idx + _17140 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_17140]) > mem[_17140]:
                                    mem[mem[_17140] + _17140 + 196] = 0
                                require ext_code.size(address(_16279))
                                call address(_16279).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * _16389 * Mask(112, 0, _16319)) - (997 * Mask(112, 0, _16311) * Mask(112, 0, _16319)) / (3 * Mask(112, 0, _16311)) + (997 * _16389), 0, address(_16994), 128, mem[_17140], mem[_17140 + 196 len ceil32(mem[_17140])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not t + 1:
                                revert with 0, 17
                            if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                t = t + 1
                                continue 
                            if ('cd', 36).length < 1:
                                revert with 0, 17
                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(cd[68])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _16374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16390 = mem[_16374]
                        if mem[_16374] < Mask(112, 0, _16319):
                            revert with 0, 17
                        if mem[_16374] - Mask(112, 0, _16319) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, _16319) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _16311) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_16374] - Mask(112, 0, _16319) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if (997 * mem[_16374]) - (997 * Mask(112, 0, _16319)) and Mask(112, 0, _16311) > -1 / (997 * mem[_16374]) - (997 * Mask(112, 0, _16319)):
                            revert with 0, 17
                        if Mask(112, 0, _16319) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * Mask(112, 0, _16319) > !((997 * mem[_16374]) - (997 * Mask(112, 0, _16319))):
                            revert with 0, 17
                        if not (3 * Mask(112, 0, _16319)) + (997 * mem[_16374]):
                            revert with 0, 18
                        if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                            revert with 0, 17
                        if address(s) == address(s):
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _16547 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_16547 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16547 + 36] = 0
                                mem[_16547 + 68] = (997 * _16390 * Mask(112, 0, _16311)) - (997 * Mask(112, 0, _16319) * Mask(112, 0, _16311)) / (3 * Mask(112, 0, _16319)) + (997 * _16390)
                                mem[_16547 + 100] = address(cd[68])
                                mem[_16547 + 132] = 128
                                mem[_16547 + 164] = mem[_16547]
                                idx = 0
                                while idx < mem[_16547]:
                                    mem[idx + _16547 + 196] = mem[idx + _16547 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_16547]) > mem[_16547]:
                                    mem[mem[_16547] + _16547 + 196] = 0
                                require ext_code.size(address(_16279))
                                call address(_16279).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * _16390 * Mask(112, 0, _16311)) - (997 * Mask(112, 0, _16319) * Mask(112, 0, _16311)) / (3 * Mask(112, 0, _16319)) + (997 * _16390), address(cd[68]), 128, mem[_16547], mem[_16547 + 196 len ceil32(mem[_16547])]
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _16643 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16765 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16803 = mem[_16765]
                                require mem[_16765] == mem[_16765 + 12 len 20]
                                mem[mem[64] + 4] = address(_16192)
                                mem[mem[64] + 36] = address(_16643)
                                staticcall address(_16803).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_16192), address(_16643)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16963 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16995 = mem[_16963]
                                require mem[_16963] == mem[_16963 + 12 len 20]
                                _17143 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_17143 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17143 + 36] = 0
                                mem[_17143 + 68] = (997 * _16390 * Mask(112, 0, _16311)) - (997 * Mask(112, 0, _16319) * Mask(112, 0, _16311)) / (3 * Mask(112, 0, _16319)) + (997 * _16390)
                                mem[_17143 + 100] = address(_16995)
                                mem[_17143 + 132] = 128
                                mem[_17143 + 164] = mem[_17143]
                                idx = 0
                                while idx < mem[_17143]:
                                    mem[idx + _17143 + 196] = mem[idx + _17143 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_17143]) > mem[_17143]:
                                    mem[mem[_17143] + _17143 + 196] = 0
                                require ext_code.size(address(_16279))
                                call address(_16279).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * _16390 * Mask(112, 0, _16311)) - (997 * Mask(112, 0, _16319) * Mask(112, 0, _16311)) / (3 * Mask(112, 0, _16319)) + (997 * _16390), address(_16995), 128, mem[_17143], mem[_17143 + 196 len ceil32(mem[_17143])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not t + 1:
                                revert with 0, 17
                            if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                t = t + 1
                                continue 
                            if ('cd', 36).length < 1:
                                revert with 0, 17
                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(cd[68])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _16548 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_16548 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16548 + 36] = (997 * _16390 * Mask(112, 0, _16311)) - (997 * Mask(112, 0, _16319) * Mask(112, 0, _16311)) / (3 * Mask(112, 0, _16319)) + (997 * _16390)
                                mem[_16548 + 68] = 0
                                mem[_16548 + 100] = address(cd[68])
                                mem[_16548 + 132] = 128
                                mem[_16548 + 164] = mem[_16548]
                                idx = 0
                                while idx < mem[_16548]:
                                    mem[idx + _16548 + 196] = mem[idx + _16548 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_16548]) > mem[_16548]:
                                    mem[mem[_16548] + _16548 + 196] = 0
                                require ext_code.size(address(_16279))
                                call address(_16279).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * _16390 * Mask(112, 0, _16311)) - (997 * Mask(112, 0, _16319) * Mask(112, 0, _16311)) / (3 * Mask(112, 0, _16319)) + (997 * _16390), 0, address(cd[68]), 128, mem[_16548], mem[_16548 + 196 len ceil32(mem[_16548])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not t + 1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _16644 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16767 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16804 = mem[_16767]
                                require mem[_16767] == mem[_16767 + 12 len 20]
                                mem[mem[64] + 4] = address(_16192)
                                mem[mem[64] + 36] = address(_16644)
                                staticcall address(_16804).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_16192), address(_16644)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16964 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16996 = mem[_16964]
                                require mem[_16964] == mem[_16964 + 12 len 20]
                                _17146 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_17146 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17146 + 36] = (997 * _16390 * Mask(112, 0, _16311)) - (997 * Mask(112, 0, _16319) * Mask(112, 0, _16311)) / (3 * Mask(112, 0, _16319)) + (997 * _16390)
                                mem[_17146 + 68] = 0
                                mem[_17146 + 100] = address(_16996)
                                mem[_17146 + 132] = 128
                                mem[_17146 + 164] = mem[_17146]
                                idx = 0
                                while idx < mem[_17146]:
                                    mem[idx + _17146 + 196] = mem[idx + _17146 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_17146]) <= mem[_17146]:
                                    require ext_code.size(address(_16279))
                                    call address(_16279).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17146]) + _17146 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19253 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19253] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19253] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    mem[mem[_17146] + _17146 + 196] = 0
                                    require ext_code.size(address(_16279))
                                    call address(_16279).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17146]) + _17146 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19254 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19254] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19254] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                else:
                    if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                        revert with 0, 'RouterLibrary: ZERO_ADDRESS'
                    staticcall address(cd[100]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16240 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16248 = mem[_16240]
                    require mem[_16240] == mem[_16240 + 12 len 20]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_16192)
                    staticcall address(_16248).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), address(_16192)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16272 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16280 = mem[_16272]
                    require mem[_16272] == mem[_16272 + 12 len 20]
                    staticcall mem[_16272 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _16312 = mem[_16304]
                    require mem[_16304] == mem[_16304 + 18 len 14]
                    _16320 = mem[_16304 + 32]
                    require mem[_16304 + 32] == mem[_16304 + 50 len 14]
                    require mem[_16304 + 64] == mem[_16304 + 92 len 4]
                    mem[mem[64] + 4] = address(_16280)
                    staticcall address(s).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_16280)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(s) == address(_16192):
                        _16375 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16391 = mem[_16375]
                        if mem[_16375] < Mask(112, 0, _16312):
                            revert with 0, 17
                        if mem[_16375] - Mask(112, 0, _16312) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, _16312) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _16320) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_16375] - Mask(112, 0, _16312) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if (997 * mem[_16375]) - (997 * Mask(112, 0, _16312)) and Mask(112, 0, _16320) > -1 / (997 * mem[_16375]) - (997 * Mask(112, 0, _16312)):
                            revert with 0, 17
                        if Mask(112, 0, _16312) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * Mask(112, 0, _16312) > !((997 * mem[_16375]) - (997 * Mask(112, 0, _16312))):
                            revert with 0, 17
                        if not (3 * Mask(112, 0, _16312)) + (997 * mem[_16375]):
                            revert with 0, 18
                        if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                            revert with 0, 17
                        if address(s) == address(_16192):
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _16549 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_16549 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16549 + 36] = 0
                                mem[_16549 + 68] = (997 * _16391 * Mask(112, 0, _16320)) - (997 * Mask(112, 0, _16312) * Mask(112, 0, _16320)) / (3 * Mask(112, 0, _16312)) + (997 * _16391)
                                mem[_16549 + 100] = address(cd[68])
                                mem[_16549 + 132] = 128
                                mem[_16549 + 164] = mem[_16549]
                                idx = 0
                                while idx < mem[_16549]:
                                    mem[idx + _16549 + 196] = mem[idx + _16549 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_16549]) > mem[_16549]:
                                    mem[mem[_16549] + _16549 + 196] = 0
                                require ext_code.size(address(_16280))
                                call address(_16280).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * _16391 * Mask(112, 0, _16320)) - (997 * Mask(112, 0, _16312) * Mask(112, 0, _16320)) / (3 * Mask(112, 0, _16312)) + (997 * _16391), address(cd[68]), 128, mem[_16549], mem[_16549 + 196 len ceil32(mem[_16549])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not t + 1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _16645 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16769 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16805 = mem[_16769]
                                require mem[_16769] == mem[_16769 + 12 len 20]
                                mem[mem[64] + 4] = address(_16192)
                                mem[mem[64] + 36] = address(_16645)
                                staticcall address(_16805).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_16192), address(_16645)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16965 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16997 = mem[_16965]
                                require mem[_16965] == mem[_16965 + 12 len 20]
                                _17149 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_17149 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17149 + 36] = 0
                                mem[_17149 + 68] = (997 * _16391 * Mask(112, 0, _16320)) - (997 * Mask(112, 0, _16312) * Mask(112, 0, _16320)) / (3 * Mask(112, 0, _16312)) + (997 * _16391)
                                mem[_17149 + 100] = address(_16997)
                                mem[_17149 + 132] = 128
                                mem[_17149 + 164] = mem[_17149]
                                idx = 0
                                while idx < mem[_17149]:
                                    mem[idx + _17149 + 196] = mem[idx + _17149 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_17149]) <= mem[_17149]:
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17149]) + _17149 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19257 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19257] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19257] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    mem[mem[_17149] + _17149 + 196] = 0
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17149]) + _17149 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19258 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19258] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19258] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _16550 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_16550 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16550 + 36] = (997 * _16391 * Mask(112, 0, _16320)) - (997 * Mask(112, 0, _16312) * Mask(112, 0, _16320)) / (3 * Mask(112, 0, _16312)) + (997 * _16391)
                                mem[_16550 + 68] = 0
                                mem[_16550 + 100] = address(cd[68])
                                mem[_16550 + 132] = 128
                                mem[_16550 + 164] = mem[_16550]
                                idx = 0
                                while idx < mem[_16550]:
                                    mem[idx + _16550 + 196] = mem[idx + _16550 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_16550]) > mem[_16550]:
                                    mem[mem[_16550] + _16550 + 196] = 0
                                require ext_code.size(address(_16280))
                                call address(_16280).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * _16391 * Mask(112, 0, _16320)) - (997 * Mask(112, 0, _16312) * Mask(112, 0, _16320)) / (3 * Mask(112, 0, _16312)) + (997 * _16391), 0, address(cd[68]), 128, mem[_16550], mem[_16550 + 196 len ceil32(mem[_16550])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not t + 1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _16646 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16771 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16806 = mem[_16771]
                                require mem[_16771] == mem[_16771 + 12 len 20]
                                mem[mem[64] + 4] = address(_16192)
                                mem[mem[64] + 36] = address(_16646)
                                staticcall address(_16806).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_16192), address(_16646)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16966 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16998 = mem[_16966]
                                require mem[_16966] == mem[_16966 + 12 len 20]
                                _17152 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_17152 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17152 + 36] = (997 * _16391 * Mask(112, 0, _16320)) - (997 * Mask(112, 0, _16312) * Mask(112, 0, _16320)) / (3 * Mask(112, 0, _16312)) + (997 * _16391)
                                mem[_17152 + 68] = 0
                                mem[_17152 + 100] = address(_16998)
                                mem[_17152 + 132] = 128
                                mem[_17152 + 164] = mem[_17152]
                                idx = 0
                                while idx < mem[_17152]:
                                    mem[idx + _17152 + 196] = mem[idx + _17152 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_17152]) <= mem[_17152]:
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17152]) + _17152 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19261 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19261] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19261] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    mem[mem[_17152] + _17152 + 196] = 0
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17152]) + _17152 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19262 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19262] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19262] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        _16376 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16392 = mem[_16376]
                        if mem[_16376] < Mask(112, 0, _16320):
                            revert with 0, 17
                        if mem[_16376] - Mask(112, 0, _16320) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, _16320) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _16312) <= 0:
                            revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_16376] - Mask(112, 0, _16320) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if (997 * mem[_16376]) - (997 * Mask(112, 0, _16320)) and Mask(112, 0, _16312) > -1 / (997 * mem[_16376]) - (997 * Mask(112, 0, _16320)):
                            revert with 0, 17
                        if Mask(112, 0, _16320) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * Mask(112, 0, _16320) > !((997 * mem[_16376]) - (997 * Mask(112, 0, _16320))):
                            revert with 0, 17
                        if not (3 * Mask(112, 0, _16320)) + (997 * mem[_16376]):
                            revert with 0, 18
                        if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                            revert with 0, 17
                        if address(s) == address(_16192):
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _16551 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_16551 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16551 + 36] = 0
                                mem[_16551 + 68] = (997 * _16392 * Mask(112, 0, _16312)) - (997 * Mask(112, 0, _16320) * Mask(112, 0, _16312)) / (3 * Mask(112, 0, _16320)) + (997 * _16392)
                                mem[_16551 + 100] = address(cd[68])
                                mem[_16551 + 132] = 128
                                mem[_16551 + 164] = mem[_16551]
                                idx = 0
                                while idx < mem[_16551]:
                                    mem[idx + _16551 + 196] = mem[idx + _16551 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_16551]) <= mem[_16551]:
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_16551]) + _16551 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19267 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19267] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19267] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    mem[mem[_16551] + _16551 + 196] = 0
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_16551]) + _16551 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19268] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19268] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _16647 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16773 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16807 = mem[_16773]
                                require mem[_16773] == mem[_16773 + 12 len 20]
                                mem[mem[64] + 4] = address(_16192)
                                mem[mem[64] + 36] = address(_16647)
                                staticcall address(_16807).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_16192), address(_16647)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16967 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16999 = mem[_16967]
                                require mem[_16967] == mem[_16967 + 12 len 20]
                                _17155 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_17155 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17155 + 36] = 0
                                mem[_17155 + 68] = (997 * _16392 * Mask(112, 0, _16312)) - (997 * Mask(112, 0, _16320) * Mask(112, 0, _16312)) / (3 * Mask(112, 0, _16320)) + (997 * _16392)
                                mem[_17155 + 100] = address(_16999)
                                mem[_17155 + 132] = 128
                                mem[_17155 + 164] = mem[_17155]
                                idx = 0
                                while idx < mem[_17155]:
                                    mem[idx + _17155 + 196] = mem[idx + _17155 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_17155]) <= mem[_17155]:
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17155]) + _17155 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19265 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19265] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19265] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    mem[mem[_17155] + _17155 + 196] = 0
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17155]) + _17155 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19266 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19266] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19266] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _16552 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_16552 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16552 + 36] = (997 * _16392 * Mask(112, 0, _16312)) - (997 * Mask(112, 0, _16320) * Mask(112, 0, _16312)) / (3 * Mask(112, 0, _16320)) + (997 * _16392)
                                mem[_16552 + 68] = 0
                                mem[_16552 + 100] = address(cd[68])
                                mem[_16552 + 132] = 128
                                mem[_16552 + 164] = mem[_16552]
                                idx = 0
                                while idx < mem[_16552]:
                                    mem[idx + _16552 + 196] = mem[idx + _16552 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_16552]) > mem[_16552]:
                                    mem[mem[_16552] + _16552 + 196] = 0
                                require ext_code.size(address(_16280))
                                call address(_16280).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * _16392 * Mask(112, 0, _16312)) - (997 * Mask(112, 0, _16320) * Mask(112, 0, _16312)) / (3 * Mask(112, 0, _16320)) + (997 * _16392), 0, address(cd[68]), 128, mem[_16552], mem[_16552 + 196 len ceil32(mem[_16552])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not t + 1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _16648 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16775 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16808 = mem[_16775]
                                require mem[_16775] == mem[_16775 + 12 len 20]
                                mem[mem[64] + 4] = address(_16192)
                                mem[mem[64] + 36] = address(_16648)
                                staticcall address(_16808).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_16192), address(_16648)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16968 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _17000 = mem[_16968]
                                require mem[_16968] == mem[_16968 + 12 len 20]
                                _17158 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_17158 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17158 + 36] = (997 * _16392 * Mask(112, 0, _16312)) - (997 * Mask(112, 0, _16320) * Mask(112, 0, _16312)) / (3 * Mask(112, 0, _16320)) + (997 * _16392)
                                mem[_17158 + 68] = 0
                                mem[_17158 + 100] = address(_17000)
                                mem[_17158 + 132] = 128
                                mem[_17158 + 164] = mem[_17158]
                                idx = 0
                                while idx < mem[_17158]:
                                    mem[idx + _17158 + 196] = mem[idx + _17158 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_17158]) <= mem[_17158]:
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17158]) + _17158 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19269 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19269] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19269] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    mem[mem[_17158] + _17158 + 196] = 0
                                    require ext_code.size(address(_16280))
                                    call address(_16280).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_17158]) + _17158 + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not t + 1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 96] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 128]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19270 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_19270] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_19270] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
        revert with 0, 50
    if ('cd', 36).length < 1:
        revert with 0, 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 0, 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 588] = address(cd[68])
    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[68])
    mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 584] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 >= cd[4] - (cd[4] * baseFee / DIVISOR):
    mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 584] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 588] = 32
    mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 620] = 39
    mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 652] = 'RBXTeleSwap: INSUFFICIENT_OUTPUT'
    mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 684] = 0x5f414d4f554e5400000000000000000000000000000000000000000000000000
    revert with memory
      from (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 584
       len ceil32(return_data.size) + 132
}



}
