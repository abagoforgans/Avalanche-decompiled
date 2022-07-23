contract main {




// =====================  Runtime code  =====================


#
#  - sub_a7a24edd(?)
#
const DECIMAL_PRECISION = 10^18

const NAME = 'DefaultPool'


address stor0;
address stor100;
address stor101;
address stor102;
array of struct stor103;
array of struct collateral;
uint256 sub_8df70992;
uint8 stor106;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528494;
array of uint256 stor73312145035153491510562152807817059592623112619519005820720798265374763743059;

function sub_3b4a6118(?) payable {
    return sub_8df70992
}

function sub_8df70992(?) payable {
    return sub_8df70992
}

function getCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.getIndex(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < collateral.length
    return collateral[ext_call.return_data[0]].field_0
}

function _fallback() payable {
    revert
}

function sub_ec0d5e0c(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'WFC'
    stor103.length++
    stor9787[stor103.length] = arg1
    collateral.length++
    storA215[stor104.length] = 0
}

function setAddresses(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if stor106:
        revert with 0, 'Addresses already set'
    stor106 = 1
    stor100 = arg1
    stor101 = arg2
    stor102 = arg3
    stor0 = arg4
}

function sub_e7b1d678(?) payable {
    require calldata.size - 4 >= 32
    if stor100 != msg.sender:
        if stor101 != msg.sender:
            revert with 0, 'WFC'
    if arg1 > sub_8df70992:
        revert with 0, 'sub overflow'
    sub_8df70992 -= arg1
    emit 0x3bf79447: (sub_8df70992 - arg1)
}

function sub_420429ca(?) payable {
    require calldata.size - 4 >= 32
    if stor100 != msg.sender:
        if stor101 != msg.sender:
            revert with 0, 'WFC'
    if arg1 + sub_8df70992 < sub_8df70992:
        revert with 0, 'add overflow'
    sub_8df70992 += arg1
    emit 0x3bf79447: (arg1 + sub_8df70992)
}

function sub_3270a9e0(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.getIndex(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < collateral.length
    require ext_code.size(stor0)
    staticcall stor0.0x2e2b1a88 with:
            gas gas_remaining wei
           args address(arg1), collateral[ext_call.return_data[0]].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_caf14b95(?) payable {
    if not collateral.length:
        mem[(32 * collateral.length) + 128] = 32
        mem[(32 * collateral.length) + 160] = collateral.length
        mem[(32 * collateral.length) + 192 len floor32(collateral.length)] = mem[128 len floor32(collateral.length)]
        return memory
          from (32 * collateral.length) + 128
           len (96 * collateral.length) + 64
    mem[128] = uint256(collateral.field_0)
    idx = 128
    s = 0
    while (32 * collateral.length) + 96 > idx:
        mem[idx + 32] = collateral[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * collateral.length) + 192 len floor32(collateral.length)] = mem[128 len floor32(collateral.length)]
    return Array(len=collateral.length, data=mem[128 len floor32(collateral.length)], mem[(32 * collateral.length) + floor32(collateral.length) + 192 len (32 * collateral.length) - floor32(collateral.length)]), 
}

function sub_c6ba0936(?) payable {
    if stor103.length:
        mem[128] = address(stor103.field_0)
        idx = 128
        s = 0
        while (32 * stor103.length) + 96 > idx:
            mem[idx + 32] = stor103[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if collateral.length:
        mem[(32 * stor103.length) + 160] = uint256(collateral.field_0)
        idx = (32 * stor103.length) + 160
        s = 0
        while (32 * stor103.length) + (32 * collateral.length) + 128 > idx:
            mem[idx + 32] = collateral[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor103.length) + (32 * collateral.length) + 256 len floor32(stor103.length)] = mem[128 len floor32(stor103.length)]
    mem[(64 * stor103.length) + (32 * collateral.length) + 256] = collateral.length
    mem[(64 * stor103.length) + (32 * collateral.length) + 288 len floor32(collateral.length)] = mem[(32 * stor103.length) + 160 len floor32(collateral.length)]
    return Array(len=stor103.length, data=mem[128 len floor32(stor103.length)], mem[(32 * stor103.length) + (32 * collateral.length) + floor32(stor103.length) + 256 len (32 * stor103.length) + (32 * collateral.length) + -floor32(stor103.length) + 32]), 
           (32 * stor103.length) + 96
}

function sub_01d40b63(?) payable {
    if not stor103.length:
        if not collateral.length:
            require ext_code.size(stor0)
            staticcall stor0.0x97a4b9f7 with:
                    gas gas_remaining wei
                   args 0, 64, 96, stor103.length, collateral.length
        else:
            mem[228] = uint256(collateral.field_0)
            idx = 228
            s = 0
            while (32 * collateral.length) + 228 > idx + 32:
                mem[idx + 32] = collateral[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor0)
            staticcall stor0.0x97a4b9f7 with:
                    gas gas_remaining wei
                   args 0, 64, 96, stor103.length, collateral.length, mem[228 len 32 * collateral.length]
    else:
        mem[196] = address(stor103.field_0)
        idx = 196
        s = 0
        while (32 * stor103.length) + 196 > idx + 32:
            mem[idx + 32] = stor103[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor103.length) + 196] = collateral.length
        if not collateral.length:
            require ext_code.size(stor0)
            staticcall stor0.0x97a4b9f7 with:
                    gas gas_remaining wei
                   args 0, 64, (32 * stor103.length) + 96, stor103.length, mem[196 len (32 * stor103.length) + 32]
        else:
            mem[(32 * stor103.length) + 228] = uint256(collateral.field_0)
            idx = (32 * stor103.length) + 228
            s = 0
            while (32 * stor103.length) + (32 * collateral.length) + 228 > idx + 32:
                mem[idx + 32] = collateral[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor0)
            staticcall stor0.0x97a4b9f7 with:
                    gas gas_remaining wei
                   args 0, 64, (32 * stor103.length) + 96, stor103.length, mem[196 len (32 * stor103.length) + (32 * collateral.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0d2e2409(?) payable {
    if not stor103.length:
        if not collateral.length:
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args 0, 64, 96, stor103.length, collateral.length
        else:
            mem[228] = uint256(collateral.field_0)
            idx = 228
            s = 0
            while (32 * collateral.length) + 228 > idx + 32:
                mem[idx + 32] = collateral[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args 0, 64, 96, stor103.length, collateral.length, mem[228 len 32 * collateral.length]
    else:
        mem[196] = address(stor103.field_0)
        idx = 196
        s = 0
        while (32 * stor103.length) + 196 > idx + 32:
            mem[idx + 32] = stor103[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor103.length) + 196] = collateral.length
        if not collateral.length:
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args 0, 64, (32 * stor103.length) + 96, stor103.length, mem[196 len (32 * stor103.length) + 32]
        else:
            mem[(32 * stor103.length) + 228] = uint256(collateral.field_0)
            idx = (32 * stor103.length) + 228
            s = 0
            while (32 * stor103.length) + (32 * collateral.length) + 228 > idx + 32:
                mem[idx + 32] = collateral[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args 0, 64, (32 * stor103.length) + 96, stor103.length, mem[196 len (32 * stor103.length) + (32 * collateral.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_8577d876(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = arg1.length
    mem[(32 * arg1.length) + 196 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor0)
    staticcall stor0.0x2d79b8eb with:
            gas gas_remaining wei
           args mem[(32 * arg1.length) + 132 len (96 * arg1.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _42 = mem[(32 * arg1.length) + 128 len 4], 0
    require mem[(32 * arg1.length) + 128 len 4], 0 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], 0 + 32 <= return_data.size
    require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], 0 + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]
    _45 = mem[(32 * arg1.length) + _42 + 128]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + _42 + 128])] = mem[(32 * arg1.length) + _42 + 160 len floor32(mem[(32 * arg1.length) + _42 + 128])]
    require arg1.length <= test266151307()
    mem[(32 * _45) + (32 * arg1.length) + ceil32(return_data.size) + 160] = arg1.length
    if arg1.length:
        mem[(32 * _45) + (32 * arg1.length) + ceil32(return_data.size) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
        require mem[(32 * idx) + (32 * arg1.length) + ceil32(return_data.size) + 160] < collateral.length
        mem[0] = 104
        require idx < arg1.length
        mem[(32 * idx) + (32 * _45) + (32 * arg1.length) + ceil32(return_data.size) + 192] = collateral[mem[(32 * idx) + (32 * arg1.length) + ceil32(return_data.size) + 160]].field_0
        idx = idx + 1
        continue 
    mem[(32 * _45) + (64 * arg1.length) + ceil32(return_data.size) + 192] = 64
    mem[(32 * _45) + (64 * arg1.length) + ceil32(return_data.size) + 256] = arg1.length
    mem[(32 * _45) + (64 * arg1.length) + ceil32(return_data.size) + 288 len floor32(arg1.length)] = mem[(32 * _45) + (32 * arg1.length) + ceil32(return_data.size) + 192 len floor32(arg1.length)]
    mem[(32 * _45) + (64 * arg1.length) + ceil32(return_data.size) + 224] = (32 * arg1.length) + 96
    mem[(98 * arg1.length) + (32 * _45) + ceil32(return_data.size) + 288] = mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
    mem[(98 * arg1.length) + (32 * _45) + ceil32(return_data.size) + 320 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])]
    return memory
      from (32 * _45) + (64 * arg1.length) + ceil32(return_data.size) + 192
       len (32 * mem[(32 * arg1.length) + ceil32(return_data.size) + 128]) + (161 * arg1.length) + 128
}

function sub_116426ae(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender == stor100:
        if arg1.length != arg2.length:
            revert with 0, 'DP:Length mismatch'
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = 32
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor0)
        staticcall stor0.0x2d79b8eb with:
                gas gas_remaining wei
               args mem[(32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg1.length) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _223 = mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0
        require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 <= 4294967296
        require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + 32 <= return_data.size
        require mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + 160] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + 160]) + 32 <= return_data.size
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + 160]
        _229 = mem[(32 * arg1.length) + (32 * arg2.length) + _223 + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + _223 + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + _223 + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + _223 + 160])]
        mem[64] = (32 * _229) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192
        idx = 0
        while idx < arg1.length:
            require idx < mem[(32 * arg1.length) + 128]
            _607 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 160] != 0:
                require idx < mem[96]
                _617 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]
                _623 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192]
                require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] < collateral.length
                mem[0] = 104
                _629 = mem[64]
                mem[64] = mem[64] + 64
                mem[_629] = 12
                mem[_629 + 32] = 'sub overflow'
                if _607 > collateral[_623].field_0:
                    _631 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _631 + 68] = mem[idx + _629 + 32]
                        idx = idx + 32
                        continue 
                    mem[_631 + 68] = mem[_631 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _631 + -mem[64] + 100
                require _623 < collateral.length
                mem[0] = 104
                collateral[_623].field_0 -= _607
                _645 = mem[64]
                mem[mem[64] + 36] = stor102
                mem[mem[64] + 68] = _607
                _646 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_646 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_646 + 36 len 28]
                mem[64] = _645 + 164
                mem[_645 + 100] = 32
                mem[_645 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_645 + 270 len 26]
                if not ext_code.size(address(_617)):
                    revert with 0, 'Address: call to non-contract'
                _660 = mem[_646]
                t = _646 + 32
                u = _645 + 164
                s = mem[_646]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_645 + floor32(mem[_646]) + 164] = mem[_646 + -(mem[_646] % 32) + floor32(mem[_646]) + 64 len mem[_646] % 32] or Mask(8 * -(mem[_646] % 32) + 32, -(8 * -(mem[_646] % 32) + 32) + 256, mem[_645 + floor32(mem[_646]) + 164])
                call address(_617).mem[_645 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_645 + 168 len _660 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_645 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_645 + 168] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + _645 + 232] = mem[idx + _645 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_645 + 132]
                    if mem[96] != 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_645 + 274 len 22]
                    emit 0xcafa306d: address(_617), _607
                    mem[_645 + 164] = address(_617)
                    mem[_645 + 196] = stor102
                    mem[_645 + 228] = _607
                else:
                    mem[64] = _645 + ceil32(return_data.size) + 165
                    mem[_645 + 164] = return_data.size
                    mem[_645 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_645 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_645 + ceil32(return_data.size) + 169] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + _645 + ceil32(return_data.size) + 233] = mem[idx + _645 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_645 + 132]
                    if return_data.size != 0:
                        require return_data.size >= 32
                        if not mem[_645 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_645 + ceil32(return_data.size) + 275 len 22]
                    emit 0xcafa306d: address(_617), _607
                    mem[_645 + ceil32(return_data.size) + 165] = address(_617)
                    mem[_645 + ceil32(return_data.size) + 197] = stor102
                    mem[_645 + ceil32(return_data.size) + 229] = _607
                emit 0xe664153e: address(_617), stor102, _607
            idx = idx + 1
            continue 
        mem[mem[64]] = 0xa7a24edd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = mem[96]
        mem[mem[64] + 100 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 36] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + mem[64] + 100] = mem[(32 * arg1.length) + 128]
        _782 = mem[(32 * arg1.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 132 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        require ext_code.size(stor102)
        call stor102.0xa7a24edd with:
             gas gas_remaining wei
            args Array(len=mem[96], data=mem[mem[64] + 100 len (32 * _782) + (32 * mem[96]) + 32]), (32 * mem[96]) + 96
    else:
        if stor101 != msg.sender:
            revert with 0, 'WFC'
        if arg1.length != arg2.length:
            revert with 0, 'DP:Length mismatch'
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = 32
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor0)
        staticcall stor0.0x2d79b8eb with:
                gas gas_remaining wei
               args mem[(32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg1.length) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _225 = mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0
        require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 <= 4294967296
        require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + 32 <= return_data.size
        require mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + 160] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + 160]) + 32 <= return_data.size
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + 160]
        _230 = mem[(32 * arg1.length) + (32 * arg2.length) + _225 + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + _225 + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + _225 + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + _225 + 160])]
        mem[64] = (32 * _230) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192
        idx = 0
        while idx < arg1.length:
            require idx < mem[(32 * arg1.length) + 128]
            _608 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 160] != 0:
                require idx < mem[96]
                _619 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]
                _626 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192]
                require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] < collateral.length
                mem[0] = 104
                _630 = mem[64]
                mem[64] = mem[64] + 64
                mem[_630] = 12
                mem[_630 + 32] = 'sub overflow'
                if _608 > collateral[_626].field_0:
                    _634 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _634 + 68] = mem[idx + _630 + 32]
                        idx = idx + 32
                        continue 
                    mem[_634 + 68] = mem[_634 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _634 + -mem[64] + 100
                require _626 < collateral.length
                mem[0] = 104
                collateral[_626].field_0 -= _608
                _649 = mem[64]
                mem[mem[64] + 36] = stor102
                mem[mem[64] + 68] = _608
                _650 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_650 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_650 + 36 len 28]
                mem[64] = _649 + 164
                mem[_649 + 100] = 32
                mem[_649 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_649 + 270 len 26]
                if not ext_code.size(address(_619)):
                    revert with 0, 'Address: call to non-contract'
                _664 = mem[_650]
                t = _650 + 32
                u = _649 + 164
                s = mem[_650]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_649 + floor32(mem[_650]) + 164] = mem[_650 + -(mem[_650] % 32) + floor32(mem[_650]) + 64 len mem[_650] % 32] or Mask(8 * -(mem[_650] % 32) + 32, -(8 * -(mem[_650] % 32) + 32) + 256, mem[_649 + floor32(mem[_650]) + 164])
                call address(_619).mem[_649 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_649 + 168 len _664 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_649 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_649 + 168] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + _649 + 232] = mem[idx + _649 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_649 + 132]
                    if mem[96] != 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_649 + 274 len 22]
                    emit 0xcafa306d: address(_619), _608
                    mem[_649 + 164] = address(_619)
                    mem[_649 + 196] = stor102
                    mem[_649 + 228] = _608
                else:
                    mem[64] = _649 + ceil32(return_data.size) + 165
                    mem[_649 + 164] = return_data.size
                    mem[_649 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_649 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_649 + ceil32(return_data.size) + 169] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + _649 + ceil32(return_data.size) + 233] = mem[idx + _649 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_649 + 132]
                    if return_data.size != 0:
                        require return_data.size >= 32
                        if not mem[_649 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_649 + ceil32(return_data.size) + 275 len 22]
                    emit 0xcafa306d: address(_619), _608
                    mem[_649 + ceil32(return_data.size) + 165] = address(_619)
                    mem[_649 + ceil32(return_data.size) + 197] = stor102
                    mem[_649 + ceil32(return_data.size) + 229] = _608
                emit 0xe664153e: address(_619), stor102, _608
            idx = idx + 1
            continue 
        mem[mem[64]] = 0xa7a24edd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = mem[96]
        mem[mem[64] + 100 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 36] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + mem[64] + 100] = mem[(32 * arg1.length) + 128]
        _790 = mem[(32 * arg1.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 132 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        require ext_code.size(stor102)
        call stor102.0xa7a24edd with:
             gas gas_remaining wei
            args Array(len=mem[96], data=mem[mem[64] + 100 len (32 * _790) + (32 * mem[96]) + 32]), (32 * mem[96]) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
