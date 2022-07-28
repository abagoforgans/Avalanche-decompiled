contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint256 stor151;
address sub_ffe6e7d7Address;
address sub_768450b4Address;
uint256 proposalCount;
array of uint256 sub_3c6fb3b5;
array of uint256 sub_ef835dd9;
mapping of uint256 sub_41623f24;
mapping of uint256 sub_dc94758b;
mapping of uint256 sub_793fbd04;
mapping of uint256 sub_bb9ca3cb;
mapping of uint256 sub_47cb0cef;
mapping of uint256 sub_c37d4372;
mapping of uint256 sub_1bdd5919;
mapping of uint256 sub_1df563a6;
mapping of uint8 stor214;
mapping of uint8 stor215;
mapping of uint8 stor216;
array of uint256 sub_6faa36fe;
mapping of uint256 sub_a1765417;

function sub_0f39b0ca(?) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor214[arg1]))
}

function sub_1bdd5919(?) payable {
    require calldata.size - 4 >= 32
    return sub_1bdd5919[arg1]
}

function sub_1df563a6(?) payable {
    require calldata.size - 4 >= 32
    return sub_1df563a6[arg1]
}

function sub_3c6fb3b5(?) payable {
    return sub_3c6fb3b5[arg1][0 len sub_3c6fb3b5[arg1].length]
}

function sub_41623f24(?) payable {
    require calldata.size - 4 >= 32
    return sub_41623f24[arg1]
}

function sub_47cb0cef(?) payable {
    require calldata.size - 4 >= 32
    return sub_47cb0cef[arg1]
}

function paused() payable {
    return bool(paused)
}

function sub_69dcf98e(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor216[arg1][arg2])
}

function sub_6faa36fe(?) payable {
    return sub_6faa36fe[arg1][0 len sub_6faa36fe[arg1].length]
}

function sub_768450b4(?) payable {
    return sub_768450b4Address
}

function sub_793fbd04(?) payable {
    require calldata.size - 4 >= 32
    return sub_793fbd04[arg1]
}

function owner() payable {
    return owner
}

function sub_a1765417(?) payable {
    require calldata.size - 4 >= 32
    return sub_a1765417[arg1]
}

function sub_bb9ca3cb(?) payable {
    require calldata.size - 4 >= 32
    return sub_bb9ca3cb[arg1]
}

function sub_bea4b343(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor215[arg1])
}

function sub_c37d4372(?) payable {
    require calldata.size - 4 >= 32
    return sub_c37d4372[arg1]
}

function proposalCount() payable {
    return proposalCount
}

function sub_dc94758b(?) payable {
    require calldata.size - 4 >= 32
    return sub_dc94758b[arg1]
}

function sub_ef835dd9(?) payable {
    return sub_ef835dd9[arg1][0 len sub_ef835dd9[arg1].length]
}

function sub_ffe6e7d7(?) payable {
    return sub_ffe6e7d7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pauseAll() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unPauseAll() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_615365b8(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'SCPSNR:1'
    stor215[address(arg1)] = uint8(arg2)
    emit 0x5ae0031c: arg2, arg1
}

function setup(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    sub_ffe6e7d7Address = arg1
    sub_768450b4Address = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_65af1b6b(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 2
    if not arg1:
        revert with 0, 'SVTM:1'
    if arg1 > proposalCount:
        revert with 0, 'SVTM:1'
    if arg2 <= 0:
        revert with 0, 'SVTM:2'
    if arg3 <= arg2:
        revert with 0, 'SVTM:3'
    if arg4 <= arg3:
        revert with 0, 'SVTM:4'
    sub_dc94758b[arg1] = arg2
    sub_793fbd04[arg1] = arg3
    sub_bb9ca3cb[arg1] = arg4
    emit 0xdfd253c4: arg1, arg2, arg3, arg4, msg.sender
    stor151 = 1
}

function sub_74498201(?) payable {
    require calldata.size - 4 >= 320
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + (32 * arg8.length) + 36 <= calldata.size
    mem[128 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + (32 * arg9.length) + 36 <= calldata.size
    mem[(32 * arg8.length) + 128] = arg9.length
    mem[(32 * arg8.length) + 160 len 32 * arg9.length] = call.data[arg9 + 36 len 32 * arg9.length]
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + (32 * arg10.length) + 36 <= calldata.size
    mem[(32 * arg8.length) + (32 * arg9.length) + 160] = arg10.length
    mem[(32 * arg8.length) + (32 * arg9.length) + 192 len 32 * arg10.length] = call.data[arg10 + 36 len 32 * arg10.length]
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 2
    if arg1 != msg.sender:
        revert with 0, 'CPVT:1'
    if arg3 <= 0:
        revert with 0, 'CPVT:3'
    if arg4 < arg5:
        revert with 0, 'CPVT:4'
    mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 192] = 201
    require 0 < arg8.length
    require 0 < arg9.length
    require 0 < arg10.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(160, 96, this.address) >> 96, arg1, arg2, arg3, arg4, arg5, Mask(8, 248, arg6) >> 248, arg7)), mem[159 len 1], mem[(32 * arg8.length) + 160], mem[(32 * arg8.length) + (32 * arg9.length) + 192]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor215[address(signer)]:
        revert with 0, 'CPVT:5'
    if stor216[address(arg1)][arg7]:
        revert with 0, 'CPVT:6'
    stor216[address(arg1)][arg7] = 1
    emit 0xf89fbde9: arg2, arg3, arg4, arg5, arg6, arg1
    stor151 = 1
}

function sub_882e4f28(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 2
    if not arg1:
        revert with 0, 'UPDABDRST:1'
    if arg1 > proposalCount:
        revert with 0, 'UPDABDRST:1'
    if arg2.length <= 0:
        revert with 0, 'UPDABDRST:2'
    sub_6faa36fe[arg1][] = Array(len=arg2.length, data=arg2[all])
    if arg3:
        sub_a1765417[arg1] = 1
        mem[ceil32(arg2.length) + 128] = arg1
        mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x86a7c2f3: 0, Mask(224, 0, arg1), 128, arg3, 1, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, msg.sender
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
            emit 0x86a7c2f3: 0, Mask(224, 0, arg1), 128, arg3, 1, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 288 len floor32(arg2.length) + -ceil32(arg2.length) + 32], msg.sender
    else:
        sub_a1765417[arg1] = 2
        mem[ceil32(arg2.length) + 128] = arg1
        mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x86a7c2f3: 0, Mask(224, 0, arg1), 128, arg3, 2, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, msg.sender
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
            emit 0x86a7c2f3: 0, Mask(224, 0, arg1), 128, arg3, 2, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 288 len floor32(arg2.length) + -ceil32(arg2.length) + 32], msg.sender
    stor151 = 1
}

function sub_99ffd333(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 196] = this.address
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = msg.sender
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if paused:
            revert with 0, 'Pausable: paused'
        if stor151 == 2:
            revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
        stor151 = 2
        if not arg1:
            revert with 0, 'ATHCLM:1'
        if arg1 > proposalCount:
            revert with 0, 'ATHCLM:1'
        if arg2.length != arg3.length:
            revert with 0, 'ATHCLM:2'
        if arg2.length != arg4.length:
            revert with 0, 'ATHCLM:2'
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            _68 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            _72 = mem[(32 * idx) + (32 * arg2.length) + 160]
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            _76 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = _68
            mem[mem[64] + 64] = _72
            mem[mem[64] + 96] = bool(_76)
            emit 0x758d6a3d: arg1, _68, _72, bool(_76), msg.sender
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
        if paused:
            revert with 0, 'Pausable: paused'
        if stor151 == 2:
            revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
        stor151 = 2
        if not arg1:
            revert with 0, 'ATHCLM:1'
        if arg1 > proposalCount:
            revert with 0, 'ATHCLM:1'
        if arg2.length != arg3.length:
            revert with 0, 'ATHCLM:2'
        if arg2.length != arg4.length:
            revert with 0, 'ATHCLM:2'
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            _70 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            _74 = mem[(32 * idx) + (32 * arg2.length) + 160]
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            _79 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = _70
            mem[mem[64] + 64] = _74
            mem[mem[64] + 96] = bool(_79)
            emit 0x758d6a3d: arg1, _70, _74, bool(_79), msg.sender
            idx = idx + 1
            continue 
    stor151 = 1
}

function sub_e788da2e(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 2
    if not arg1:
        revert with 0, 'CPSL:1'
    if arg1 > proposalCount:
        revert with 0, 'CPSL:1'
    if arg2.length <= 0:
        revert with 0, 'CPSL:2'
    if arg3.length <= 0:
        revert with 0, 'CPSL:3'
    sub_3c6fb3b5[arg1][] = Array(len=arg2.length, data=arg2[all])
    sub_ef835dd9[arg1][] = Array(len=arg3.length, data=arg3[all])
    mem[0] = arg1
    mem[32] = 206
    sub_41623f24[arg1] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 128
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg2.length + 160
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 352 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit 0xb23cfe73: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 192], msg.sender
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 352] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 384 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit 0xb23cfe73: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 224], msg.sender
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = floor32(arg2.length) + 192
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit 0xb23cfe73: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 224], msg.sender
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 416 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit 0xb23cfe73: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 256], msg.sender
    stor151 = 1
}

function sub_0ce0ebf4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 2
    if not arg1.length:
        revert with 0, 'CPSL:1'
    if arg2.length <= 0:
        revert with 0, 'CPSL:2'
    if proposalCount + 1 < proposalCount:
        revert with 0, 'SafeMath: addition overflow'
    proposalCount++
    sub_3c6fb3b5[stor203 + 1][] = Array(len=arg1.length, data=arg1[all])
    sub_ef835dd9[stor203 + 1][] = Array(len=arg2.length, data=arg2[all])
    mem[0] = proposalCount + 1
    mem[32] = 206
    sub_41623f24[stor203 + 1] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = proposalCount + 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit 0xb23cfe73: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 192], msg.sender
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit 0xb23cfe73: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 224], msg.sender
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = floor32(arg1.length) + 192
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit 0xb23cfe73: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 224], msg.sender
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 416 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit 0xb23cfe73: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 256], msg.sender
    stor151 = 1
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
        stor151 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                    stor151 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        paused = 0
                        stor151 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                paused = 0
                                stor151 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if uint8(stor0.field_8):
                                    paused = 0
                                    stor151 = 1
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    paused = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        stor151 = 1
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            stor151 = 1
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            stor151 = 1
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
}

function sub_6ed1c108(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 2
    if not arg1:
        revert with 0, 'UPDRST:1'
    if arg1 > proposalCount:
        revert with 0, 'UPDRST:1'
    if arg2 < arg3:
        revert with 0, 'UPDRST:2'
    if block.timestamp <= sub_bb9ca3cb[arg1]:
        revert with 0, 'UPDRST:3'
    sub_47cb0cef[arg1] = arg2
    sub_c37d4372[arg1] = arg3
    sub_1bdd5919[arg1] = arg4
    sub_1df563a6[arg1] = arg5
    require ext_code.size(sub_768450b4Address)
    staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 > arg5:
        if arg5 + arg4 < arg4:
            revert with 0, 'SafeMath: addition overflow'
        if not arg4:
            if arg5 + arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5 + arg4
            if 0 / arg5 + arg4 < ext_call.return_data[0]:
                if not arg3:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg2
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / arg2 < ext_call.return_data[0]:
                        uint256(stor214[arg1]) = 0 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0 / arg2 >= ext_call.return_data[0], 0, msg.sender
                    else:
                        uint8(stor214[arg1]) = 0
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
                else:
                    if 10000 * arg3 / arg3 != 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg2
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10000 * arg3 / arg2 < ext_call.return_data[0]:
                        uint256(stor214[arg1]) = 10000 * arg3 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 10000 * arg3 / arg2 >= ext_call.return_data[0], 0, msg.sender
                    else:
                        uint8(stor214[arg1]) = 0
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
            else:
                if not arg3:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg2
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / arg2 < ext_call.return_data[0]:
                        uint256(stor214[arg1]) = 0 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 1, 0 / arg2 >= ext_call.return_data[0], 0, msg.sender
                    else:
                        uint8(stor214[arg1]) = 1
                        sub_a1765417[arg1] = 1
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 1, 1, 1, msg.sender
                else:
                    if 10000 * arg3 / arg3 != 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg2
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10000 * arg3 / arg2 < ext_call.return_data[0]:
                        uint256(stor214[arg1]) = 10000 * arg3 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 1, 10000 * arg3 / arg2 >= ext_call.return_data[0], 0, msg.sender
                    else:
                        uint8(stor214[arg1]) = 1
                        sub_a1765417[arg1] = 1
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 1, 1, 1, msg.sender
        else:
            if 10000 * arg4 / arg4 != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg5 + arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5 + arg4
            if 10000 * arg4 / arg5 + arg4 < ext_call.return_data[0]:
                if not arg3:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg2
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / arg2 < ext_call.return_data[0]:
                        uint256(stor214[arg1]) = 0 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0 / arg2 >= ext_call.return_data[0], 0, msg.sender
                    else:
                        uint8(stor214[arg1]) = 0
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
                else:
                    if 10000 * arg3 / arg3 != 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg2
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10000 * arg3 / arg2 < ext_call.return_data[0]:
                        uint256(stor214[arg1]) = 10000 * arg3 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 10000 * arg3 / arg2 >= ext_call.return_data[0], 0, msg.sender
                    else:
                        uint8(stor214[arg1]) = 0
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
            else:
                if not arg3:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg2
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / arg2 < ext_call.return_data[0]:
                        uint256(stor214[arg1]) = 0 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 1, 0 / arg2 >= ext_call.return_data[0], 0, msg.sender
                    else:
                        uint8(stor214[arg1]) = 1
                        sub_a1765417[arg1] = 1
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 1, 1, 1, msg.sender
                else:
                    if 10000 * arg3 / arg3 != 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg2
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10000 * arg3 / arg2 < ext_call.return_data[0]:
                        uint256(stor214[arg1]) = 10000 * arg3 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                        sub_a1765417[arg1] = 0
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 1, 10000 * arg3 / arg2 >= ext_call.return_data[0], 0, msg.sender
                    else:
                        uint8(stor214[arg1]) = 1
                        sub_a1765417[arg1] = 1
                        emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 1, 1, 1, msg.sender
    else:
        if arg4 >= arg5:
            if not arg3:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                require ext_code.size(sub_768450b4Address)
                staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / arg2 < ext_call.return_data[0]:
                    uint256(stor214[arg1]) = 0 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                    sub_a1765417[arg1] = 0
                    emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0 / arg2 >= ext_call.return_data[0], 0, msg.sender
                else:
                    uint8(stor214[arg1]) = 0
                    sub_a1765417[arg1] = 0
                    emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
            else:
                if 10000 * arg3 / arg3 != 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                require ext_code.size(sub_768450b4Address)
                staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10000 * arg3 / arg2 < ext_call.return_data[0]:
                    uint256(stor214[arg1]) = 10000 * arg3 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                    sub_a1765417[arg1] = 0
                    emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 10000 * arg3 / arg2 >= ext_call.return_data[0], 0, msg.sender
                else:
                    uint8(stor214[arg1]) = 0
                    sub_a1765417[arg1] = 0
                    emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
        else:
            if arg5 + arg4 < arg4:
                revert with 0, 'SafeMath: addition overflow'
            if not arg5:
                if arg5 + arg4 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg5 + arg4
                if 0 / arg5 + arg4 < ext_call.return_data[0]:
                    if not arg3:
                        if arg2 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require arg2
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / arg2 < ext_call.return_data[0]:
                            uint256(stor214[arg1]) = 0 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0 / arg2 >= ext_call.return_data[0], 0, msg.sender
                        else:
                            uint8(stor214[arg1]) = 0
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
                    else:
                        if 10000 * arg3 / arg3 != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg2 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require arg2
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10000 * arg3 / arg2 < ext_call.return_data[0]:
                            uint256(stor214[arg1]) = 10000 * arg3 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 10000 * arg3 / arg2 >= ext_call.return_data[0], 0, msg.sender
                        else:
                            uint8(stor214[arg1]) = 0
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
                else:
                    if not arg3:
                        if arg2 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require arg2
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / arg2 < ext_call.return_data[0]:
                            uint256(stor214[arg1]) = 0 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 2, 0 / arg2 >= ext_call.return_data[0], 0, msg.sender
                        else:
                            uint8(stor214[arg1]) = 1
                            sub_a1765417[arg1] = 2
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 2, 1, 2, msg.sender
                    else:
                        if 10000 * arg3 / arg3 != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg2 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require arg2
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10000 * arg3 / arg2 < ext_call.return_data[0]:
                            uint256(stor214[arg1]) = 10000 * arg3 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 2, 10000 * arg3 / arg2 >= ext_call.return_data[0], 0, msg.sender
                        else:
                            uint8(stor214[arg1]) = 1
                            sub_a1765417[arg1] = 2
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 2, 1, 2, msg.sender
            else:
                if 10000 * arg5 / arg5 != 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg5 + arg4 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg5 + arg4
                if 10000 * arg5 / arg5 + arg4 < ext_call.return_data[0]:
                    if not arg3:
                        if arg2 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require arg2
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / arg2 < ext_call.return_data[0]:
                            uint256(stor214[arg1]) = 0 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0 / arg2 >= ext_call.return_data[0], 0, msg.sender
                        else:
                            uint8(stor214[arg1]) = 0
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
                    else:
                        if 10000 * arg3 / arg3 != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg2 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require arg2
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10000 * arg3 / arg2 < ext_call.return_data[0]:
                            uint256(stor214[arg1]) = 10000 * arg3 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 10000 * arg3 / arg2 >= ext_call.return_data[0], 0, msg.sender
                        else:
                            uint8(stor214[arg1]) = 0
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 0, 0, 0, msg.sender
                else:
                    if not arg3:
                        if arg2 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require arg2
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / arg2 < ext_call.return_data[0]:
                            uint256(stor214[arg1]) = 0 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 2, 0 / arg2 >= ext_call.return_data[0], 0, msg.sender
                        else:
                            uint8(stor214[arg1]) = 1
                            sub_a1765417[arg1] = 2
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 0 / arg2, ext_call.return_data[0], 2, 1, 2, msg.sender
                    else:
                        if 10000 * arg3 / arg3 != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg2 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require arg2
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10000 * arg3 / arg2 < ext_call.return_data[0]:
                            uint256(stor214[arg1]) = 10000 * arg3 / arg2 >= ext_call.return_data[0] or Mask(248, 8, uint256(stor214[arg1]))
                            sub_a1765417[arg1] = 0
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 2, 10000 * arg3 / arg2 >= ext_call.return_data[0], 0, msg.sender
                        else:
                            uint8(stor214[arg1]) = 1
                            sub_a1765417[arg1] = 2
                            emit 0xd99a4008: arg1, arg2, arg3, arg4, arg5, ext_call.return_data[0], 10000 * arg3 / arg2, ext_call.return_data[0], 2, 1, 2, msg.sender
    stor151 = 1
}



}
