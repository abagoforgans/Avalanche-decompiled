contract main {




// =====================  Runtime code  =====================


#
#  - sub_a7a24edd(?)
#
const DECIMAL_PRECISION = 10^18

const NAME = 'ActivePool'


address stor0;
address stor100;
address stor101;
address stor102;
address stor103;
address stor104;
address stor105;
address stor106;
array of struct stor107;
array of struct collateral;
uint256 sub_8df70992;
uint8 stor110;
array of uint256 stor19580762831943412985737546730789966962378370307554229245290853309916101992470;
array of address stor85606912040150585808358299647458656657391986846227832211658412328070808574132;

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
    stor107.length++
    storBD43[stor107.length] = arg1
    collateral.length++
    stor2B4A[stor108.length] = 0
}

function sub_420429ca(?) payable {
    require calldata.size - 4 >= 32
    if stor100 != msg.sender:
        if stor101 != msg.sender:
            if stor104 != msg.sender:
                revert with 0, 'WFC'
    if arg1 + sub_8df70992 < sub_8df70992:
        revert with 0, 'add overflow'
    sub_8df70992 += arg1
    emit 0x8941098a: (arg1 + sub_8df70992)
}

function sub_e7b1d678(?) payable {
    require calldata.size - 4 >= 32
    if stor100 != msg.sender:
        if stor101 != msg.sender:
            if stor102 != msg.sender:
                if stor105 != msg.sender:
                    revert with 0, 'WFC'
    if arg1 > sub_8df70992:
        revert with 0, 'sub overflow'
    sub_8df70992 -= arg1
    emit 0x8941098a: (sub_8df70992 - arg1)
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    if stor110:
        revert with 0, 'Addresses already set'
    stor110 = 1
    stor100 = arg1
    stor101 = arg2
    stor102 = arg3
    stor103 = arg4
    stor0 = arg5
    stor104 = arg6
    stor105 = arg7
    stor106 = arg8
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

function sub_c6ba0936(?) payable {
    if stor107.length:
        mem[128] = address(stor107.field_0)
        idx = 128
        s = 0
        while (32 * stor107.length) + 96 > idx:
            mem[idx + 32] = stor107[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if collateral.length:
        mem[(32 * stor107.length) + 160] = uint256(collateral.field_0)
        idx = (32 * stor107.length) + 160
        s = 0
        while (32 * stor107.length) + (32 * collateral.length) + 128 > idx:
            mem[idx + 32] = collateral[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor107.length) + (32 * collateral.length) + 256 len floor32(stor107.length)] = mem[128 len floor32(stor107.length)]
    mem[(64 * stor107.length) + (32 * collateral.length) + 256] = collateral.length
    mem[(64 * stor107.length) + (32 * collateral.length) + 288 len floor32(collateral.length)] = mem[(32 * stor107.length) + 160 len floor32(collateral.length)]
    return Array(len=stor107.length, data=mem[128 len floor32(stor107.length)], mem[(32 * stor107.length) + (32 * collateral.length) + floor32(stor107.length) + 256 len (32 * stor107.length) + (32 * collateral.length) + -floor32(stor107.length) + 32]), 
           (32 * stor107.length) + 96
}

function sub_62f6105b(?) payable {
    require calldata.size - 4 >= 96
    if stor100 != msg.sender:
        if stor101 != msg.sender:
            if stor104 != msg.sender:
                revert with 0, 'WFC'
    require ext_code.size(stor0)
    staticcall stor0.getIndex(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < collateral.length
    if arg3 > collateral[ext_call.return_data[0]].field_0:
        revert with 0, 'sub overflow'
    require ext_call.return_data[0] < collateral.length
    collateral[ext_call.return_data[0]].field_0 -= arg3
    emit 0x380f306d: address(arg2), arg3
    emit 0xe664153e: address(arg2), address(arg1), arg3
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'sub overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size != 0:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
}

function sub_01d40b63(?) payable {
    if not stor107.length:
        if not collateral.length:
            require ext_code.size(stor0)
            staticcall stor0.0x97a4b9f7 with:
                    gas gas_remaining wei
                   args 0, 64, 96, stor107.length, collateral.length
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
                   args 0, 64, 96, stor107.length, collateral.length, mem[228 len 32 * collateral.length]
    else:
        mem[196] = address(stor107.field_0)
        idx = 196
        s = 0
        while (32 * stor107.length) + 196 > idx + 32:
            mem[idx + 32] = stor107[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor107.length) + 196] = collateral.length
        if not collateral.length:
            require ext_code.size(stor0)
            staticcall stor0.0x97a4b9f7 with:
                    gas gas_remaining wei
                   args 0, 64, (32 * stor107.length) + 96, stor107.length, mem[196 len (32 * stor107.length) + 32]
        else:
            mem[(32 * stor107.length) + 228] = uint256(collateral.field_0)
            idx = (32 * stor107.length) + 228
            s = 0
            while (32 * stor107.length) + (32 * collateral.length) + 228 > idx + 32:
                mem[idx + 32] = collateral[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor0)
            staticcall stor0.0x97a4b9f7 with:
                    gas gas_remaining wei
                   args 0, 64, (32 * stor107.length) + 96, stor107.length, mem[196 len (32 * stor107.length) + (32 * collateral.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0d2e2409(?) payable {
    if not stor107.length:
        if not collateral.length:
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args 0, 64, 96, stor107.length, collateral.length
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
                   args 0, 64, 96, stor107.length, collateral.length, mem[228 len 32 * collateral.length]
    else:
        mem[196] = address(stor107.field_0)
        idx = 196
        s = 0
        while (32 * stor107.length) + 196 > idx + 32:
            mem[idx + 32] = stor107[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor107.length) + 196] = collateral.length
        if not collateral.length:
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args 0, 64, (32 * stor107.length) + 96, stor107.length, mem[196 len (32 * stor107.length) + 32]
        else:
            mem[(32 * stor107.length) + 228] = uint256(collateral.field_0)
            idx = (32 * stor107.length) + 228
            s = 0
            while (32 * stor107.length) + (32 * collateral.length) + 228 > idx + 32:
                mem[idx + 32] = collateral[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor0)
            staticcall stor0.0xffc967b with:
                    gas gas_remaining wei
                   args 0, 64, (32 * stor107.length) + 96, stor107.length, mem[196 len (32 * stor107.length) + (32 * collateral.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_b68b02e2(?) payable {
    require calldata.size - 4 >= 96
    if stor100 != msg.sender:
        revert with 0, 'WFC'
    require ext_code.size(stor0)
    staticcall stor0.0x495ee13e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.getIndex(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < collateral.length
    if arg3 > collateral[ext_call.return_data[0]].field_0:
        revert with 0, 'sub overflow'
    require ext_call.return_data[0] < collateral.length
    collateral[ext_call.return_data[0]].field_0 -= arg3
    emit 0x380f306d: address(arg2), arg3
    emit 0xe664153e: address(arg2), address(arg1), arg3
    if ext_call.return_data[0]:
        require ext_code.size(arg2)
        call arg2.redeem(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'sub overflow'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size != 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
}

function sub_651340c4(?) payable {
    mem[96] = 0xcaf14b9500000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor103)
    staticcall stor103.0xcaf14b95 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    idx = 0
    while idx < stor107.length:
        require idx < collateral.length
        mem[0] = 108
        require idx < mem[ceil32(return_data.size) + 96]
        if collateral[idx].field_0 + mem[(32 * idx) + ceil32(return_data.size) + 128] < mem[(32 * idx) + ceil32(return_data.size) + 128]:
            revert with 0, 'add overflow'
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = collateral[idx].field_0 + mem[(32 * idx) + ceil32(return_data.size) + 128]
        idx = idx + 1
        continue 
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 0x97a4b9f700000000000000000000000000000000000000000000000000000000
    mem[(32 * _7) + ceil32(return_data.size) + 132] = 64
    mem[(32 * _7) + ceil32(return_data.size) + 196] = stor107.length
    if not stor107.length:
        mem[(32 * _7) + ceil32(return_data.size) + 164] = 96
        mem[(32 * _7) + ceil32(return_data.size) + 228] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _7) + ceil32(return_data.size) + 260 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        require ext_code.size(stor0)
        staticcall stor0.0x97a4b9f7 with:
                gas gas_remaining wei
               args 64, 96, stor107.length, mem[(32 * _7) + ceil32(return_data.size) + 228 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    else:
        mem[(32 * _7) + ceil32(return_data.size) + 228] = address(stor107.field_0)
        idx = (32 * _7) + ceil32(return_data.size) + 228
        s = 0
        while (32 * _7) + ceil32(return_data.size) + (32 * stor107.length) + 228 > idx + 32:
            mem[idx + 32] = stor107[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * _7) + ceil32(return_data.size) + 164] = (32 * stor107.length) + 96
        mem[(32 * _7) + ceil32(return_data.size) + (32 * stor107.length) + 228] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _7) + ceil32(return_data.size) + (32 * stor107.length) + 260 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        require ext_code.size(stor0)
        staticcall stor0.0x97a4b9f7 with:
                gas gas_remaining wei
               args Array(len=stor107.length, data=mem[(32 * _7) + ceil32(return_data.size) + 228 len (32 * mem[ceil32(return_data.size) + 96]) + (32 * stor107.length) + 32]), (32 * stor107.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_896a0089(?) payable {
    mem[96] = 0xcaf14b9500000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor103)
    staticcall stor103.0xcaf14b95 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    idx = 0
    while idx < stor107.length:
        require idx < collateral.length
        mem[0] = 108
        require idx < mem[ceil32(return_data.size) + 96]
        if collateral[idx].field_0 + mem[(32 * idx) + ceil32(return_data.size) + 128] < mem[(32 * idx) + ceil32(return_data.size) + 128]:
            revert with 0, 'add overflow'
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = collateral[idx].field_0 + mem[(32 * idx) + ceil32(return_data.size) + 128]
        idx = idx + 1
        continue 
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 0xffc967b00000000000000000000000000000000000000000000000000000000
    mem[(32 * _7) + ceil32(return_data.size) + 132] = 64
    mem[(32 * _7) + ceil32(return_data.size) + 196] = stor107.length
    if not stor107.length:
        mem[(32 * _7) + ceil32(return_data.size) + 164] = 96
        mem[(32 * _7) + ceil32(return_data.size) + 228] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _7) + ceil32(return_data.size) + 260 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        require ext_code.size(stor0)
        staticcall stor0.0xffc967b with:
                gas gas_remaining wei
               args 64, 96, stor107.length, mem[(32 * _7) + ceil32(return_data.size) + 228 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    else:
        mem[(32 * _7) + ceil32(return_data.size) + 228] = address(stor107.field_0)
        idx = (32 * _7) + ceil32(return_data.size) + 228
        s = 0
        while (32 * _7) + ceil32(return_data.size) + (32 * stor107.length) + 228 > idx + 32:
            mem[idx + 32] = stor107[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * _7) + ceil32(return_data.size) + 164] = (32 * stor107.length) + 96
        mem[(32 * _7) + ceil32(return_data.size) + (32 * stor107.length) + 228] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _7) + ceil32(return_data.size) + (32 * stor107.length) + 260 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        require ext_code.size(stor0)
        staticcall stor0.0xffc967b with:
                gas gas_remaining wei
               args Array(len=stor107.length, data=mem[(32 * _7) + ceil32(return_data.size) + 228 len (32 * mem[ceil32(return_data.size) + 96]) + (32 * stor107.length) + 32]), (32 * stor107.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_3824174c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0x8577d87600000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = arg1.length
    mem[(32 * arg1.length) + 196 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor103)
    staticcall stor103.0x8577d876 with:
            gas gas_remaining wei
           args mem[(32 * arg1.length) + 132 len (96 * arg1.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 64
    _35 = mem[(32 * arg1.length) + 128 len 4], 0
    require mem[(32 * arg1.length) + 128 len 4], 0 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], 0 + 32 <= return_data.size
    require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], 0 + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]
    _38 = mem[(32 * arg1.length) + _35 + 128]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + _35 + 128])] = mem[(32 * arg1.length) + _35 + 160 len floor32(mem[(32 * arg1.length) + _35 + 128])]
    mem[64] = (32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 160
    require 32, Mask(224, 32, arg1.length) >> 32 <= 4294967296
    require 32, Mask(224, 32, arg1.length) >> 32 + 32 <= return_data.size
    require mem[(32 * arg1.length) + 32, Mask(224, 32, arg1.length) >> 32 + 128] <= 4294967296 and 32, Mask(224, 32, arg1.length) >> 32 + (32 * mem[(32 * arg1.length) + 32, Mask(224, 32, arg1.length) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 160] = mem[(32 * arg1.length) + 32, Mask(224, 32, arg1.length) >> 32 + 128]
    _63 = mem[(32 * arg1.length) + 32, Mask(224, 32, arg1.length) >> 32 + 128]
    mem[(32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 192 len floor32(mem[(32 * arg1.length) + 32, Mask(224, 32, arg1.length) >> 32 + 128])] = mem[(32 * arg1.length) + 32, Mask(224, 32, arg1.length) >> 32 + 160 len floor32(mem[(32 * arg1.length) + 32, Mask(224, 32, arg1.length) >> 32 + 128])]
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 160]
        require mem[(32 * idx) + (32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 192] < collateral.length
        mem[0] = 108
        require idx < mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
        if collateral[mem[(32 * idx) + (32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 192]].field_0 + mem[(32 * idx) + (32 * arg1.length) + ceil32(return_data.size) + 160] < mem[(32 * idx) + (32 * arg1.length) + ceil32(return_data.size) + 160]:
            revert with 0, 'add overflow'
        require idx < mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
        mem[(32 * idx) + (32 * arg1.length) + ceil32(return_data.size) + 160] = collateral[mem[(32 * idx) + (32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 192]].field_0 + mem[(32 * idx) + (32 * arg1.length) + ceil32(return_data.size) + 160]
        idx = idx + 1
        continue 
    mem[(32 * _63) + (32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 192] = 32
    mem[(32 * _63) + (32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 224] = mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
    mem[(32 * _63) + (32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])]
    return Array(len=mem[(32 * arg1.length) + ceil32(return_data.size) + 128], data=mem[(32 * _63) + (32 * _38) + (32 * arg1.length) + ceil32(return_data.size) + 256 len 32 * mem[(32 * arg1.length) + ceil32(return_data.size) + 128]]), 
}

function sub_564a5c2e(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if msg.sender == stor100:
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 'AP:Lengths'
        mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
        mem[100] = 32
        mem[132] = ('cd', 36).length
        mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 164] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x2d79b8eb with:
                gas gas_remaining wei
               args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _16 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= 4294967296
        require mem[96 len 4], 0 + 32 <= return_data.size
        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
        _35 = mem[_16 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_16 + 96])] = mem[_16 + 128 len floor32(mem[_16 + 96])]
        mem[(32 * _35) + ceil32(return_data.size) + 128] = 0x3690f9e700000000000000000000000000000000000000000000000000000000
        mem[(32 * _35) + ceil32(return_data.size) + 132] = 32
        mem[(32 * _35) + ceil32(return_data.size) + 164] = ('cd', 36).length
        mem[(32 * _35) + ceil32(return_data.size) + 196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * _35) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x3690f9e7 with:
                gas gas_remaining wei
               args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _35) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _35) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _553 = mem[(32 * _35) + ceil32(return_data.size) + 128 len 4], 0
        require mem[(32 * _35) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
        require mem[(32 * _35) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
        require mem[(32 * _35) + ceil32(return_data.size) + mem[(32 * _35) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * _35) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[(32 * _35) + ceil32(return_data.size) + mem[(32 * _35) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 <= return_data.size
        mem[(32 * _35) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _35) + ceil32(return_data.size) + mem[(32 * _35) + ceil32(return_data.size) + 128 len 4], 0 + 128]
        _568 = mem[(32 * _35) + ceil32(return_data.size) + _553 + 128]
        mem[(32 * _35) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _35) + ceil32(return_data.size) + _553 + 128])] = mem[(32 * _35) + ceil32(return_data.size) + _553 + 160 len floor32(mem[(32 * _35) + ceil32(return_data.size) + _553 + 128])]
        mem[64] = (32 * _568) + (32 * _35) + (2 * ceil32(return_data.size)) + 160
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[(32 * _35) + (2 * ceil32(return_data.size)) + 128]
            require idx < ('cd', 36).length
            require idx < ('cd', 68).length
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[(32 * idx) + (32 * _35) + (2 * ceil32(return_data.size)) + 160]:
                _1484 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                mem[0] = 108
                _1499 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1499] = 12
                mem[_1499 + 32] = 'sub overflow'
                if cd[((32 * idx) + cd[68] + 36)] > collateral[_1484].field_0:
                    _1513 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _1513 + 68] = mem[idx + _1499 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1513 + 68] = mem[_1513 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _1513 + -mem[64] + 100
                require _1484 < collateral.length
                mem[0] = 108
                collateral[_1484].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).redeem(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                continue 
            _1483 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
            mem[0] = 108
            _1508 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1508] = 12
            mem[_1508 + 32] = 'sub overflow'
            if cd[((32 * idx) + cd[68] + 36)] > collateral[_1483].field_0:
                _1528 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _1528 + 68] = mem[idx + _1508 + 32]
                    idx = idx + 32
                    continue 
                mem[_1528 + 68] = mem[_1528 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _1528 + -mem[64] + 100
            require _1483 < collateral.length
            mem[0] = 108
            collateral[_1483].field_0 -= cd[((32 * idx) + cd[68] + 36)]
            emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
            emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
            _1643 = mem[64]
            mem[mem[64] + 36] = address(cd[4])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _1644 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1644 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1644 + 36 len 28]
            mem[64] = _1643 + 164
            mem[_1643 + 100] = 32
            mem[_1643 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1643 + 270 len 26]
            if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                revert with 0, 'Address: call to non-contract'
            _1679 = mem[_1644]
            t = _1644 + 32
            u = _1643 + 164
            s = mem[_1644]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_1643 + floor32(mem[_1644]) + 164] = mem[_1644 + -(mem[_1644] % 32) + floor32(mem[_1644]) + 64 len mem[_1644] % 32] or Mask(8 * -(mem[_1644] % 32) + 32, -(8 * -(mem[_1644] % 32) + 32) + 256, mem[_1643 + floor32(mem[_1644]) + 164])
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1643 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_1643 + 168 len _1679 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] != 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1643 + 274 len 22]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_1643 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1643 + 168] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _1643 + 232] = mem[idx + _1643 + 132]
                    idx = idx + 32
                    continue 
            else:
                mem[64] = _1643 + ceil32(return_data.size) + 165
                mem[_1643 + 164] = return_data.size
                mem[_1643 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size != 0:
                        require return_data.size >= 32
                        if not mem[_1643 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1643 + ceil32(return_data.size) + 275 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1643 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1643 + ceil32(return_data.size) + 169] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _1643 + ceil32(return_data.size) + 233] = mem[idx + _1643 + 132]
                    idx = idx + 32
                    continue 
            revert with 0, 32, 32, mem[_1643 + 132]
    else:
        if msg.sender == stor101:
            if ('cd', 36).length != ('cd', 68).length:
                revert with 0, 'AP:Lengths'
            mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
            mem[100] = 32
            mem[132] = ('cd', 36).length
            mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 36).length) + 164] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x2d79b8eb with:
                    gas gas_remaining wei
                   args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _27 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _41 = mem[_27 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_27 + 96])] = mem[_27 + 128 len floor32(mem[_27 + 96])]
            mem[(32 * _41) + ceil32(return_data.size) + 128] = 0x3690f9e700000000000000000000000000000000000000000000000000000000
            mem[(32 * _41) + ceil32(return_data.size) + 132] = 32
            mem[(32 * _41) + ceil32(return_data.size) + 164] = ('cd', 36).length
            mem[(32 * _41) + ceil32(return_data.size) + 196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * _41) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x3690f9e7 with:
                    gas gas_remaining wei
                   args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _41) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _41) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _555 = mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], 0
            require mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
            require mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
            require mem[(32 * _41) + ceil32(return_data.size) + mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[(32 * _41) + ceil32(return_data.size) + mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 <= return_data.size
            mem[(32 * _41) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _41) + ceil32(return_data.size) + mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], 0 + 128]
            _569 = mem[(32 * _41) + ceil32(return_data.size) + _555 + 128]
            mem[(32 * _41) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _41) + ceil32(return_data.size) + _555 + 128])] = mem[(32 * _41) + ceil32(return_data.size) + _555 + 160 len floor32(mem[(32 * _41) + ceil32(return_data.size) + _555 + 128])]
            mem[64] = (32 * _569) + (32 * _41) + (2 * ceil32(return_data.size)) + 160
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * _41) + (2 * ceil32(return_data.size)) + 128]
                require idx < ('cd', 36).length
                require idx < ('cd', 68).length
                require idx < mem[ceil32(return_data.size) + 96]
                if mem[(32 * idx) + (32 * _41) + (2 * ceil32(return_data.size)) + 160]:
                    _1486 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                    mem[0] = 108
                    _1501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1501] = 12
                    mem[_1501 + 32] = 'sub overflow'
                    if cd[((32 * idx) + cd[68] + 36)] > collateral[_1486].field_0:
                        _1516 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _1516 + 68] = mem[idx + _1501 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1516 + 68] = mem[_1516 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _1516 + -mem[64] + 100
                    require _1486 < collateral.length
                    mem[0] = 108
                    collateral[_1486].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                    emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                    mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                    emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    continue 
                _1485 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                mem[0] = 108
                _1509 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1509] = 12
                mem[_1509 + 32] = 'sub overflow'
                if cd[((32 * idx) + cd[68] + 36)] > collateral[_1485].field_0:
                    _1531 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _1531 + 68] = mem[idx + _1509 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1531 + 68] = mem[_1531 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _1531 + -mem[64] + 100
                require _1485 < collateral.length
                mem[0] = 108
                collateral[_1485].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64] + 32] = address(cd[4])
                mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                _1647 = mem[64]
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _1648 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1648 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1648 + 36 len 28]
                mem[64] = _1647 + 164
                mem[_1647 + 100] = 32
                mem[_1647 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1647 + 270 len 26]
                if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                    revert with 0, 'Address: call to non-contract'
                _1683 = mem[_1648]
                t = _1648 + 32
                u = _1647 + 164
                s = mem[_1648]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1647 + floor32(mem[_1648]) + 164] = mem[_1648 + -(mem[_1648] % 32) + floor32(mem[_1648]) + 64 len mem[_1648] % 32] or Mask(8 * -(mem[_1648] % 32) + 32, -(8 * -(mem[_1648] % 32) + 32) + 256, mem[_1647 + floor32(mem[_1648]) + 164])
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1647 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1647 + 168 len _1683 - 4]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96] != 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1647 + 274 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1647 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1647 + 168] = 32
                    idx = 32
                    while idx < 32:
                        mem[idx + _1647 + 232] = mem[idx + _1647 + 132]
                        idx = idx + 32
                        continue 
                else:
                    mem[64] = _1647 + ceil32(return_data.size) + 165
                    mem[_1647 + 164] = return_data.size
                    mem[_1647 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size != 0:
                            require return_data.size >= 32
                            if not mem[_1647 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1647 + ceil32(return_data.size) + 275 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1647 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1647 + ceil32(return_data.size) + 169] = 32
                    idx = 32
                    while idx < 32:
                        mem[idx + _1647 + ceil32(return_data.size) + 233] = mem[idx + _1647 + 132]
                        idx = idx + 32
                        continue 
                revert with 0, 32, 32, mem[_1647 + 132]
        else:
            if msg.sender == stor102:
                if ('cd', 36).length != ('cd', 68).length:
                    revert with 0, 'AP:Lengths'
                mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
                mem[100] = 32
                mem[132] = ('cd', 36).length
                mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 36).length) + 164] = 0
                require ext_code.size(stor0)
                staticcall stor0.0x2d79b8eb with:
                        gas gas_remaining wei
                       args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _31 = mem[96 len 4], 0
                require mem[96 len 4], 0 <= 4294967296
                require mem[96 len 4], 0 + 32 <= return_data.size
                require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                _46 = mem[_31 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_31 + 96])] = mem[_31 + 128 len floor32(mem[_31 + 96])]
                mem[(32 * _46) + ceil32(return_data.size) + 128] = 0x3690f9e700000000000000000000000000000000000000000000000000000000
                mem[(32 * _46) + ceil32(return_data.size) + 132] = 32
                mem[(32 * _46) + ceil32(return_data.size) + 164] = ('cd', 36).length
                mem[(32 * _46) + ceil32(return_data.size) + 196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * _46) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = 0
                require ext_code.size(stor0)
                staticcall stor0.0x3690f9e7 with:
                        gas gas_remaining wei
                       args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _46) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _46) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _557 = mem[(32 * _46) + ceil32(return_data.size) + 128 len 4], 0
                require mem[(32 * _46) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
                require mem[(32 * _46) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
                require mem[(32 * _46) + ceil32(return_data.size) + mem[(32 * _46) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * _46) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[(32 * _46) + ceil32(return_data.size) + mem[(32 * _46) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 <= return_data.size
                mem[(32 * _46) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _46) + ceil32(return_data.size) + mem[(32 * _46) + ceil32(return_data.size) + 128 len 4], 0 + 128]
                _570 = mem[(32 * _46) + ceil32(return_data.size) + _557 + 128]
                mem[(32 * _46) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _46) + ceil32(return_data.size) + _557 + 128])] = mem[(32 * _46) + ceil32(return_data.size) + _557 + 160 len floor32(mem[(32 * _46) + ceil32(return_data.size) + _557 + 128])]
                mem[64] = (32 * _570) + (32 * _46) + (2 * ceil32(return_data.size)) + 160
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < mem[(32 * _46) + (2 * ceil32(return_data.size)) + 128]
                    require idx < ('cd', 36).length
                    require idx < ('cd', 68).length
                    require idx < mem[ceil32(return_data.size) + 96]
                    if mem[(32 * idx) + (32 * _46) + (2 * ceil32(return_data.size)) + 160]:
                        _1488 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                        mem[0] = 108
                        _1503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1503] = 12
                        mem[_1503 + 32] = 'sub overflow'
                        if cd[((32 * idx) + cd[68] + 36)] > collateral[_1488].field_0:
                            _1519 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _1519 + 68] = mem[idx + _1503 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1519 + 68] = mem[_1519 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _1519 + -mem[64] + 100
                        require _1488 < collateral.length
                        mem[0] = 108
                        collateral[_1488].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                        emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                        emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).redeem(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                    _1487 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                    mem[0] = 108
                    _1510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1510] = 12
                    mem[_1510 + 32] = 'sub overflow'
                    if cd[((32 * idx) + cd[68] + 36)] > collateral[_1487].field_0:
                        _1534 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _1534 + 68] = mem[idx + _1510 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1534 + 68] = mem[_1534 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _1534 + -mem[64] + 100
                    require _1487 < collateral.length
                    mem[0] = 108
                    collateral[_1487].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                    emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                    mem[mem[64] + 32] = address(cd[4])
                    mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                    emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                    _1651 = mem[64]
                    mem[mem[64] + 36] = address(cd[4])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _1652 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1652 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1652 + 36 len 28]
                    mem[64] = _1651 + 164
                    mem[_1651 + 100] = 32
                    mem[_1651 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1651 + 270 len 26]
                    if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        revert with 0, 'Address: call to non-contract'
                    _1687 = mem[_1652]
                    t = _1652 + 32
                    u = _1651 + 164
                    s = mem[_1652]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1651 + floor32(mem[_1652]) + 164] = mem[_1652 + -(mem[_1652] % 32) + floor32(mem[_1652]) + 64 len mem[_1652] % 32] or Mask(8 * -(mem[_1652] % 32) + 32, -(8 * -(mem[_1652] % 32) + 32) + 256, mem[_1651 + floor32(mem[_1652]) + 164])
                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1651 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1651 + 168 len _1687 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] != 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1651 + 274 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1651 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1651 + 168] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + _1651 + 232] = mem[idx + _1651 + 132]
                            idx = idx + 32
                            continue 
                    else:
                        mem[64] = _1651 + ceil32(return_data.size) + 165
                        mem[_1651 + 164] = return_data.size
                        mem[_1651 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size != 0:
                                require return_data.size >= 32
                                if not mem[_1651 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1651 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1651 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1651 + ceil32(return_data.size) + 169] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + _1651 + ceil32(return_data.size) + 233] = mem[idx + _1651 + 132]
                            idx = idx + 32
                            continue 
                    revert with 0, 32, 32, mem[_1651 + 132]
            else:
                if msg.sender == stor104:
                    if ('cd', 36).length != ('cd', 68).length:
                        revert with 0, 'AP:Lengths'
                    mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
                    mem[100] = 32
                    mem[132] = ('cd', 36).length
                    mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + 164] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.0x2d79b8eb with:
                            gas gas_remaining wei
                           args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _37 = mem[96 len 4], 0
                    require mem[96 len 4], 0 <= 4294967296
                    require mem[96 len 4], 0 + 32 <= return_data.size
                    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                    _52 = mem[_37 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_37 + 96])] = mem[_37 + 128 len floor32(mem[_37 + 96])]
                    mem[(32 * _52) + ceil32(return_data.size) + 128] = 0x3690f9e700000000000000000000000000000000000000000000000000000000
                    mem[(32 * _52) + ceil32(return_data.size) + 132] = 32
                    mem[(32 * _52) + ceil32(return_data.size) + 164] = ('cd', 36).length
                    mem[(32 * _52) + ceil32(return_data.size) + 196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * _52) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.0x3690f9e7 with:
                            gas gas_remaining wei
                           args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _52) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _52) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _559 = mem[(32 * _52) + ceil32(return_data.size) + 128 len 4], 0
                    require mem[(32 * _52) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
                    require mem[(32 * _52) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
                    require mem[(32 * _52) + ceil32(return_data.size) + mem[(32 * _52) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * _52) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[(32 * _52) + ceil32(return_data.size) + mem[(32 * _52) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[(32 * _52) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _52) + ceil32(return_data.size) + mem[(32 * _52) + ceil32(return_data.size) + 128 len 4], 0 + 128]
                    _571 = mem[(32 * _52) + ceil32(return_data.size) + _559 + 128]
                    mem[(32 * _52) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _52) + ceil32(return_data.size) + _559 + 128])] = mem[(32 * _52) + ceil32(return_data.size) + _559 + 160 len floor32(mem[(32 * _52) + ceil32(return_data.size) + _559 + 128])]
                    mem[64] = (32 * _571) + (32 * _52) + (2 * ceil32(return_data.size)) + 160
                    idx = 0
                    while idx < ('cd', 36).length:
                        require idx < mem[(32 * _52) + (2 * ceil32(return_data.size)) + 128]
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        if mem[(32 * idx) + (32 * _52) + (2 * ceil32(return_data.size)) + 160]:
                            _1490 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                            mem[0] = 108
                            _1505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1505] = 12
                            mem[_1505 + 32] = 'sub overflow'
                            if cd[((32 * idx) + cd[68] + 36)] > collateral[_1490].field_0:
                                _1522 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _1522 + 68] = mem[idx + _1505 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1522 + 68] = mem[_1522 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _1522 + -mem[64] + 100
                            require _1490 < collateral.length
                            mem[0] = 108
                            collateral[_1490].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                            emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                            emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        _1489 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                        mem[0] = 108
                        _1511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1511] = 12
                        mem[_1511 + 32] = 'sub overflow'
                        if cd[((32 * idx) + cd[68] + 36)] > collateral[_1489].field_0:
                            _1537 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _1537 + 68] = mem[idx + _1511 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1537 + 68] = mem[_1537 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _1537 + -mem[64] + 100
                        require _1489 < collateral.length
                        mem[0] = 108
                        collateral[_1489].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                        emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 32] = address(cd[4])
                        mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                        emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                        _1655 = mem[64]
                        mem[mem[64] + 36] = address(cd[4])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _1656 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1656 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1656 + 36 len 28]
                        mem[64] = _1655 + 164
                        mem[_1655 + 100] = 32
                        mem[_1655 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1655 + 270 len 26]
                        if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                            revert with 0, 'Address: call to non-contract'
                        _1691 = mem[_1656]
                        t = _1656 + 32
                        u = _1655 + 164
                        s = mem[_1656]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1655 + floor32(mem[_1656]) + 164] = mem[_1656 + -(mem[_1656] % 32) + floor32(mem[_1656]) + 64 len mem[_1656] % 32] or Mask(8 * -(mem[_1656] % 32) + 32, -(8 * -(mem[_1656] % 32) + 32) + 256, mem[_1655 + floor32(mem[_1656]) + 164])
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1655 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1655 + 168 len _1691 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96] != 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1655 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1655 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1655 + 168] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1655 + 232] = mem[idx + _1655 + 132]
                                idx = idx + 32
                                continue 
                        else:
                            mem[64] = _1655 + ceil32(return_data.size) + 165
                            mem[_1655 + 164] = return_data.size
                            mem[_1655 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size != 0:
                                    require return_data.size >= 32
                                    if not mem[_1655 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1655 + ceil32(return_data.size) + 275 len 22]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1655 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1655 + ceil32(return_data.size) + 169] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1655 + ceil32(return_data.size) + 233] = mem[idx + _1655 + 132]
                                idx = idx + 32
                                continue 
                        revert with 0, 32, 32, mem[_1655 + 132]
                else:
                    if stor105 != msg.sender:
                        revert with 0, 'WFC'
                    if ('cd', 36).length != ('cd', 68).length:
                        revert with 0, 'AP:Lengths'
                    mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
                    mem[100] = 32
                    mem[132] = ('cd', 36).length
                    mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + 164] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.0x2d79b8eb with:
                            gas gas_remaining wei
                           args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _39 = mem[96 len 4], 0
                    require mem[96 len 4], 0 <= 4294967296
                    require mem[96 len 4], 0 + 32 <= return_data.size
                    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                    _53 = mem[_39 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_39 + 96])] = mem[_39 + 128 len floor32(mem[_39 + 96])]
                    mem[(32 * _53) + ceil32(return_data.size) + 128] = 0x3690f9e700000000000000000000000000000000000000000000000000000000
                    mem[(32 * _53) + ceil32(return_data.size) + 132] = 32
                    mem[(32 * _53) + ceil32(return_data.size) + 164] = ('cd', 36).length
                    mem[(32 * _53) + ceil32(return_data.size) + 196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * _53) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.0x3690f9e7 with:
                            gas gas_remaining wei
                           args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _53) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _53) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _561 = mem[(32 * _53) + ceil32(return_data.size) + 128 len 4], 0
                    require mem[(32 * _53) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
                    require mem[(32 * _53) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
                    require mem[(32 * _53) + ceil32(return_data.size) + mem[(32 * _53) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * _53) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[(32 * _53) + ceil32(return_data.size) + mem[(32 * _53) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 <= return_data.size
                    mem[(32 * _53) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _53) + ceil32(return_data.size) + mem[(32 * _53) + ceil32(return_data.size) + 128 len 4], 0 + 128]
                    _572 = mem[(32 * _53) + ceil32(return_data.size) + _561 + 128]
                    mem[(32 * _53) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _53) + ceil32(return_data.size) + _561 + 128])] = mem[(32 * _53) + ceil32(return_data.size) + _561 + 160 len floor32(mem[(32 * _53) + ceil32(return_data.size) + _561 + 128])]
                    mem[64] = (32 * _572) + (32 * _53) + (2 * ceil32(return_data.size)) + 160
                    idx = 0
                    while idx < ('cd', 36).length:
                        require idx < mem[(32 * _53) + (2 * ceil32(return_data.size)) + 128]
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        if mem[(32 * idx) + (32 * _53) + (2 * ceil32(return_data.size)) + 160]:
                            _1492 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                            mem[0] = 108
                            _1507 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1507] = 12
                            mem[_1507 + 32] = 'sub overflow'
                            if cd[((32 * idx) + cd[68] + 36)] > collateral[_1492].field_0:
                                _1525 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 12
                                idx = 0
                                while idx < 12:
                                    mem[idx + _1525 + 68] = mem[idx + _1507 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1525 + 68] = mem[_1525 + 88 len 12]
                                revert with memory
                                  from mem[64]
                                   len _1525 + -mem[64] + 100
                            require _1492 < collateral.length
                            mem[0] = 108
                            collateral[_1492].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                            emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                            emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                        _1491 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                        mem[0] = 108
                        _1512 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1512] = 12
                        mem[_1512 + 32] = 'sub overflow'
                        if cd[((32 * idx) + cd[68] + 36)] > collateral[_1491].field_0:
                            _1540 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _1540 + 68] = mem[idx + _1512 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1540 + 68] = mem[_1540 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _1540 + -mem[64] + 100
                        require _1491 < collateral.length
                        mem[0] = 108
                        collateral[_1491].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                        emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 32] = address(cd[4])
                        mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                        emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                        _1659 = mem[64]
                        mem[mem[64] + 36] = address(cd[4])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _1660 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1660 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1660 + 36 len 28]
                        mem[64] = _1659 + 164
                        mem[_1659 + 100] = 32
                        mem[_1659 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1659 + 270 len 26]
                        if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                            revert with 0, 'Address: call to non-contract'
                        _1695 = mem[_1660]
                        t = _1660 + 32
                        u = _1659 + 164
                        s = mem[_1660]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1659 + floor32(mem[_1660]) + 164] = mem[_1660 + -(mem[_1660] % 32) + floor32(mem[_1660]) + 64 len mem[_1660] % 32] or Mask(8 * -(mem[_1660] % 32) + 32, -(8 * -(mem[_1660] % 32) + 32) + 256, mem[_1659 + floor32(mem[_1660]) + 164])
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1659 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1659 + 168 len _1695 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96] != 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1659 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1659 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1659 + 168] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1659 + 232] = mem[idx + _1659 + 132]
                                idx = idx + 32
                                continue 
                        else:
                            mem[64] = _1659 + ceil32(return_data.size) + 165
                            mem[_1659 + 164] = return_data.size
                            mem[_1659 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size != 0:
                                    require return_data.size >= 32
                                    if not mem[_1659 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1659 + ceil32(return_data.size) + 275 len 22]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1659 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1659 + ceil32(return_data.size) + 169] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1659 + ceil32(return_data.size) + 233] = mem[idx + _1659 + 132]
                                idx = idx + 32
                                continue 
                        revert with 0, 32, 32, mem[_1659 + 132]
}

function sub_d0d8c20d(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if msg.sender == stor100:
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 'AP:Lengths'
        mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
        mem[100] = 32
        mem[132] = ('cd', 36).length
        mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 164] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x2d79b8eb with:
                gas gas_remaining wei
               args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _16 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= 4294967296
        require mem[96 len 4], 0 + 32 <= return_data.size
        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
        _35 = mem[_16 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_16 + 96])] = mem[_16 + 128 len floor32(mem[_16 + 96])]
        mem[64] = (32 * _35) + ceil32(return_data.size) + 128
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            if 0 == cd[((32 * idx) + cd[68] + 36)]:
                idx = idx + 1
                continue 
            require idx < ('cd', 36).length
            require idx < mem[ceil32(return_data.size) + 96]
            _873 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
            mem[0] = 108
            _925 = mem[64]
            mem[64] = mem[64] + 64
            mem[_925] = 12
            mem[_925 + 32] = 'sub overflow'
            if cd[((32 * idx) + cd[68] + 36)] > collateral[_873].field_0:
                _950 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 12
                idx = 0
                while idx < 12:
                    mem[idx + _950 + 68] = mem[idx + _925 + 32]
                    idx = idx + 32
                    continue 
                mem[_950 + 68] = mem[_950 + 88 len 12]
                revert with memory
                  from mem[64]
                   len _950 + -mem[64] + 100
            require _873 < collateral.length
            mem[0] = 108
            collateral[_873].field_0 -= cd[((32 * idx) + cd[68] + 36)]
            emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
            emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
            _1018 = mem[64]
            mem[mem[64] + 36] = address(cd[4])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _1019 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1019 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1019 + 36 len 28]
            mem[64] = _1018 + 164
            mem[_1018 + 100] = 32
            mem[_1018 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1018 + 270 len 26]
            if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                revert with 0, 'Address: call to non-contract'
            _1049 = mem[_1019]
            t = _1019 + 32
            u = _1018 + 164
            s = mem[_1019]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_1018 + floor32(mem[_1019]) + 164] = mem[_1019 + -(mem[_1019] % 32) + floor32(mem[_1019]) + 64 len mem[_1019] % 32] or Mask(8 * -(mem[_1019] % 32) + 32, -(8 * -(mem[_1019] % 32) + 32) + 256, mem[_1018 + floor32(mem[_1019]) + 164])
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1018 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_1018 + 168 len _1049 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] != 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1018 + 274 len 22]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_1018 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1018 + 168] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _1018 + 232] = mem[idx + _1018 + 132]
                    idx = idx + 32
                    continue 
            else:
                mem[64] = _1018 + ceil32(return_data.size) + 165
                mem[_1018 + 164] = return_data.size
                mem[_1018 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size != 0:
                        require return_data.size >= 32
                        if not mem[_1018 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1018 + ceil32(return_data.size) + 275 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1018 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1018 + ceil32(return_data.size) + 169] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _1018 + ceil32(return_data.size) + 233] = mem[idx + _1018 + 132]
                    idx = idx + 32
                    continue 
            revert with 0, 32, 32, mem[_1018 + 132]
        if stor103 == address(cd[4]):
            mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
            mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
            mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0xa7a24edd with:
                 gas gas_remaining wei
                args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _923 = mem[64]
            mem[mem[64] + 64] = address(cd[4])
            mem[mem[64]] = 96
            mem[mem[64] + 96] = ('cd', 36).length
            mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
            mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
            mem[_923 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
            mem[_923 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(32 * ('cd', 68).length) + _923 + floor32(('cd', 36).length) + 160] = 0
            emit 0x6af4d451: mem[mem[64] len _923 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
        else:
            if stor102 == address(cd[4]):
                mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0xa7a24edd with:
                     gas gas_remaining wei
                    args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _938 = mem[64]
                mem[mem[64] + 64] = address(cd[4])
                mem[mem[64]] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                mem[_938 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                mem[_938 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[(32 * ('cd', 68).length) + _938 + floor32(('cd', 36).length) + 160] = 0
                emit 0x6af4d451: mem[mem[64] len _938 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
            else:
                if stor106 != address(cd[4]):
                    _898 = mem[64]
                    mem[mem[64] + 64] = address(cd[4])
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = ('cd', 36).length
                    mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                    mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                    mem[_898 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                    mem[_898 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[(32 * ('cd', 68).length) + _898 + floor32(('cd', 36).length) + 160] = 0
                    emit 0x6af4d451: mem[mem[64] len _898 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                else:
                    mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                    mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                    mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa7a24edd with:
                         gas gas_remaining wei
                        args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _948 = mem[64]
                    mem[mem[64] + 64] = address(cd[4])
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = ('cd', 36).length
                    mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                    mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                    mem[_948 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                    mem[_948 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[(32 * ('cd', 68).length) + _948 + floor32(('cd', 36).length) + 160] = 0
                    emit 0x6af4d451: mem[mem[64] len _948 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
    else:
        if msg.sender == stor101:
            if ('cd', 36).length != ('cd', 68).length:
                revert with 0, 'AP:Lengths'
            mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
            mem[100] = 32
            mem[132] = ('cd', 36).length
            mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 36).length) + 164] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x2d79b8eb with:
                    gas gas_remaining wei
                   args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _27 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= 4294967296
            require mem[96 len 4], 0 + 32 <= return_data.size
            require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
            _41 = mem[_27 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_27 + 96])] = mem[_27 + 128 len floor32(mem[_27 + 96])]
            mem[64] = (32 * _41) + ceil32(return_data.size) + 128
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                if 0 == cd[((32 * idx) + cd[68] + 36)]:
                    idx = idx + 1
                    continue 
                require idx < ('cd', 36).length
                require idx < mem[ceil32(return_data.size) + 96]
                _874 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                mem[0] = 108
                _928 = mem[64]
                mem[64] = mem[64] + 64
                mem[_928] = 12
                mem[_928 + 32] = 'sub overflow'
                if cd[((32 * idx) + cd[68] + 36)] > collateral[_874].field_0:
                    _955 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    idx = 0
                    while idx < 12:
                        mem[idx + _955 + 68] = mem[idx + _928 + 32]
                        idx = idx + 32
                        continue 
                    mem[_955 + 68] = mem[_955 + 88 len 12]
                    revert with memory
                      from mem[64]
                       len _955 + -mem[64] + 100
                require _874 < collateral.length
                mem[0] = 108
                collateral[_874].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64] + 32] = address(cd[4])
                mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                _1021 = mem[64]
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _1022 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1022 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1022 + 36 len 28]
                mem[64] = _1021 + 164
                mem[_1021 + 100] = 32
                mem[_1021 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1021 + 270 len 26]
                if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                    revert with 0, 'Address: call to non-contract'
                _1053 = mem[_1022]
                t = _1022 + 32
                u = _1021 + 164
                s = mem[_1022]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1021 + floor32(mem[_1022]) + 164] = mem[_1022 + -(mem[_1022] % 32) + floor32(mem[_1022]) + 64 len mem[_1022] % 32] or Mask(8 * -(mem[_1022] % 32) + 32, -(8 * -(mem[_1022] % 32) + 32) + 256, mem[_1021 + floor32(mem[_1022]) + 164])
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1021 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1021 + 168 len _1053 - 4]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96] != 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1021 + 274 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1021 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1021 + 168] = 32
                    idx = 32
                    while idx < 32:
                        mem[idx + _1021 + 232] = mem[idx + _1021 + 132]
                        idx = idx + 32
                        continue 
                else:
                    mem[64] = _1021 + ceil32(return_data.size) + 165
                    mem[_1021 + 164] = return_data.size
                    mem[_1021 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size != 0:
                            require return_data.size >= 32
                            if not mem[_1021 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1021 + ceil32(return_data.size) + 275 len 22]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1021 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1021 + ceil32(return_data.size) + 169] = 32
                    idx = 32
                    while idx < 32:
                        mem[idx + _1021 + ceil32(return_data.size) + 233] = mem[idx + _1021 + 132]
                        idx = idx + 32
                        continue 
                revert with 0, 32, 32, mem[_1021 + 132]
            if stor103 == address(cd[4]):
                mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0xa7a24edd with:
                     gas gas_remaining wei
                    args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _926 = mem[64]
                mem[mem[64] + 64] = address(cd[4])
                mem[mem[64]] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                mem[_926 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                mem[_926 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[(32 * ('cd', 68).length) + _926 + floor32(('cd', 36).length) + 160] = 0
                emit 0x6af4d451: mem[mem[64] len _926 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
            else:
                if stor102 == address(cd[4]):
                    mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                    mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                    mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa7a24edd with:
                         gas gas_remaining wei
                        args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _940 = mem[64]
                    mem[mem[64] + 64] = address(cd[4])
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = ('cd', 36).length
                    mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                    mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                    mem[_940 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                    mem[_940 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[(32 * ('cd', 68).length) + _940 + floor32(('cd', 36).length) + 160] = 0
                    emit 0x6af4d451: mem[mem[64] len _940 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                else:
                    if stor106 != address(cd[4]):
                        _903 = mem[64]
                        mem[mem[64] + 64] = address(cd[4])
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = ('cd', 36).length
                        mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                        mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                        mem[_903 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                        mem[_903 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + _903 + floor32(('cd', 36).length) + 160] = 0
                        emit 0x6af4d451: mem[mem[64] len _903 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                    else:
                        mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                        mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                        mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0xa7a24edd with:
                             gas gas_remaining wei
                            args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _953 = mem[64]
                        mem[mem[64] + 64] = address(cd[4])
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = ('cd', 36).length
                        mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                        mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                        mem[_953 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                        mem[_953 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + _953 + floor32(('cd', 36).length) + 160] = 0
                        emit 0x6af4d451: mem[mem[64] len _953 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
        else:
            if msg.sender == stor102:
                if ('cd', 36).length != ('cd', 68).length:
                    revert with 0, 'AP:Lengths'
                mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
                mem[100] = 32
                mem[132] = ('cd', 36).length
                mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 36).length) + 164] = 0
                require ext_code.size(stor0)
                staticcall stor0.0x2d79b8eb with:
                        gas gas_remaining wei
                       args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _31 = mem[96 len 4], 0
                require mem[96 len 4], 0 <= 4294967296
                require mem[96 len 4], 0 + 32 <= return_data.size
                require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                _44 = mem[_31 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_31 + 96])] = mem[_31 + 128 len floor32(mem[_31 + 96])]
                mem[64] = (32 * _44) + ceil32(return_data.size) + 128
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    if 0 == cd[((32 * idx) + cd[68] + 36)]:
                        idx = idx + 1
                        continue 
                    require idx < ('cd', 36).length
                    require idx < mem[ceil32(return_data.size) + 96]
                    _875 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                    mem[0] = 108
                    _931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_931] = 12
                    mem[_931 + 32] = 'sub overflow'
                    if cd[((32 * idx) + cd[68] + 36)] > collateral[_875].field_0:
                        _960 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 12
                        idx = 0
                        while idx < 12:
                            mem[idx + _960 + 68] = mem[idx + _931 + 32]
                            idx = idx + 32
                            continue 
                        mem[_960 + 68] = mem[_960 + 88 len 12]
                        revert with memory
                          from mem[64]
                           len _960 + -mem[64] + 100
                    require _875 < collateral.length
                    mem[0] = 108
                    collateral[_875].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                    emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                    mem[mem[64] + 32] = address(cd[4])
                    mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                    emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                    _1024 = mem[64]
                    mem[mem[64] + 36] = address(cd[4])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _1025 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1025 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1025 + 36 len 28]
                    mem[64] = _1024 + 164
                    mem[_1024 + 100] = 32
                    mem[_1024 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1024 + 270 len 26]
                    if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        revert with 0, 'Address: call to non-contract'
                    _1057 = mem[_1025]
                    t = _1025 + 32
                    u = _1024 + 164
                    s = mem[_1025]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1024 + floor32(mem[_1025]) + 164] = mem[_1025 + -(mem[_1025] % 32) + floor32(mem[_1025]) + 64 len mem[_1025] % 32] or Mask(8 * -(mem[_1025] % 32) + 32, -(8 * -(mem[_1025] % 32) + 32) + 256, mem[_1024 + floor32(mem[_1025]) + 164])
                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1024 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1024 + 168 len _1057 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96] != 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1024 + 274 len 22]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1024 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1024 + 168] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + _1024 + 232] = mem[idx + _1024 + 132]
                            idx = idx + 32
                            continue 
                    else:
                        mem[64] = _1024 + ceil32(return_data.size) + 165
                        mem[_1024 + 164] = return_data.size
                        mem[_1024 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size != 0:
                                require return_data.size >= 32
                                if not mem[_1024 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1024 + ceil32(return_data.size) + 275 len 22]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1024 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1024 + ceil32(return_data.size) + 169] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + _1024 + ceil32(return_data.size) + 233] = mem[idx + _1024 + 132]
                            idx = idx + 32
                            continue 
                    revert with 0, 32, 32, mem[_1024 + 132]
                if stor103 == address(cd[4]):
                    mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                    mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                    mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa7a24edd with:
                         gas gas_remaining wei
                        args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _929 = mem[64]
                    mem[mem[64] + 64] = address(cd[4])
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = ('cd', 36).length
                    mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                    mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                    mem[_929 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                    mem[_929 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[(32 * ('cd', 68).length) + _929 + floor32(('cd', 36).length) + 160] = 0
                    emit 0x6af4d451: mem[mem[64] len _929 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                else:
                    if stor102 == address(cd[4]):
                        mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                        mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                        mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0xa7a24edd with:
                             gas gas_remaining wei
                            args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _942 = mem[64]
                        mem[mem[64] + 64] = address(cd[4])
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = ('cd', 36).length
                        mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                        mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                        mem[_942 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                        mem[_942 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + _942 + floor32(('cd', 36).length) + 160] = 0
                        emit 0x6af4d451: mem[mem[64] len _942 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                    else:
                        if stor106 != address(cd[4]):
                            _908 = mem[64]
                            mem[mem[64] + 64] = address(cd[4])
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = ('cd', 36).length
                            mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                            mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                            mem[_908 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                            mem[_908 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[(32 * ('cd', 68).length) + _908 + floor32(('cd', 36).length) + 160] = 0
                            emit 0x6af4d451: mem[mem[64] len _908 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                        else:
                            mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                            mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                            mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xa7a24edd with:
                                 gas gas_remaining wei
                                args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _958 = mem[64]
                            mem[mem[64] + 64] = address(cd[4])
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = ('cd', 36).length
                            mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                            mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                            mem[_958 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                            mem[_958 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[(32 * ('cd', 68).length) + _958 + floor32(('cd', 36).length) + 160] = 0
                            emit 0x6af4d451: mem[mem[64] len _958 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
            else:
                if msg.sender == stor104:
                    if ('cd', 36).length != ('cd', 68).length:
                        revert with 0, 'AP:Lengths'
                    mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
                    mem[100] = 32
                    mem[132] = ('cd', 36).length
                    mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + 164] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.0x2d79b8eb with:
                            gas gas_remaining wei
                           args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _37 = mem[96 len 4], 0
                    require mem[96 len 4], 0 <= 4294967296
                    require mem[96 len 4], 0 + 32 <= return_data.size
                    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                    _48 = mem[_37 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_37 + 96])] = mem[_37 + 128 len floor32(mem[_37 + 96])]
                    mem[64] = (32 * _48) + ceil32(return_data.size) + 128
                    idx = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        if 0 == cd[((32 * idx) + cd[68] + 36)]:
                            idx = idx + 1
                            continue 
                        require idx < ('cd', 36).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _876 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                        mem[0] = 108
                        _934 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_934] = 12
                        mem[_934 + 32] = 'sub overflow'
                        if cd[((32 * idx) + cd[68] + 36)] > collateral[_876].field_0:
                            _965 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _965 + 68] = mem[idx + _934 + 32]
                                idx = idx + 32
                                continue 
                            mem[_965 + 68] = mem[_965 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _965 + -mem[64] + 100
                        require _876 < collateral.length
                        mem[0] = 108
                        collateral[_876].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                        emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 32] = address(cd[4])
                        mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                        emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                        _1027 = mem[64]
                        mem[mem[64] + 36] = address(cd[4])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _1028 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1028 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1028 + 36 len 28]
                        mem[64] = _1027 + 164
                        mem[_1027 + 100] = 32
                        mem[_1027 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1027 + 270 len 26]
                        if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                            revert with 0, 'Address: call to non-contract'
                        _1061 = mem[_1028]
                        t = _1028 + 32
                        u = _1027 + 164
                        s = mem[_1028]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1027 + floor32(mem[_1028]) + 164] = mem[_1028 + -(mem[_1028] % 32) + floor32(mem[_1028]) + 64 len mem[_1028] % 32] or Mask(8 * -(mem[_1028] % 32) + 32, -(8 * -(mem[_1028] % 32) + 32) + 256, mem[_1027 + floor32(mem[_1028]) + 164])
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1027 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1027 + 168 len _1061 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96] != 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1027 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1027 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1027 + 168] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1027 + 232] = mem[idx + _1027 + 132]
                                idx = idx + 32
                                continue 
                        else:
                            mem[64] = _1027 + ceil32(return_data.size) + 165
                            mem[_1027 + 164] = return_data.size
                            mem[_1027 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size != 0:
                                    require return_data.size >= 32
                                    if not mem[_1027 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1027 + ceil32(return_data.size) + 275 len 22]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1027 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1027 + ceil32(return_data.size) + 169] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1027 + ceil32(return_data.size) + 233] = mem[idx + _1027 + 132]
                                idx = idx + 32
                                continue 
                        revert with 0, 32, 32, mem[_1027 + 132]
                    if stor103 == address(cd[4]):
                        mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                        mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                        mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0xa7a24edd with:
                             gas gas_remaining wei
                            args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _932 = mem[64]
                        mem[mem[64] + 64] = address(cd[4])
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = ('cd', 36).length
                        mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                        mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                        mem[_932 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                        mem[_932 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + _932 + floor32(('cd', 36).length) + 160] = 0
                        emit 0x6af4d451: mem[mem[64] len _932 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                    else:
                        if stor102 == address(cd[4]):
                            mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                            mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                            mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xa7a24edd with:
                                 gas gas_remaining wei
                                args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _944 = mem[64]
                            mem[mem[64] + 64] = address(cd[4])
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = ('cd', 36).length
                            mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                            mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                            mem[_944 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                            mem[_944 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[(32 * ('cd', 68).length) + _944 + floor32(('cd', 36).length) + 160] = 0
                            emit 0x6af4d451: mem[mem[64] len _944 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                        else:
                            if stor106 != address(cd[4]):
                                _913 = mem[64]
                                mem[mem[64] + 64] = address(cd[4])
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = ('cd', 36).length
                                mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                                mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                                mem[_913 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                                mem[_913 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[(32 * ('cd', 68).length) + _913 + floor32(('cd', 36).length) + 160] = 0
                                emit 0x6af4d451: mem[mem[64] len _913 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                            else:
                                mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                                mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                                mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xa7a24edd with:
                                     gas gas_remaining wei
                                    args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _963 = mem[64]
                                mem[mem[64] + 64] = address(cd[4])
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = ('cd', 36).length
                                mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                                mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                                mem[_963 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                                mem[_963 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[(32 * ('cd', 68).length) + _963 + floor32(('cd', 36).length) + 160] = 0
                                emit 0x6af4d451: mem[mem[64] len _963 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                else:
                    if stor105 != msg.sender:
                        revert with 0, 'WFC'
                    if ('cd', 36).length != ('cd', 68).length:
                        revert with 0, 'AP:Lengths'
                    mem[96] = 0x2d79b8eb00000000000000000000000000000000000000000000000000000000
                    mem[100] = 32
                    mem[132] = ('cd', 36).length
                    mem[164 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + 164] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.0x2d79b8eb with:
                            gas gas_remaining wei
                           args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _39 = mem[96 len 4], 0
                    require mem[96 len 4], 0 <= 4294967296
                    require mem[96 len 4], 0 + 32 <= return_data.size
                    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                    _49 = mem[_39 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_39 + 96])] = mem[_39 + 128 len floor32(mem[_39 + 96])]
                    mem[64] = (32 * _49) + ceil32(return_data.size) + 128
                    idx = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        if 0 == cd[((32 * idx) + cd[68] + 36)]:
                            idx = idx + 1
                            continue 
                        require idx < ('cd', 36).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _877 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require mem[(32 * idx) + ceil32(return_data.size) + 128] < collateral.length
                        mem[0] = 108
                        _937 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_937] = 12
                        mem[_937 + 32] = 'sub overflow'
                        if cd[((32 * idx) + cd[68] + 36)] > collateral[_877].field_0:
                            _970 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 12
                            idx = 0
                            while idx < 12:
                                mem[idx + _970 + 68] = mem[idx + _937 + 32]
                                idx = idx + 32
                                continue 
                            mem[_970 + 68] = mem[_970 + 88 len 12]
                            revert with memory
                              from mem[64]
                               len _970 + -mem[64] + 100
                        require _877 < collateral.length
                        mem[0] = 108
                        collateral[_877].field_0 -= cd[((32 * idx) + cd[68] + 36)]
                        emit 0x380f306d: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 32] = address(cd[4])
                        mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
                        emit 0xe664153e: address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                        _1030 = mem[64]
                        mem[mem[64] + 36] = address(cd[4])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _1031 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1031 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1031 + 36 len 28]
                        mem[64] = _1030 + 164
                        mem[_1030 + 100] = 32
                        mem[_1030 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1030 + 270 len 26]
                        if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                            revert with 0, 'Address: call to non-contract'
                        _1065 = mem[_1031]
                        t = _1031 + 32
                        u = _1030 + 164
                        s = mem[_1031]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1030 + floor32(mem[_1031]) + 164] = mem[_1031 + -(mem[_1031] % 32) + floor32(mem[_1031]) + 64 len mem[_1031] % 32] or Mask(8 * -(mem[_1031] % 32) + 32, -(8 * -(mem[_1031] % 32) + 32) + 256, mem[_1030 + floor32(mem[_1031]) + 164])
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[_1030 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1030 + 168 len _1065 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96] != 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1030 + 274 len 22]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1030 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1030 + 168] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1030 + 232] = mem[idx + _1030 + 132]
                                idx = idx + 32
                                continue 
                        else:
                            mem[64] = _1030 + ceil32(return_data.size) + 165
                            mem[_1030 + 164] = return_data.size
                            mem[_1030 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                if return_data.size != 0:
                                    require return_data.size >= 32
                                    if not mem[_1030 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1030 + ceil32(return_data.size) + 275 len 22]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1030 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1030 + ceil32(return_data.size) + 169] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1030 + ceil32(return_data.size) + 233] = mem[idx + _1030 + 132]
                                idx = idx + 32
                                continue 
                        revert with 0, 32, 32, mem[_1030 + 132]
                    if stor103 == address(cd[4]):
                        mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                        mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                        mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0xa7a24edd with:
                             gas gas_remaining wei
                            args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _935 = mem[64]
                        mem[mem[64] + 64] = address(cd[4])
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = ('cd', 36).length
                        mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                        mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                        mem[_935 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                        mem[_935 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + _935 + floor32(('cd', 36).length) + 160] = 0
                        emit 0x6af4d451: mem[mem[64] len _935 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                    else:
                        if stor102 == address(cd[4]):
                            mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                            mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                            mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xa7a24edd with:
                                 gas gas_remaining wei
                                args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _946 = mem[64]
                            mem[mem[64] + 64] = address(cd[4])
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = ('cd', 36).length
                            mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                            mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                            mem[_946 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                            mem[_946 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[(32 * ('cd', 68).length) + _946 + floor32(('cd', 36).length) + 160] = 0
                            emit 0x6af4d451: mem[mem[64] len _946 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                        else:
                            if stor106 != address(cd[4]):
                                _918 = mem[64]
                                mem[mem[64] + 64] = address(cd[4])
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = ('cd', 36).length
                                mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                                mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                                mem[_918 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                                mem[_918 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[(32 * ('cd', 68).length) + _918 + floor32(('cd', 36).length) + 160] = 0
                                emit 0x6af4d451: mem[mem[64] len _918 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
                            else:
                                mem[mem[64] + 100 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                mem[(32 * ('cd', 36).length) + mem[64] + 100] = 0
                                mem[mem[64] + floor32(('cd', 36).length) + 100] = ('cd', 68).length
                                mem[mem[64] + floor32(('cd', 36).length) + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[mem[64] + floor32(('cd', 36).length) + (32 * ('cd', 68).length) + 132] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xa7a24edd with:
                                     gas gas_remaining wei
                                    args Array(len=('cd', 36).length, data=mem[mem[64] + 100 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 36).length) + 96
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _968 = mem[64]
                                mem[mem[64] + 64] = address(cd[4])
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = ('cd', 36).length
                                mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                mem[(32 * ('cd', 36).length) + mem[64] + 128] = 0
                                mem[mem[64] + 32] = floor32(('cd', 36).length) + 128
                                mem[_968 + floor32(('cd', 36).length) + 128] = ('cd', 68).length
                                mem[_968 + floor32(('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[(32 * ('cd', 68).length) + _968 + floor32(('cd', 36).length) + 160] = 0
                                emit 0x6af4d451: mem[mem[64] len _968 + floor32(('cd', 36).length) + floor32(('cd', 68).length) + -mem[64] + 160]
}



}
