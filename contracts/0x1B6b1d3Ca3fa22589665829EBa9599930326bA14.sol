contract main {




// =====================  Runtime code  =====================


#
#  - sub_0cb33495(?)
#  - sub_0f274740(?)
#  - sub_58e324ef(?)
#  - sub_6eb18c9f(?)
#  - sub_de4503ec(?)
#  - _fallback()
#
uint8 stor0; offset 160
uint128 stor0; offset 160
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

function paused() {
    return bool(uint8(stor0.field_160))
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

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not uint8(stor0.field_160))
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

function sub_c6f5eb7d(?) payable {
    require calldata.size - 4 >= 192
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if cd[36] < block.timestamp:
        revert with 0, 'RBXTeleSwap: EXPIRED'
    if msg.value and baseFee > -1 / msg.value:
        revert with 0, 17
    if not DIVISOR:
        revert with 0, 18
    if not address(cd[132]):
        if msg.value * baseFee / DIVISOR > -1:
            revert with 0, 17
        if msg.value < msg.value * baseFee / DIVISOR:
            revert with 0, 17
        if cd[4] and baseFee > -1 / cd[4]:
            revert with 0, 17
        if not DIVISOR:
            revert with 0, 18
        if cd[4] < cd[4] * baseFee / DIVISOR:
            revert with 0, 17
        if not ('cd', 164).length:
            revert with 0, 50
        require ('cd', 164)[0] == address(('cd', 164)[0])
        require ext_code.size(address(('cd', 164)[0]))
        call address(('cd', 164)[0]).0xd0e30db0 with:
           value msg.value - (msg.value * baseFee / DIVISOR) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        staticcall address(('cd', 164)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        require return_data.size >= 32
        if ext_call.return_data[0] != msg.value - (msg.value * baseFee / DIVISOR):
            revert with 0, 'Wrap error'
        if 0 >= ('cd', 164).length:
            revert with 0, 50
        require ('cd', 164)[0] == address(('cd', 164)[0])
        if 1 >= ('cd', 164).length:
            revert with 0, 50
        require ('cd', 164)[1] == address(('cd', 164)[1])
        staticcall address(cd[100]).factory() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = address(('cd', 164)[0])
        mem[(2 * ceil32(return_data.size)) + 132] = address(('cd', 164)[1])
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(('cd', 164)[0]), address(('cd', 164)[1])
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ('cd', 164).length < 1:
            revert with 0, 17
        if ('cd', 164).length - 1 >= ('cd', 164).length:
            revert with 0, 50
        require cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)] == address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)])
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = msg.value - (msg.value * baseFee / DIVISOR)
        call address(('cd', 164)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.value - (msg.value * baseFee / DIVISOR)
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 1
        mem[(6 * ceil32(return_data.size)) + 100] = address(cd[68])
        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[68])
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = (7 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 128
        mem[(7 * ceil32(return_data.size)) + 96] = ('cd', 164).length
        mem[(7 * ceil32(return_data.size)) + 128 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 128] = 0
        if uint8(stor0.field_160):
            revert with 0, 'RBXTeleSwap: Contract paused'
        if var212001 < 1:
            revert with 0, 17
        if var216002 < var216001:
            if var218001 < ('cd', 164).length:
                if 1 > !var222002:
                    revert with 0, 17
                idx = var224003 + 1
                s = var224006
                t = var224009
                while idx < ('cd', 164).length:
                    _8092 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
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
                        _8114 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8118 = mem[_8114]
                        require mem[_8114] == mem[_8114 + 12 len 20]
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_8092)
                        staticcall address(_8118).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_8092)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8130 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8134 = mem[_8130]
                        require mem[_8130] == mem[_8130 + 12 len 20]
                        staticcall mem[_8130 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8146 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8150 = mem[_8146]
                        require mem[_8146] == mem[_8146 + 18 len 14]
                        _8154 = mem[_8146 + 32]
                        require mem[_8146 + 32] == mem[_8146 + 50 len 14]
                        require mem[_8146 + 64] == mem[_8146 + 92 len 4]
                        mem[mem[64] + 4] = address(_8134)
                        staticcall address(s).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_8134)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(s) == address(s):
                            _8178 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8186 = mem[_8178]
                            if mem[_8178] < Mask(112, 0, _8150):
                                revert with 0, 17
                            if mem[_8178] - Mask(112, 0, _8150) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _8150) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _8154) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_8178] - Mask(112, 0, _8150) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_8178]) - (997 * Mask(112, 0, _8150)) and Mask(112, 0, _8154) > -1 / (997 * mem[_8178]) - (997 * Mask(112, 0, _8150)):
                                revert with 0, 17
                            if Mask(112, 0, _8150) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _8150) > !((997 * mem[_8178]) - (997 * Mask(112, 0, _8150))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _8150)) + (997 * mem[_8178]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                                revert with 0, 17
                            if address(s) != address(s):
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8259 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8259 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8259 + 36] = (997 * _8186 * Mask(112, 0, _8154)) - (997 * Mask(112, 0, _8150) * Mask(112, 0, _8154)) / (3 * Mask(112, 0, _8150)) + (997 * _8186)
                                    mem[_8259 + 68] = 0
                                    mem[_8259 + 100] = address(cd[68])
                                    mem[_8259 + 132] = 128
                                    mem[_8259 + 164] = mem[_8259]
                                    idx = 0
                                    while idx < mem[_8259]:
                                        mem[idx + _8259 + 196] = mem[idx + _8259 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8259]) <= mem[_8259]:
                                        require ext_code.size(address(_8134))
                                        call address(_8134).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8259]) + _8259 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9704 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9704] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9704] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9704] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9704] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8259] + _8259 + 196] = 0
                                        require ext_code.size(address(_8134))
                                        call address(_8134).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8259]) + _8259 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9705 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9705] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9705] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9705] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9705] - ext_call.return_data[0]
                                    return memory
                                      from mem[64]
                                       len 32
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _8307 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8356 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8387 = mem[_8356]
                                require mem[_8356] == mem[_8356 + 12 len 20]
                                mem[mem[64] + 4] = address(_8092)
                                mem[mem[64] + 36] = address(_8307)
                                staticcall address(_8387).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_8092), address(_8307)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8467 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8483 = mem[_8467]
                                require mem[_8467] == mem[_8467 + 12 len 20]
                                _8533 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8533 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8533 + 36] = (997 * _8186 * Mask(112, 0, _8154)) - (997 * Mask(112, 0, _8150) * Mask(112, 0, _8154)) / (3 * Mask(112, 0, _8150)) + (997 * _8186)
                                mem[_8533 + 68] = 0
                                mem[_8533 + 100] = address(_8483)
                                mem[_8533 + 132] = 128
                                mem[_8533 + 164] = mem[_8533]
                                idx = 0
                                while idx < mem[_8533]:
                                    mem[idx + _8533 + 196] = mem[idx + _8533 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8533]) > mem[_8533]:
                                    mem[mem[_8533] + _8533 + 196] = 0
                                require ext_code.size(address(_8134))
                                call address(_8134).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * _8186 * Mask(112, 0, _8154)) - (997 * Mask(112, 0, _8150) * Mask(112, 0, _8154)) / (3 * Mask(112, 0, _8150)) + (997 * _8186), 0, address(_8483), 128, mem[_8533], mem[_8533 + 196 len ceil32(mem[_8533])]
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
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                return 0
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _8258 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8258 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8258 + 36] = 0
                                mem[_8258 + 68] = (997 * _8186 * Mask(112, 0, _8154)) - (997 * Mask(112, 0, _8150) * Mask(112, 0, _8154)) / (3 * Mask(112, 0, _8150)) + (997 * _8186)
                                mem[_8258 + 100] = address(cd[68])
                                mem[_8258 + 132] = 128
                                mem[_8258 + 164] = mem[_8258]
                                idx = 0
                                while idx < mem[_8258]:
                                    mem[idx + _8258 + 196] = mem[idx + _8258 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8258]) <= mem[_8258]:
                                    require ext_code.size(address(_8134))
                                    call address(_8134).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_8258]) + _8258 + -mem[64] + 192]
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
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9700 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9700] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_9700] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    if mem[_9700] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[mem[64]] = mem[_9700] - ext_call.return_data[0]
                                else:
                                    mem[mem[_8258] + _8258 + 196] = 0
                                    require ext_code.size(address(_8134))
                                    call address(_8134).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_8258]) + _8258 + -mem[64] + 192]
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
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9701 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9701] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_9701] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    if mem[_9701] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[mem[64]] = mem[_9701] - ext_call.return_data[0]
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _8306 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8354 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8386 = mem[_8354]
                                require mem[_8354] == mem[_8354 + 12 len 20]
                                mem[mem[64] + 4] = address(_8092)
                                mem[mem[64] + 36] = address(_8306)
                                staticcall address(_8386).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_8092), address(_8306)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8466 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8482 = mem[_8466]
                                require mem[_8466] == mem[_8466 + 12 len 20]
                                _8530 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8530 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8530 + 36] = 0
                                mem[_8530 + 68] = (997 * _8186 * Mask(112, 0, _8154)) - (997 * Mask(112, 0, _8150) * Mask(112, 0, _8154)) / (3 * Mask(112, 0, _8150)) + (997 * _8186)
                                mem[_8530 + 100] = address(_8482)
                                mem[_8530 + 132] = 128
                                mem[_8530 + 164] = mem[_8530]
                                idx = 0
                                while idx < mem[_8530]:
                                    mem[idx + _8530 + 196] = mem[idx + _8530 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8530]) <= mem[_8530]:
                                    require ext_code.size(address(_8134))
                                    call address(_8134).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_8530]) + _8530 + -mem[64] + 192]
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
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9698 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9698] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_9698] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    if mem[_9698] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[mem[64]] = mem[_9698] - ext_call.return_data[0]
                                else:
                                    mem[mem[_8530] + _8530 + 196] = 0
                                    require ext_code.size(address(_8134))
                                    call address(_8134).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_8530]) + _8530 + -mem[64] + 192]
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
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9699 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9699] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_9699] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    if mem[_9699] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[mem[64]] = mem[_9699] - ext_call.return_data[0]
                        else:
                            _8179 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8187 = mem[_8179]
                            if mem[_8179] < Mask(112, 0, _8154):
                                revert with 0, 17
                            if mem[_8179] - Mask(112, 0, _8154) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _8154) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _8150) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_8179] - Mask(112, 0, _8154) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_8179]) - (997 * Mask(112, 0, _8154)) and Mask(112, 0, _8150) > -1 / (997 * mem[_8179]) - (997 * Mask(112, 0, _8154)):
                                revert with 0, 17
                            if Mask(112, 0, _8154) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _8154) > !((997 * mem[_8179]) - (997 * Mask(112, 0, _8154))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _8154)) + (997 * mem[_8179]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                                revert with 0, 17
                            if address(s) != address(s):
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8261 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8261 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8261 + 36] = (997 * _8187 * Mask(112, 0, _8150)) - (997 * Mask(112, 0, _8154) * Mask(112, 0, _8150)) / (3 * Mask(112, 0, _8154)) + (997 * _8187)
                                    mem[_8261 + 68] = 0
                                    mem[_8261 + 100] = address(cd[68])
                                    mem[_8261 + 132] = 128
                                    mem[_8261 + 164] = mem[_8261]
                                    idx = 0
                                    while idx < mem[_8261]:
                                        mem[idx + _8261 + 196] = mem[idx + _8261 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8261]) <= mem[_8261]:
                                        require ext_code.size(address(_8134))
                                        call address(_8134).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8261]) + _8261 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9712 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9712] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9712] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9712] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9712] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8261] + _8261 + 196] = 0
                                        require ext_code.size(address(_8134))
                                        call address(_8134).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8261]) + _8261 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9713 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9713] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9713] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9713] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9713] - ext_call.return_data[0]
                                    return memory
                                      from mem[64]
                                       len 32
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _8309 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8360 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8389 = mem[_8360]
                                require mem[_8360] == mem[_8360 + 12 len 20]
                                mem[mem[64] + 4] = address(_8092)
                                mem[mem[64] + 36] = address(_8309)
                                staticcall address(_8389).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_8092), address(_8309)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8469 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8485 = mem[_8469]
                                require mem[_8469] == mem[_8469 + 12 len 20]
                                _8539 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8539 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8539 + 36] = (997 * _8187 * Mask(112, 0, _8150)) - (997 * Mask(112, 0, _8154) * Mask(112, 0, _8150)) / (3 * Mask(112, 0, _8154)) + (997 * _8187)
                                mem[_8539 + 68] = 0
                                mem[_8539 + 100] = address(_8485)
                                mem[_8539 + 132] = 128
                                mem[_8539 + 164] = mem[_8539]
                                idx = 0
                                while idx < mem[_8539]:
                                    mem[idx + _8539 + 196] = mem[idx + _8539 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8539]) > mem[_8539]:
                                    mem[mem[_8539] + _8539 + 196] = 0
                                require ext_code.size(address(_8134))
                                call address(_8134).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * _8187 * Mask(112, 0, _8150)) - (997 * Mask(112, 0, _8154) * Mask(112, 0, _8150)) / (3 * Mask(112, 0, _8154)) + (997 * _8187), 0, address(_8485), 128, mem[_8539], mem[_8539 + 196 len ceil32(mem[_8539])]
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
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                return 0
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _8260 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8260 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8260 + 36] = 0
                                mem[_8260 + 68] = (997 * _8187 * Mask(112, 0, _8150)) - (997 * Mask(112, 0, _8154) * Mask(112, 0, _8150)) / (3 * Mask(112, 0, _8154)) + (997 * _8187)
                                mem[_8260 + 100] = address(cd[68])
                                mem[_8260 + 132] = 128
                                mem[_8260 + 164] = mem[_8260]
                                idx = 0
                                while idx < mem[_8260]:
                                    mem[idx + _8260 + 196] = mem[idx + _8260 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8260]) > mem[_8260]:
                                    mem[mem[_8260] + _8260 + 196] = 0
                                require ext_code.size(address(_8134))
                                call address(_8134).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * _8187 * Mask(112, 0, _8150)) - (997 * Mask(112, 0, _8154) * Mask(112, 0, _8150)) / (3 * Mask(112, 0, _8154)) + (997 * _8187), address(cd[68]), 128, mem[_8260], mem[_8260 + 196 len ceil32(mem[_8260])]
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
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                return 0
                            if 2 > !t:
                                revert with 0, 17
                            if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _8308 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                            staticcall address(cd[100]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8358 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8388 = mem[_8358]
                            require mem[_8358] == mem[_8358 + 12 len 20]
                            mem[mem[64] + 4] = address(_8092)
                            mem[mem[64] + 36] = address(_8308)
                            staticcall address(_8388).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(_8092), address(_8308)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8468 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8484 = mem[_8468]
                            require mem[_8468] == mem[_8468 + 12 len 20]
                            _8536 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_8536 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8536 + 36] = 0
                            mem[_8536 + 68] = (997 * _8187 * Mask(112, 0, _8150)) - (997 * Mask(112, 0, _8154) * Mask(112, 0, _8150)) / (3 * Mask(112, 0, _8154)) + (997 * _8187)
                            mem[_8536 + 100] = address(_8484)
                            mem[_8536 + 132] = 128
                            mem[_8536 + 164] = mem[_8536]
                            idx = 0
                            while idx < mem[_8536]:
                                mem[idx + _8536 + 196] = mem[idx + _8536 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_8536]) <= mem[_8536]:
                                require ext_code.size(address(_8134))
                                call address(_8134).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_8536]) + _8536 + -mem[64] + 192]
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
                                mem[mem[64] + 4] = address(cd[68])
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9706 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_9706] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_9706] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if mem[_9706] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[_9706] - ext_call.return_data[0]
                            else:
                                mem[mem[_8536] + _8536 + 196] = 0
                                require ext_code.size(address(_8134))
                                call address(_8134).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_8536]) + _8536 + -mem[64] + 192]
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
                                mem[mem[64] + 4] = address(cd[68])
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9707 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_9707] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_9707] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if mem[_9707] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[_9707] - ext_call.return_data[0]
                    else:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'RouterLibrary: ZERO_ADDRESS'
                        staticcall address(cd[100]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8115 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8119 = mem[_8115]
                        require mem[_8115] == mem[_8115 + 12 len 20]
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_8092)
                        staticcall address(_8119).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_8092)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8131 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8135 = mem[_8131]
                        require mem[_8131] == mem[_8131 + 12 len 20]
                        staticcall mem[_8131 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8147 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8151 = mem[_8147]
                        require mem[_8147] == mem[_8147 + 18 len 14]
                        _8155 = mem[_8147 + 32]
                        require mem[_8147 + 32] == mem[_8147 + 50 len 14]
                        require mem[_8147 + 64] == mem[_8147 + 92 len 4]
                        mem[mem[64] + 4] = address(_8135)
                        staticcall address(s).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_8135)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(s) == address(_8092):
                            _8180 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8188 = mem[_8180]
                            if mem[_8180] < Mask(112, 0, _8151):
                                revert with 0, 17
                            if mem[_8180] - Mask(112, 0, _8151) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _8151) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _8155) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_8180] - Mask(112, 0, _8151) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_8180]) - (997 * Mask(112, 0, _8151)) and Mask(112, 0, _8155) > -1 / (997 * mem[_8180]) - (997 * Mask(112, 0, _8151)):
                                revert with 0, 17
                            if Mask(112, 0, _8151) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _8151) > !((997 * mem[_8180]) - (997 * Mask(112, 0, _8151))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _8151)) + (997 * mem[_8180]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                                revert with 0, 17
                            if address(s) != address(_8092):
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8263 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8263 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8263 + 36] = (997 * _8188 * Mask(112, 0, _8155)) - (997 * Mask(112, 0, _8151) * Mask(112, 0, _8155)) / (3 * Mask(112, 0, _8151)) + (997 * _8188)
                                    mem[_8263 + 68] = 0
                                    mem[_8263 + 100] = address(cd[68])
                                    mem[_8263 + 132] = 128
                                    mem[_8263 + 164] = mem[_8263]
                                    idx = 0
                                    while idx < mem[_8263]:
                                        mem[idx + _8263 + 196] = mem[idx + _8263 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8263]) <= mem[_8263]:
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8263]) + _8263 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9720 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9720] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9720] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9720] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9720] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8263] + _8263 + 196] = 0
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8263]) + _8263 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9721 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9721] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9721] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9721] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9721] - ext_call.return_data[0]
                                    return memory
                                      from mem[64]
                                       len 32
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _8311 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8364 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8391 = mem[_8364]
                                require mem[_8364] == mem[_8364 + 12 len 20]
                                mem[mem[64] + 4] = address(_8092)
                                mem[mem[64] + 36] = address(_8311)
                                staticcall address(_8391).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_8092), address(_8311)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8487 = mem[_8471]
                                require mem[_8471] == mem[_8471 + 12 len 20]
                                _8545 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8545 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8545 + 36] = (997 * _8188 * Mask(112, 0, _8155)) - (997 * Mask(112, 0, _8151) * Mask(112, 0, _8155)) / (3 * Mask(112, 0, _8151)) + (997 * _8188)
                                mem[_8545 + 68] = 0
                                mem[_8545 + 100] = address(_8487)
                                mem[_8545 + 132] = 128
                                mem[_8545 + 164] = mem[_8545]
                                idx = 0
                                while idx < mem[_8545]:
                                    mem[idx + _8545 + 196] = mem[idx + _8545 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8545]) > mem[_8545]:
                                    mem[mem[_8545] + _8545 + 196] = 0
                                require ext_code.size(address(_8135))
                                call address(_8135).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * _8188 * Mask(112, 0, _8155)) - (997 * Mask(112, 0, _8151) * Mask(112, 0, _8155)) / (3 * Mask(112, 0, _8151)) + (997 * _8188), 0, address(_8487), 128, mem[_8545], mem[_8545 + 196 len ceil32(mem[_8545])]
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
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                return 0
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _8262 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8262 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8262 + 36] = 0
                                mem[_8262 + 68] = (997 * _8188 * Mask(112, 0, _8155)) - (997 * Mask(112, 0, _8151) * Mask(112, 0, _8155)) / (3 * Mask(112, 0, _8151)) + (997 * _8188)
                                mem[_8262 + 100] = address(cd[68])
                                mem[_8262 + 132] = 128
                                mem[_8262 + 164] = mem[_8262]
                                idx = 0
                                while idx < mem[_8262]:
                                    mem[idx + _8262 + 196] = mem[idx + _8262 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8262]) > mem[_8262]:
                                    mem[mem[_8262] + _8262 + 196] = 0
                                require ext_code.size(address(_8135))
                                call address(_8135).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * _8188 * Mask(112, 0, _8155)) - (997 * Mask(112, 0, _8151) * Mask(112, 0, _8155)) / (3 * Mask(112, 0, _8151)) + (997 * _8188), address(cd[68]), 128, mem[_8262], mem[_8262 + 196 len ceil32(mem[_8262])]
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
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                return 0
                            if 2 > !t:
                                revert with 0, 17
                            if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _8310 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                            staticcall address(cd[100]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8362 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8390 = mem[_8362]
                            require mem[_8362] == mem[_8362 + 12 len 20]
                            mem[mem[64] + 4] = address(_8092)
                            mem[mem[64] + 36] = address(_8310)
                            staticcall address(_8390).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(_8092), address(_8310)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8470 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8486 = mem[_8470]
                            require mem[_8470] == mem[_8470 + 12 len 20]
                            _8542 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_8542 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8542 + 36] = 0
                            mem[_8542 + 68] = (997 * _8188 * Mask(112, 0, _8155)) - (997 * Mask(112, 0, _8151) * Mask(112, 0, _8155)) / (3 * Mask(112, 0, _8151)) + (997 * _8188)
                            mem[_8542 + 100] = address(_8486)
                            mem[_8542 + 132] = 128
                            mem[_8542 + 164] = mem[_8542]
                            idx = 0
                            while idx < mem[_8542]:
                                mem[idx + _8542 + 196] = mem[idx + _8542 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_8542]) <= mem[_8542]:
                                require ext_code.size(address(_8135))
                                call address(_8135).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_8542]) + _8542 + -mem[64] + 192]
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
                                mem[mem[64] + 4] = address(cd[68])
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9714 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_9714] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_9714] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if mem[_9714] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[_9714] - ext_call.return_data[0]
                            else:
                                mem[mem[_8542] + _8542 + 196] = 0
                                require ext_code.size(address(_8135))
                                call address(_8135).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_8542]) + _8542 + -mem[64] + 192]
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
                                mem[mem[64] + 4] = address(cd[68])
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9715 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_9715] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_9715] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if mem[_9715] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[_9715] - ext_call.return_data[0]
                        else:
                            _8181 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8189 = mem[_8181]
                            if mem[_8181] < Mask(112, 0, _8155):
                                revert with 0, 17
                            if mem[_8181] - Mask(112, 0, _8155) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _8155) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _8151) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_8181] - Mask(112, 0, _8155) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_8181]) - (997 * Mask(112, 0, _8155)) and Mask(112, 0, _8151) > -1 / (997 * mem[_8181]) - (997 * Mask(112, 0, _8155)):
                                revert with 0, 17
                            if Mask(112, 0, _8155) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _8155) > !((997 * mem[_8181]) - (997 * Mask(112, 0, _8155))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _8155)) + (997 * mem[_8181]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                                revert with 0, 17
                            if address(s) == address(_8092):
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8264 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8264 + 36] = 0
                                    mem[_8264 + 68] = (997 * _8189 * Mask(112, 0, _8151)) - (997 * Mask(112, 0, _8155) * Mask(112, 0, _8151)) / (3 * Mask(112, 0, _8155)) + (997 * _8189)
                                    mem[_8264 + 100] = address(cd[68])
                                    mem[_8264 + 132] = 128
                                    mem[_8264 + 164] = mem[_8264]
                                    idx = 0
                                    while idx < mem[_8264]:
                                        mem[idx + _8264 + 196] = mem[idx + _8264 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8264]) <= mem[_8264]:
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8264]) + _8264 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9724 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9724] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9724] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9724] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9724] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8264] + _8264 + 196] = 0
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8264]) + _8264 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9725 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9725] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9725] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9725] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9725] - ext_call.return_data[0]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _8312 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8366 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8392 = mem[_8366]
                                    require mem[_8366] == mem[_8366 + 12 len 20]
                                    mem[mem[64] + 4] = address(_8092)
                                    mem[mem[64] + 36] = address(_8312)
                                    staticcall address(_8392).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_8092), address(_8312)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8472 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8488 = mem[_8472]
                                    require mem[_8472] == mem[_8472 + 12 len 20]
                                    _8548 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8548 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8548 + 36] = 0
                                    mem[_8548 + 68] = (997 * _8189 * Mask(112, 0, _8151)) - (997 * Mask(112, 0, _8155) * Mask(112, 0, _8151)) / (3 * Mask(112, 0, _8155)) + (997 * _8189)
                                    mem[_8548 + 100] = address(_8488)
                                    mem[_8548 + 132] = 128
                                    mem[_8548 + 164] = mem[_8548]
                                    idx = 0
                                    while idx < mem[_8548]:
                                        mem[idx + _8548 + 196] = mem[idx + _8548 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8548]) <= mem[_8548]:
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8548]) + _8548 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9722 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9722] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9722] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9722] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9722] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8548] + _8548 + 196] = 0
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8548]) + _8548 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9723 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9723] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9723] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9723] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9723] - ext_call.return_data[0]
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8265 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8265 + 36] = (997 * _8189 * Mask(112, 0, _8151)) - (997 * Mask(112, 0, _8155) * Mask(112, 0, _8151)) / (3 * Mask(112, 0, _8155)) + (997 * _8189)
                                    mem[_8265 + 68] = 0
                                    mem[_8265 + 100] = address(cd[68])
                                    mem[_8265 + 132] = 128
                                    mem[_8265 + 164] = mem[_8265]
                                    idx = 0
                                    while idx < mem[_8265]:
                                        mem[idx + _8265 + 196] = mem[idx + _8265 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8265]) <= mem[_8265]:
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8265]) + _8265 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9728 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9728] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9728] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9728] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9728] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8265] + _8265 + 196] = 0
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8265]) + _8265 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9729 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9729] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9729] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9729] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9729] - ext_call.return_data[0]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _8313 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8368 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8393 = mem[_8368]
                                    require mem[_8368] == mem[_8368 + 12 len 20]
                                    mem[mem[64] + 4] = address(_8092)
                                    mem[mem[64] + 36] = address(_8313)
                                    staticcall address(_8393).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_8092), address(_8313)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8473 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8489 = mem[_8473]
                                    require mem[_8473] == mem[_8473 + 12 len 20]
                                    _8551 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8551 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8551 + 36] = (997 * _8189 * Mask(112, 0, _8151)) - (997 * Mask(112, 0, _8155) * Mask(112, 0, _8151)) / (3 * Mask(112, 0, _8155)) + (997 * _8189)
                                    mem[_8551 + 68] = 0
                                    mem[_8551 + 100] = address(_8489)
                                    mem[_8551 + 132] = 128
                                    mem[_8551 + 164] = mem[_8551]
                                    idx = 0
                                    while idx < mem[_8551]:
                                        mem[idx + _8551 + 196] = mem[idx + _8551 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8551]) <= mem[_8551]:
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8551]) + _8551 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9726 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9726] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9726] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9726] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9726] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8551] + _8551 + 196] = 0
                                        require ext_code.size(address(_8135))
                                        call address(_8135).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8551]) + _8551 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9727 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9727] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9727] - ext_call.return_data[0] < cd[4] - (cd[4] * baseFee / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9727] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9727] - ext_call.return_data[0]
                    return memory
                      from mem[64]
                       len 32
            revert with 0, 50
        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
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
        if baseFee > !sub_d04545cb:
            revert with 0, 17
        if msg.value < msg.value * baseFee / DIVISOR:
            revert with 0, 17
        if msg.value - (msg.value * baseFee / DIVISOR) and sub_d04545cb > -1 / msg.value - (msg.value * baseFee / DIVISOR):
            revert with 0, 17
        if not DIVISOR:
            revert with 0, 18
        call address(cd[132]) with:
           value (msg.value * sub_d04545cb) - (msg.value * baseFee / DIVISOR * sub_d04545cb) / DIVISOR wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Native send fail'
        if msg.value * baseFee / DIVISOR > !((msg.value * sub_d04545cb) - (msg.value * baseFee / DIVISOR * sub_d04545cb) / DIVISOR):
            revert with 0, 17
        if msg.value < (msg.value * baseFee / DIVISOR) + ((msg.value * sub_d04545cb) - (msg.value * baseFee / DIVISOR * sub_d04545cb) / DIVISOR):
            revert with 0, 17
        if cd[4] and baseFee + sub_d04545cb > -1 / cd[4]:
            revert with 0, 17
        if not DIVISOR:
            revert with 0, 18
        if cd[4] < (baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR:
            revert with 0, 17
        if not ('cd', 164).length:
            revert with 0, 50
        require ('cd', 164)[0] == address(('cd', 164)[0])
        require ext_code.size(address(('cd', 164)[0]))
        call address(('cd', 164)[0]).0xd0e30db0 with:
           value msg.value - (msg.value * baseFee / DIVISOR) - ((msg.value * sub_d04545cb) - (msg.value * baseFee / DIVISOR * sub_d04545cb) / DIVISOR) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        staticcall address(('cd', 164)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        require return_data.size >= 32
        if ext_call.return_data[0] != msg.value - (msg.value * baseFee / DIVISOR) - ((msg.value * sub_d04545cb) - (msg.value * baseFee / DIVISOR * sub_d04545cb) / DIVISOR):
            revert with 0, 'Wrap error'
        if 0 >= ('cd', 164).length:
            revert with 0, 50
        require ('cd', 164)[0] == address(('cd', 164)[0])
        if 1 >= ('cd', 164).length:
            revert with 0, 50
        require ('cd', 164)[1] == address(('cd', 164)[1])
        staticcall address(cd[100]).factory() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = address(('cd', 164)[0])
        mem[(2 * ceil32(return_data.size)) + 132] = address(('cd', 164)[1])
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(('cd', 164)[0]), address(('cd', 164)[1])
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ('cd', 164).length < 1:
            revert with 0, 17
        if ('cd', 164).length - 1 >= ('cd', 164).length:
            revert with 0, 50
        require cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)] == address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)])
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = msg.value - (msg.value * baseFee / DIVISOR) - ((msg.value * sub_d04545cb) - (msg.value * baseFee / DIVISOR * sub_d04545cb) / DIVISOR)
        call address(('cd', 164)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.value - (msg.value * baseFee / DIVISOR) - ((msg.value * sub_d04545cb) - (msg.value * baseFee / DIVISOR * sub_d04545cb) / DIVISOR)
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 1
        mem[(6 * ceil32(return_data.size)) + 100] = address(cd[68])
        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[68])
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = (7 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 128
        mem[(7 * ceil32(return_data.size)) + 96] = ('cd', 164).length
        mem[(7 * ceil32(return_data.size)) + 128 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 128] = 0
        if uint8(stor0.field_160):
            revert with 0, 'RBXTeleSwap: Contract paused'
        if var225001 < 1:
            revert with 0, 17
        if var229002 < var229001:
            if var231001 < ('cd', 164).length:
                if 1 > !var235002:
                    revert with 0, 17
                idx = var237003 + 1
                s = var237006
                t = var237009
                while idx < ('cd', 164).length:
                    _8093 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
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
                        _8116 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8120 = mem[_8116]
                        require mem[_8116] == mem[_8116 + 12 len 20]
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_8093)
                        staticcall address(_8120).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_8093)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8132 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8136 = mem[_8132]
                        require mem[_8132] == mem[_8132 + 12 len 20]
                        staticcall mem[_8132 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8148 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8152 = mem[_8148]
                        require mem[_8148] == mem[_8148 + 18 len 14]
                        _8156 = mem[_8148 + 32]
                        require mem[_8148 + 32] == mem[_8148 + 50 len 14]
                        require mem[_8148 + 64] == mem[_8148 + 92 len 4]
                        mem[mem[64] + 4] = address(_8136)
                        staticcall address(s).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_8136)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(s) == address(s):
                            _8182 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8190 = mem[_8182]
                            if mem[_8182] < Mask(112, 0, _8152):
                                revert with 0, 17
                            if mem[_8182] - Mask(112, 0, _8152) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _8152) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _8156) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_8182] - Mask(112, 0, _8152) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_8182]) - (997 * Mask(112, 0, _8152)) and Mask(112, 0, _8156) > -1 / (997 * mem[_8182]) - (997 * Mask(112, 0, _8152)):
                                revert with 0, 17
                            if Mask(112, 0, _8152) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _8152) > !((997 * mem[_8182]) - (997 * Mask(112, 0, _8152))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _8152)) + (997 * mem[_8182]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                                revert with 0, 17
                            if address(s) != address(s):
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8267 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8267 + 36] = (997 * _8190 * Mask(112, 0, _8156)) - (997 * Mask(112, 0, _8152) * Mask(112, 0, _8156)) / (3 * Mask(112, 0, _8152)) + (997 * _8190)
                                    mem[_8267 + 68] = 0
                                    mem[_8267 + 100] = address(cd[68])
                                    mem[_8267 + 132] = 128
                                    mem[_8267 + 164] = mem[_8267]
                                    idx = 0
                                    while idx < mem[_8267]:
                                        mem[idx + _8267 + 196] = mem[idx + _8267 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8267]) > mem[_8267]:
                                        mem[mem[_8267] + _8267 + 196] = 0
                                    require ext_code.size(address(_8136))
                                    call address(_8136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _8190 * Mask(112, 0, _8156)) - (997 * Mask(112, 0, _8152) * Mask(112, 0, _8156)) / (3 * Mask(112, 0, _8152)) + (997 * _8190), 0, address(cd[68]), 128, mem[_8267], mem[_8267 + 196 len ceil32(mem[_8267])]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _8315 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8372 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8395 = mem[_8372]
                                    require mem[_8372] == mem[_8372 + 12 len 20]
                                    mem[mem[64] + 4] = address(_8093)
                                    mem[mem[64] + 36] = address(_8315)
                                    staticcall address(_8395).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_8093), address(_8315)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8475 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8491 = mem[_8475]
                                    require mem[_8475] == mem[_8475 + 12 len 20]
                                    _8557 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8557 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8557 + 36] = (997 * _8190 * Mask(112, 0, _8156)) - (997 * Mask(112, 0, _8152) * Mask(112, 0, _8156)) / (3 * Mask(112, 0, _8152)) + (997 * _8190)
                                    mem[_8557 + 68] = 0
                                    mem[_8557 + 100] = address(_8491)
                                    mem[_8557 + 132] = 128
                                    mem[_8557 + 164] = mem[_8557]
                                    idx = 0
                                    while idx < mem[_8557]:
                                        mem[idx + _8557 + 196] = mem[idx + _8557 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8557]) > mem[_8557]:
                                        mem[mem[_8557] + _8557 + 196] = 0
                                    require ext_code.size(address(_8136))
                                    call address(_8136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _8190 * Mask(112, 0, _8156)) - (997 * Mask(112, 0, _8152) * Mask(112, 0, _8156)) / (3 * Mask(112, 0, _8152)) + (997 * _8190), 0, address(_8491), 128, mem[_8557], mem[_8557 + 196 len ceil32(mem[_8557])]
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
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                else:
                                    return 0
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _8266 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8266 + 36] = 0
                                mem[_8266 + 68] = (997 * _8190 * Mask(112, 0, _8156)) - (997 * Mask(112, 0, _8152) * Mask(112, 0, _8156)) / (3 * Mask(112, 0, _8152)) + (997 * _8190)
                                mem[_8266 + 100] = address(cd[68])
                                mem[_8266 + 132] = 128
                                mem[_8266 + 164] = mem[_8266]
                                idx = 0
                                while idx < mem[_8266]:
                                    mem[idx + _8266 + 196] = mem[idx + _8266 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8266]) > mem[_8266]:
                                    mem[mem[_8266] + _8266 + 196] = 0
                                require ext_code.size(address(_8136))
                                call address(_8136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * _8190 * Mask(112, 0, _8156)) - (997 * Mask(112, 0, _8152) * Mask(112, 0, _8156)) / (3 * Mask(112, 0, _8152)) + (997 * _8190), address(cd[68]), 128, mem[_8266], mem[_8266 + 196 len ceil32(mem[_8266])]
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
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                return 0
                            if 2 > !t:
                                revert with 0, 17
                            if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _8314 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                            staticcall address(cd[100]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8394 = mem[_8370]
                            require mem[_8370] == mem[_8370 + 12 len 20]
                            mem[mem[64] + 4] = address(_8093)
                            mem[mem[64] + 36] = address(_8314)
                            staticcall address(_8394).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(_8093), address(_8314)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8474 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8490 = mem[_8474]
                            require mem[_8474] == mem[_8474 + 12 len 20]
                            _8554 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_8554 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_8554 + 36] = 0
                            mem[_8554 + 68] = (997 * _8190 * Mask(112, 0, _8156)) - (997 * Mask(112, 0, _8152) * Mask(112, 0, _8156)) / (3 * Mask(112, 0, _8152)) + (997 * _8190)
                            mem[_8554 + 100] = address(_8490)
                            mem[_8554 + 132] = 128
                            mem[_8554 + 164] = mem[_8554]
                            idx = 0
                            while idx < mem[_8554]:
                                mem[idx + _8554 + 196] = mem[idx + _8554 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_8554]) <= mem[_8554]:
                                require ext_code.size(address(_8136))
                                call address(_8136).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_8554]) + _8554 + -mem[64] + 192]
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
                                mem[mem[64] + 4] = address(cd[68])
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9730 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_9730] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_9730] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if mem[_9730] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[_9730] - ext_call.return_data[0]
                            else:
                                mem[mem[_8554] + _8554 + 196] = 0
                                require ext_code.size(address(_8136))
                                call address(_8136).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_8554]) + _8554 + -mem[64] + 192]
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
                                mem[mem[64] + 4] = address(cd[68])
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9731 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_9731] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_9731] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if mem[_9731] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[_9731] - ext_call.return_data[0]
                        else:
                            _8183 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8191 = mem[_8183]
                            if mem[_8183] < Mask(112, 0, _8156):
                                revert with 0, 17
                            if mem[_8183] - Mask(112, 0, _8156) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _8156) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _8152) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_8183] - Mask(112, 0, _8156) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_8183]) - (997 * Mask(112, 0, _8156)) and Mask(112, 0, _8152) > -1 / (997 * mem[_8183]) - (997 * Mask(112, 0, _8156)):
                                revert with 0, 17
                            if Mask(112, 0, _8156) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _8156) > !((997 * mem[_8183]) - (997 * Mask(112, 0, _8156))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _8156)) + (997 * mem[_8183]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                                revert with 0, 17
                            if address(s) == address(s):
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8268 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8268 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8268 + 36] = 0
                                    mem[_8268 + 68] = (997 * _8191 * Mask(112, 0, _8152)) - (997 * Mask(112, 0, _8156) * Mask(112, 0, _8152)) / (3 * Mask(112, 0, _8156)) + (997 * _8191)
                                    mem[_8268 + 100] = address(cd[68])
                                    mem[_8268 + 132] = 128
                                    mem[_8268 + 164] = mem[_8268]
                                    idx = 0
                                    while idx < mem[_8268]:
                                        mem[idx + _8268 + 196] = mem[idx + _8268 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8268]) <= mem[_8268]:
                                        require ext_code.size(address(_8136))
                                        call address(_8136).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8268]) + _8268 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9740 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9740] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9740] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9740] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9740] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8268] + _8268 + 196] = 0
                                        require ext_code.size(address(_8136))
                                        call address(_8136).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8268]) + _8268 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9741 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9741] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9741] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9741] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9741] - ext_call.return_data[0]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _8316 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8374 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8396 = mem[_8374]
                                    require mem[_8374] == mem[_8374 + 12 len 20]
                                    mem[mem[64] + 4] = address(_8093)
                                    mem[mem[64] + 36] = address(_8316)
                                    staticcall address(_8396).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_8093), address(_8316)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8476 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8492 = mem[_8476]
                                    require mem[_8476] == mem[_8476 + 12 len 20]
                                    _8560 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8560 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8560 + 36] = 0
                                    mem[_8560 + 68] = (997 * _8191 * Mask(112, 0, _8152)) - (997 * Mask(112, 0, _8156) * Mask(112, 0, _8152)) / (3 * Mask(112, 0, _8156)) + (997 * _8191)
                                    mem[_8560 + 100] = address(_8492)
                                    mem[_8560 + 132] = 128
                                    mem[_8560 + 164] = mem[_8560]
                                    idx = 0
                                    while idx < mem[_8560]:
                                        mem[idx + _8560 + 196] = mem[idx + _8560 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8560]) <= mem[_8560]:
                                        require ext_code.size(address(_8136))
                                        call address(_8136).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8560]) + _8560 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9738 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9738] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9738] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9738] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9738] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8560] + _8560 + 196] = 0
                                        require ext_code.size(address(_8136))
                                        call address(_8136).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8560]) + _8560 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9739 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9739] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9739] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9739] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9739] - ext_call.return_data[0]
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8269 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8269 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8269 + 36] = (997 * _8191 * Mask(112, 0, _8152)) - (997 * Mask(112, 0, _8156) * Mask(112, 0, _8152)) / (3 * Mask(112, 0, _8156)) + (997 * _8191)
                                    mem[_8269 + 68] = 0
                                    mem[_8269 + 100] = address(cd[68])
                                    mem[_8269 + 132] = 128
                                    mem[_8269 + 164] = mem[_8269]
                                    idx = 0
                                    while idx < mem[_8269]:
                                        mem[idx + _8269 + 196] = mem[idx + _8269 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8269]) <= mem[_8269]:
                                        require ext_code.size(address(_8136))
                                        call address(_8136).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8269]) + _8269 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9744 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9744] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9744] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9744] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9744] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8269] + _8269 + 196] = 0
                                        require ext_code.size(address(_8136))
                                        call address(_8136).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8269]) + _8269 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9745 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9745] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9745] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9745] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9745] - ext_call.return_data[0]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _8317 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8376 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8397 = mem[_8376]
                                    require mem[_8376] == mem[_8376 + 12 len 20]
                                    mem[mem[64] + 4] = address(_8093)
                                    mem[mem[64] + 36] = address(_8317)
                                    staticcall address(_8397).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_8093), address(_8317)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8477 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8493 = mem[_8477]
                                    require mem[_8477] == mem[_8477 + 12 len 20]
                                    _8563 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8563 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8563 + 36] = (997 * _8191 * Mask(112, 0, _8152)) - (997 * Mask(112, 0, _8156) * Mask(112, 0, _8152)) / (3 * Mask(112, 0, _8156)) + (997 * _8191)
                                    mem[_8563 + 68] = 0
                                    mem[_8563 + 100] = address(_8493)
                                    mem[_8563 + 132] = 128
                                    mem[_8563 + 164] = mem[_8563]
                                    idx = 0
                                    while idx < mem[_8563]:
                                        mem[idx + _8563 + 196] = mem[idx + _8563 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8563]) <= mem[_8563]:
                                        require ext_code.size(address(_8136))
                                        call address(_8136).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8563]) + _8563 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9742 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9742] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9742] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9742] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9742] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8563] + _8563 + 196] = 0
                                        require ext_code.size(address(_8136))
                                        call address(_8136).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8563]) + _8563 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9743 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9743] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9743] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9743] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9743] - ext_call.return_data[0]
                    else:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'RouterLibrary: ZERO_ADDRESS'
                        staticcall address(cd[100]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8121 = mem[_8117]
                        require mem[_8117] == mem[_8117 + 12 len 20]
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_8093)
                        staticcall address(_8121).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_8093)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8133 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8137 = mem[_8133]
                        require mem[_8133] == mem[_8133 + 12 len 20]
                        staticcall mem[_8133 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8153 = mem[_8149]
                        require mem[_8149] == mem[_8149 + 18 len 14]
                        _8157 = mem[_8149 + 32]
                        require mem[_8149 + 32] == mem[_8149 + 50 len 14]
                        require mem[_8149 + 64] == mem[_8149 + 92 len 4]
                        mem[mem[64] + 4] = address(_8137)
                        staticcall address(s).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_8137)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(s) == address(_8093):
                            _8184 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8192 = mem[_8184]
                            if mem[_8184] < Mask(112, 0, _8153):
                                revert with 0, 17
                            if mem[_8184] - Mask(112, 0, _8153) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _8153) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _8157) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_8184] - Mask(112, 0, _8153) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_8184]) - (997 * Mask(112, 0, _8153)) and Mask(112, 0, _8157) > -1 / (997 * mem[_8184]) - (997 * Mask(112, 0, _8153)):
                                revert with 0, 17
                            if Mask(112, 0, _8153) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _8153) > !((997 * mem[_8184]) - (997 * Mask(112, 0, _8153))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _8153)) + (997 * mem[_8184]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                                revert with 0, 17
                            if address(s) == address(_8093):
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8270 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8270 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8270 + 36] = 0
                                    mem[_8270 + 68] = (997 * _8192 * Mask(112, 0, _8157)) - (997 * Mask(112, 0, _8153) * Mask(112, 0, _8157)) / (3 * Mask(112, 0, _8153)) + (997 * _8192)
                                    mem[_8270 + 100] = address(cd[68])
                                    mem[_8270 + 132] = 128
                                    mem[_8270 + 164] = mem[_8270]
                                    idx = 0
                                    while idx < mem[_8270]:
                                        mem[idx + _8270 + 196] = mem[idx + _8270 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8270]) > mem[_8270]:
                                        mem[mem[_8270] + _8270 + 196] = 0
                                    require ext_code.size(address(_8137))
                                    call address(_8137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _8192 * Mask(112, 0, _8157)) - (997 * Mask(112, 0, _8153) * Mask(112, 0, _8157)) / (3 * Mask(112, 0, _8153)) + (997 * _8192), address(cd[68]), 128, mem[_8270], mem[_8270 + 196 len ceil32(mem[_8270])]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _8318 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8378 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8398 = mem[_8378]
                                    require mem[_8378] == mem[_8378 + 12 len 20]
                                    mem[mem[64] + 4] = address(_8093)
                                    mem[mem[64] + 36] = address(_8318)
                                    staticcall address(_8398).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_8093), address(_8318)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8478 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8494 = mem[_8478]
                                    require mem[_8478] == mem[_8478 + 12 len 20]
                                    _8566 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8566 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8566 + 36] = 0
                                    mem[_8566 + 68] = (997 * _8192 * Mask(112, 0, _8157)) - (997 * Mask(112, 0, _8153) * Mask(112, 0, _8157)) / (3 * Mask(112, 0, _8153)) + (997 * _8192)
                                    mem[_8566 + 100] = address(_8494)
                                    mem[_8566 + 132] = 128
                                    mem[_8566 + 164] = mem[_8566]
                                    idx = 0
                                    while idx < mem[_8566]:
                                        mem[idx + _8566 + 196] = mem[idx + _8566 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8566]) > mem[_8566]:
                                        mem[mem[_8566] + _8566 + 196] = 0
                                    require ext_code.size(address(_8137))
                                    call address(_8137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _8192 * Mask(112, 0, _8157)) - (997 * Mask(112, 0, _8153) * Mask(112, 0, _8157)) / (3 * Mask(112, 0, _8153)) + (997 * _8192), address(_8494), 128, mem[_8566], mem[_8566 + 196 len ceil32(mem[_8566])]
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
                                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                else:
                                    return 0
                            if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                _8271 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8271 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8271 + 36] = (997 * _8192 * Mask(112, 0, _8157)) - (997 * Mask(112, 0, _8153) * Mask(112, 0, _8157)) / (3 * Mask(112, 0, _8153)) + (997 * _8192)
                                mem[_8271 + 68] = 0
                                mem[_8271 + 100] = address(cd[68])
                                mem[_8271 + 132] = 128
                                mem[_8271 + 164] = mem[_8271]
                                idx = 0
                                while idx < mem[_8271]:
                                    mem[idx + _8271 + 196] = mem[idx + _8271 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8271]) <= mem[_8271]:
                                    require ext_code.size(address(_8137))
                                    call address(_8137).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_8271]) + _8271 + -mem[64] + 192]
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
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9752 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9752] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_9752] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    if mem[_9752] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[mem[64]] = mem[_9752] - ext_call.return_data[0]
                                else:
                                    mem[mem[_8271] + _8271 + 196] = 0
                                    require ext_code.size(address(_8137))
                                    call address(_8137).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_8271]) + _8271 + -mem[64] + 192]
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
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9753 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9753] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_9753] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    if mem[_9753] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[mem[64]] = mem[_9753] - ext_call.return_data[0]
                            else:
                                if 2 > !t:
                                    revert with 0, 17
                                if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _8319 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                staticcall address(cd[100]).factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8380 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8399 = mem[_8380]
                                require mem[_8380] == mem[_8380 + 12 len 20]
                                mem[mem[64] + 4] = address(_8093)
                                mem[mem[64] + 36] = address(_8319)
                                staticcall address(_8399).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(_8093), address(_8319)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8479 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8495 = mem[_8479]
                                require mem[_8479] == mem[_8479 + 12 len 20]
                                _8569 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_8569 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8569 + 36] = (997 * _8192 * Mask(112, 0, _8157)) - (997 * Mask(112, 0, _8153) * Mask(112, 0, _8157)) / (3 * Mask(112, 0, _8153)) + (997 * _8192)
                                mem[_8569 + 68] = 0
                                mem[_8569 + 100] = address(_8495)
                                mem[_8569 + 132] = 128
                                mem[_8569 + 164] = mem[_8569]
                                idx = 0
                                while idx < mem[_8569]:
                                    mem[idx + _8569 + 196] = mem[idx + _8569 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_8569]) <= mem[_8569]:
                                    require ext_code.size(address(_8137))
                                    call address(_8137).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_8569]) + _8569 + -mem[64] + 192]
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
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9750 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9750] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_9750] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    if mem[_9750] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[mem[64]] = mem[_9750] - ext_call.return_data[0]
                                else:
                                    mem[mem[_8569] + _8569 + 196] = 0
                                    require ext_code.size(address(_8137))
                                    call address(_8137).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(mem[_8569]) + _8569 + -mem[64] + 192]
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
                                    mem[mem[64] + 4] = address(cd[68])
                                    staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9751 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9751] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if mem[_9751] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    if mem[_9751] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[mem[64]] = mem[_9751] - ext_call.return_data[0]
                        else:
                            _8185 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8193 = mem[_8185]
                            if mem[_8185] < Mask(112, 0, _8157):
                                revert with 0, 17
                            if mem[_8185] - Mask(112, 0, _8157) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _8157) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _8153) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_8185] - Mask(112, 0, _8157) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_8185]) - (997 * Mask(112, 0, _8157)) and Mask(112, 0, _8153) > -1 / (997 * mem[_8185]) - (997 * Mask(112, 0, _8157)):
                                revert with 0, 17
                            if Mask(112, 0, _8157) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _8157) > !((997 * mem[_8185]) - (997 * Mask(112, 0, _8157))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _8157)) + (997 * mem[_8185]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 96] < 2:
                                revert with 0, 17
                            if address(s) == address(_8093):
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8272 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8272 + 36] = 0
                                    mem[_8272 + 68] = (997 * _8193 * Mask(112, 0, _8153)) - (997 * Mask(112, 0, _8157) * Mask(112, 0, _8153)) / (3 * Mask(112, 0, _8157)) + (997 * _8193)
                                    mem[_8272 + 100] = address(cd[68])
                                    mem[_8272 + 132] = 128
                                    mem[_8272 + 164] = mem[_8272]
                                    idx = 0
                                    while idx < mem[_8272]:
                                        mem[idx + _8272 + 196] = mem[idx + _8272 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8272]) <= mem[_8272]:
                                        require ext_code.size(address(_8137))
                                        call address(_8137).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8272]) + _8272 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9756 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9756] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9756] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9756] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9756] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8272] + _8272 + 196] = 0
                                        require ext_code.size(address(_8137))
                                        call address(_8137).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8272]) + _8272 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9757 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9757] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9757] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9757] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9757] - ext_call.return_data[0]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _8320 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8382 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8400 = mem[_8382]
                                    require mem[_8382] == mem[_8382 + 12 len 20]
                                    mem[mem[64] + 4] = address(_8093)
                                    mem[mem[64] + 36] = address(_8320)
                                    staticcall address(_8400).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_8093), address(_8320)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8480 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8496 = mem[_8480]
                                    require mem[_8480] == mem[_8480 + 12 len 20]
                                    _8572 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8572 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8572 + 36] = 0
                                    mem[_8572 + 68] = (997 * _8193 * Mask(112, 0, _8153)) - (997 * Mask(112, 0, _8157) * Mask(112, 0, _8153)) / (3 * Mask(112, 0, _8157)) + (997 * _8193)
                                    mem[_8572 + 100] = address(_8496)
                                    mem[_8572 + 132] = 128
                                    mem[_8572 + 164] = mem[_8572]
                                    idx = 0
                                    while idx < mem[_8572]:
                                        mem[idx + _8572 + 196] = mem[idx + _8572 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8572]) <= mem[_8572]:
                                        require ext_code.size(address(_8137))
                                        call address(_8137).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8572]) + _8572 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9754 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9754] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9754] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9754] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9754] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8572] + _8572 + 196] = 0
                                        require ext_code.size(address(_8137))
                                        call address(_8137).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8572]) + _8572 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9755 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9755] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9755] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9755] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9755] - ext_call.return_data[0]
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + 96] - 2:
                                    _8273 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8273 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8273 + 36] = (997 * _8193 * Mask(112, 0, _8153)) - (997 * Mask(112, 0, _8157) * Mask(112, 0, _8153)) / (3 * Mask(112, 0, _8157)) + (997 * _8193)
                                    mem[_8273 + 68] = 0
                                    mem[_8273 + 100] = address(cd[68])
                                    mem[_8273 + 132] = 128
                                    mem[_8273 + 164] = mem[_8273]
                                    idx = 0
                                    while idx < mem[_8273]:
                                        mem[idx + _8273 + 196] = mem[idx + _8273 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8273]) <= mem[_8273]:
                                        require ext_code.size(address(_8137))
                                        call address(_8137).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8273]) + _8273 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9760 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9760] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9760] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9760] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9760] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8273] + _8273 + 196] = 0
                                        require ext_code.size(address(_8137))
                                        call address(_8137).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8273]) + _8273 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9761 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9761] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9761] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9761] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9761] - ext_call.return_data[0]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _8321 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 128]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8384 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8401 = mem[_8384]
                                    require mem[_8384] == mem[_8384 + 12 len 20]
                                    mem[mem[64] + 4] = address(_8093)
                                    mem[mem[64] + 36] = address(_8321)
                                    staticcall address(_8401).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_8093), address(_8321)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8481 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8497 = mem[_8481]
                                    require mem[_8481] == mem[_8481 + 12 len 20]
                                    _8575 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_8575 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_8575 + 36] = (997 * _8193 * Mask(112, 0, _8153)) - (997 * Mask(112, 0, _8157) * Mask(112, 0, _8153)) / (3 * Mask(112, 0, _8157)) + (997 * _8193)
                                    mem[_8575 + 68] = 0
                                    mem[_8575 + 100] = address(_8497)
                                    mem[_8575 + 132] = 128
                                    mem[_8575 + 164] = mem[_8575]
                                    idx = 0
                                    while idx < mem[_8575]:
                                        mem[idx + _8575 + 196] = mem[idx + _8575 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_8575]) <= mem[_8575]:
                                        require ext_code.size(address(_8137))
                                        call address(_8137).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8575]) + _8575 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9758 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9758] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9758] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9758] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9758] - ext_call.return_data[0]
                                    else:
                                        mem[mem[_8575] + _8575 + 196] = 0
                                        require ext_code.size(address(_8137))
                                        call address(_8137).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_8575]) + _8575 + -mem[64] + 192]
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
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9759 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9759] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_9759] - ext_call.return_data[0] < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                        if mem[_9759] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64]] = mem[_9759] - ext_call.return_data[0]
                    return memory
                      from mem[64]
                       len 32
            revert with 0, 50
        staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[68])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 0 < cd[4] - ((baseFee * cd[4]) + (sub_d04545cb * cd[4]) / DIVISOR):
            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    else:
        return 0
}



}
