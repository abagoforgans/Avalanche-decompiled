contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function destruct() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getAmountsOut(uint256 arg1, address arg2, address arg3, address[] arg4, address[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = 64
    mem[164] = arg4.length
    mem[196 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 196] = 0
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    _28 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _7) + ceil32(return_data.size) + 132] = _28
    mem[(32 * _7) + ceil32(return_data.size) + 164] = 64
    mem[(32 * _7) + ceil32(return_data.size) + 196] = arg5.length
    mem[(32 * _7) + ceil32(return_data.size) + 228 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * _7) + ceil32(return_data.size) + (32 * arg5.length) + 228] = 0
    require ext_code.size(arg3)
    staticcall arg3.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _28, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _7) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _32 = mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 <= 4294967296
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + (32 * _7) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + (32 * mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]
    _35 = mem[_32 + (32 * _7) + ceil32(return_data.size) + 128]
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_32 + (32 * _7) + ceil32(return_data.size) + 128])] = mem[_32 + (32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[_32 + (32 * _7) + ceil32(return_data.size) + 128])]
    mem[(32 * _35) + (32 * _7) + (2 * ceil32(return_data.size)) + 160] = 32
    mem[(32 * _35) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
    mem[(32 * _35) + (32 * _7) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128])] = mem[(32 * _7) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128])]
    return 32, mem[(32 * _35) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len (32 * mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]) + 32], 
}

function sub_ee56774d(?) payable {
    require calldata.size - 4 >= 288
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + (32 * arg8.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) != ('signextend', 15, ('signextend', 15, ('param', 'arg2'))):
        revert with 0, 'i!=j'
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg3
    mem[132] = 64
    mem[164] = arg7.length
    mem[196 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg7.length) + 196] = 0
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg3, Array(len=arg7.length, data=call.data[arg7 + 36 len floor32(arg7.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, arg3) >> 32
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    mem[(32 * _11) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _11) + ceil32(return_data.size) + 132] = arg3
    mem[(32 * _11) + ceil32(return_data.size) + 164] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * _11) + ceil32(return_data.size) + 260] = arg9
    mem[(32 * _11) + ceil32(return_data.size) + 196] = 160
    mem[(32 * _11) + ceil32(return_data.size) + 292] = arg7.length
    mem[(32 * _11) + ceil32(return_data.size) + 324 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * _11) + ceil32(return_data.size) + (32 * arg7.length) + 324] = 0
    require ext_code.size(arg5)
    call arg5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), arg9, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _11) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _36 = mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * _11) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * _11) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * _11) + ceil32(return_data.size) + 128]
    _39 = mem[_36 + (32 * _11) + ceil32(return_data.size) + 128]
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_36 + (32 * _11) + ceil32(return_data.size) + 128])] = mem[_36 + (32 * _11) + ceil32(return_data.size) + 160 len floor32(mem[_36 + (32 * _11) + ceil32(return_data.size) + 128])]
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    _55 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 164] = _55
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 196] = arg4
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 260] = this.address
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 292] = arg9
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 228] = 160
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 324] = arg8.length
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 356 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + (32 * arg8.length) + 356] = 0
    require ext_code.size(arg6)
    call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _55, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)]), address(this.address), arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _39) + (32 * _11) + (4 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    require mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _55) >> 32 <= 4294967296
    require mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _55) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _55) >> 32 + (32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _55) >> 32 + (32 * mem[mem[(32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _55) >> 32 + (32 * _39) + (32 * _11) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
}

function getReserves(address[] arg1, uint256[] arg2, address[] arg3, bytes32[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx != arg2.length - 1:
            require s + cd[((32 * idx) + arg2 + 36)] < arg3.length
            require s + cd[((32 * idx) + arg2 + 36)] - 1 < arg3.length
            if address(cd[((32 * s + cd[((32 * idx) + arg2 + 36)] - 1) + arg3 + 36)]) != address(cd[((32 * s + cd[((32 * idx) + arg2 + 36)]) + arg3 + 36)]):
                revert with 0, 'END_MISMATCH'
        idx = idx + 1
        s = s + cd[((32 * idx) + arg2 + 36)]
        continue 
    if arg4.length != arg1.length:
        revert with 0, 'LEN_MISMATCH_CODE'
    if s != arg3.length:
        revert with 0, 'LEN_MISMATCH'
    require 2 * arg3.length - arg2.length <= test266151307()
    mem[96] = 2 * arg3.length - arg2.length
    mem[64] = (64 * arg3.length - arg2.length) + 128
    if not uint255(arg3.length - arg2.length):
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            if var58005 >= cd[((32 * idx) + arg2 + 36)] - 1:
                require idx < arg2.length
                idx = idx + 1
                s = s + cd[((32 * idx) + arg2 + 36)]
                continue 
            require idx < arg1.length
            require s + var62007 < arg3.length
            require s + var64008 + 1 < arg3.length
            require idx < arg4.length
            if address(var72002) == address(var72001):
                revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if address(var74004) < address(var74003):
                if not address(var74004):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(var74011) == address(var74010):
                    revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if address(var74011) < address(var74010):
                    if not address(var74011):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _2273 = mem[64]
                    mem[mem[64] + 32] = address(var74011)
                    mem[mem[64] + 52] = address(var74010)
                    _2274 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2276 = sha3(mem[_2274 + 32 len mem[_2274]])
                    mem[_2273 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2273 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2273 + 125] = _2276
                    mem[_2273 + 157] = cd[((32 * idx) + arg4 + 36)]
                    mem[_2273 + 72] = 85
                    mem[64] = _2273 + 189
                    require ext_code.size(address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2276, cd[((32 * idx) + arg4 + 36)])))
                    staticcall address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2276, cd[((32 * idx) + arg4 + 36)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2273 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require var74018 < mem[96]
                    if address(var74011) == address(var74004):
                        mem[(32 * var74018) + 128] = ext_call.return_data[18 len 14]
                        require var74018 + 1 < mem[96]
                        mem[(32 * var74018 + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                    else:
                        mem[(32 * var74018) + 128] = ext_call.return_data[50 len 14]
                        require var74018 + 1 < mem[96]
                        mem[(32 * var74018 + 1) + 128] = Mask(112, 0, ext_call.return_data[0])
                    require idx < arg2.length
                    if var74016 + 1 >= cd[((32 * idx) + arg2 + 36)] - 1:
                        require idx < arg2.length
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg2 + 36)]
                        continue 
                    require idx < arg1.length
                    require s + var74016 + 1 < arg3.length
                    require s + var74016 + 2 < arg3.length
                    require idx < arg4.length
                    if address(cd[((32 * s + var74016 + 1) + arg3 + 36)]) == address(cd[((32 * s + var74016 + 2) + arg3 + 36)]):
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[_2273 + 294 len 27]
                else:
                    if not address(var74010):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _2281 = mem[64]
                    mem[mem[64] + 32] = address(var74010)
                    mem[mem[64] + 52] = address(var74011)
                    _2282 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2284 = sha3(mem[_2282 + 32 len mem[_2282]])
                    mem[_2281 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2281 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2281 + 125] = _2284
                    mem[_2281 + 157] = cd[((32 * idx) + arg4 + 36)]
                    mem[_2281 + 72] = 85
                    mem[64] = _2281 + 189
                    require ext_code.size(address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2284, cd[((32 * idx) + arg4 + 36)])))
                    staticcall address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2284, cd[((32 * idx) + arg4 + 36)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2281 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require var74018 < mem[96]
                    if address(var74011) == address(var74004):
                        mem[(32 * var74018) + 128] = ext_call.return_data[18 len 14]
                        require var74018 + 1 < mem[96]
                        mem[(32 * var74018 + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                    else:
                        mem[(32 * var74018) + 128] = ext_call.return_data[50 len 14]
                        require var74018 + 1 < mem[96]
                        mem[(32 * var74018 + 1) + 128] = Mask(112, 0, ext_call.return_data[0])
                    require idx < arg2.length
                    if var74016 + 1 >= cd[((32 * idx) + arg2 + 36)] - 1:
                        require idx < arg2.length
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg2 + 36)]
                        continue 
                    require idx < arg1.length
                    require s + var74016 + 1 < arg3.length
                    require s + var74016 + 2 < arg3.length
                    require idx < arg4.length
                    if address(cd[((32 * s + var74016 + 1) + arg3 + 36)]) == address(cd[((32 * s + var74016 + 2) + arg3 + 36)]):
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[_2281 + 294 len 27]
            else:
                if not address(var74003):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(var74011) == address(var74010):
                    revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if address(var74011) < address(var74010):
                    if not address(var74011):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _2289 = mem[64]
                    mem[mem[64] + 32] = address(var74011)
                    mem[mem[64] + 52] = address(var74010)
                    _2290 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2292 = sha3(mem[_2290 + 32 len mem[_2290]])
                    mem[_2289 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2289 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2289 + 125] = _2292
                    mem[_2289 + 157] = cd[((32 * idx) + arg4 + 36)]
                    mem[_2289 + 72] = 85
                    mem[64] = _2289 + 189
                    require ext_code.size(address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2292, cd[((32 * idx) + arg4 + 36)])))
                    staticcall address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2292, cd[((32 * idx) + arg4 + 36)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2289 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require var74018 < mem[96]
                    if address(var74011) == address(var74003):
                        mem[(32 * var74018) + 128] = ext_call.return_data[18 len 14]
                        require var74018 + 1 < mem[96]
                        mem[(32 * var74018 + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                    else:
                        mem[(32 * var74018) + 128] = ext_call.return_data[50 len 14]
                        require var74018 + 1 < mem[96]
                        mem[(32 * var74018 + 1) + 128] = Mask(112, 0, ext_call.return_data[0])
                    require idx < arg2.length
                    if var74016 + 1 >= cd[((32 * idx) + arg2 + 36)] - 1:
                        require idx < arg2.length
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg2 + 36)]
                        continue 
                    require idx < arg1.length
                    require s + var74016 + 1 < arg3.length
                    require s + var74016 + 2 < arg3.length
                    require idx < arg4.length
                    if address(cd[((32 * s + var74016 + 1) + arg3 + 36)]) == address(cd[((32 * s + var74016 + 2) + arg3 + 36)]):
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[_2289 + 294 len 27]
                else:
                    if not address(var74010):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _2297 = mem[64]
                    mem[mem[64] + 32] = address(var74010)
                    mem[mem[64] + 52] = address(var74011)
                    _2298 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2300 = sha3(mem[_2298 + 32 len mem[_2298]])
                    mem[_2297 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2297 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2297 + 125] = _2300
                    mem[_2297 + 157] = cd[((32 * idx) + arg4 + 36)]
                    mem[_2297 + 72] = 85
                    mem[64] = _2297 + 189
                    require ext_code.size(address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2300, cd[((32 * idx) + arg4 + 36)])))
                    staticcall address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2300, cd[((32 * idx) + arg4 + 36)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2297 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require var74018 < mem[96]
                    if address(var74011) == address(var74003):
                        mem[(32 * var74018) + 128] = ext_call.return_data[18 len 14]
                        require var74018 + 1 < mem[96]
                        mem[(32 * var74018 + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                    else:
                        mem[(32 * var74018) + 128] = ext_call.return_data[50 len 14]
                        require var74018 + 1 < mem[96]
                        mem[(32 * var74018 + 1) + 128] = Mask(112, 0, ext_call.return_data[0])
                    require idx < arg2.length
                    if var74016 + 1 >= cd[((32 * idx) + arg2 + 36)] - 1:
                        require idx < arg2.length
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg2 + 36)]
                        continue 
                    require idx < arg1.length
                    require s + var74016 + 1 < arg3.length
                    require s + var74016 + 2 < arg3.length
                    require idx < arg4.length
                    if address(cd[((32 * s + var74016 + 1) + arg3 + 36)]) == address(cd[((32 * s + var74016 + 2) + arg3 + 36)]):
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[_2297 + 294 len 27]
            ('iszero', ('eq', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('add', 1, ('var', 1), ('var', 74016))), ('param', 'arg3')))), ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('add', 2, ('var', 1), ('var', 74016))), ('param', 'arg3'))))))
            var74003 = address(cd[((32 * s + var74016 + 2) + arg3 + 36)])
            var74004 = address(cd[((32 * s + var74016 + 1) + arg3 + 36)])
            var74010 = address(cd[((32 * s + var74016 + 2) + arg3 + 36)])
            var74011 = address(cd[((32 * s + var74016 + 1) + arg3 + 36)])
            var74016 = var74016 + 1
            var74018 = var74018 + 2
            continue 
    else:
        mem[128 len 64 * arg3.length - arg2.length] = call.data[calldata.size len 64 * arg3.length - arg2.length]
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            if var59005 >= cd[((32 * idx) + arg2 + 36)] - 1:
                require idx < arg2.length
                idx = idx + 1
                s = s + cd[((32 * idx) + arg2 + 36)]
                continue 
            require idx < arg1.length
            require s + var63007 < arg3.length
            require s + var65008 + 1 < arg3.length
            require idx < arg4.length
            if address(var73002) == address(var73001):
                revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if address(var75004) < address(var75003):
                if not address(var75004):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(var75011) == address(var75010):
                    revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if address(var75011) < address(var75010):
                    if not address(var75011):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _2305 = mem[64]
                    mem[mem[64] + 32] = address(var75011)
                    mem[mem[64] + 52] = address(var75010)
                    _2306 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2308 = sha3(mem[_2306 + 32 len mem[_2306]])
                    mem[_2305 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2305 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2305 + 125] = _2308
                    mem[_2305 + 157] = cd[((32 * idx) + arg4 + 36)]
                    mem[_2305 + 72] = 85
                    mem[64] = _2305 + 189
                    require ext_code.size(address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2308, cd[((32 * idx) + arg4 + 36)])))
                    staticcall address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2308, cd[((32 * idx) + arg4 + 36)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2305 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require var75018 < mem[96]
                    if address(var75011) == address(var75004):
                        mem[(32 * var75018) + 128] = ext_call.return_data[18 len 14]
                        require var75018 + 1 < mem[96]
                        mem[(32 * var75018 + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                    else:
                        mem[(32 * var75018) + 128] = ext_call.return_data[50 len 14]
                        require var75018 + 1 < mem[96]
                        mem[(32 * var75018 + 1) + 128] = Mask(112, 0, ext_call.return_data[0])
                    require idx < arg2.length
                    if var75016 + 1 >= cd[((32 * idx) + arg2 + 36)] - 1:
                        require idx < arg2.length
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg2 + 36)]
                        continue 
                    require idx < arg1.length
                    require s + var75016 + 1 < arg3.length
                    require s + var75016 + 2 < arg3.length
                    require idx < arg4.length
                    if address(cd[((32 * s + var75016 + 1) + arg3 + 36)]) == address(cd[((32 * s + var75016 + 2) + arg3 + 36)]):
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[_2305 + 294 len 27]
                else:
                    if not address(var75010):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _2313 = mem[64]
                    mem[mem[64] + 32] = address(var75010)
                    mem[mem[64] + 52] = address(var75011)
                    _2314 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2316 = sha3(mem[_2314 + 32 len mem[_2314]])
                    mem[_2313 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2313 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2313 + 125] = _2316
                    mem[_2313 + 157] = cd[((32 * idx) + arg4 + 36)]
                    mem[_2313 + 72] = 85
                    mem[64] = _2313 + 189
                    require ext_code.size(address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2316, cd[((32 * idx) + arg4 + 36)])))
                    staticcall address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2316, cd[((32 * idx) + arg4 + 36)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2313 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require var75018 < mem[96]
                    if address(var75011) == address(var75004):
                        mem[(32 * var75018) + 128] = ext_call.return_data[18 len 14]
                        require var75018 + 1 < mem[96]
                        mem[(32 * var75018 + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                    else:
                        mem[(32 * var75018) + 128] = ext_call.return_data[50 len 14]
                        require var75018 + 1 < mem[96]
                        mem[(32 * var75018 + 1) + 128] = Mask(112, 0, ext_call.return_data[0])
                    require idx < arg2.length
                    if var75016 + 1 >= cd[((32 * idx) + arg2 + 36)] - 1:
                        require idx < arg2.length
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg2 + 36)]
                        continue 
                    require idx < arg1.length
                    require s + var75016 + 1 < arg3.length
                    require s + var75016 + 2 < arg3.length
                    require idx < arg4.length
                    if address(cd[((32 * s + var75016 + 1) + arg3 + 36)]) == address(cd[((32 * s + var75016 + 2) + arg3 + 36)]):
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[_2313 + 294 len 27]
            else:
                if not address(var75003):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(var75011) == address(var75010):
                    revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if address(var75011) < address(var75010):
                    if not address(var75011):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _2321 = mem[64]
                    mem[mem[64] + 32] = address(var75011)
                    mem[mem[64] + 52] = address(var75010)
                    _2322 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2324 = sha3(mem[_2322 + 32 len mem[_2322]])
                    mem[_2321 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2321 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2321 + 125] = _2324
                    mem[_2321 + 157] = cd[((32 * idx) + arg4 + 36)]
                    mem[_2321 + 72] = 85
                    mem[64] = _2321 + 189
                    require ext_code.size(address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2324, cd[((32 * idx) + arg4 + 36)])))
                    staticcall address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2324, cd[((32 * idx) + arg4 + 36)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2321 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require var75018 < mem[96]
                    if address(var75011) == address(var75003):
                        mem[(32 * var75018) + 128] = ext_call.return_data[18 len 14]
                        require var75018 + 1 < mem[96]
                        mem[(32 * var75018 + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                    else:
                        mem[(32 * var75018) + 128] = ext_call.return_data[50 len 14]
                        require var75018 + 1 < mem[96]
                        mem[(32 * var75018 + 1) + 128] = Mask(112, 0, ext_call.return_data[0])
                    require idx < arg2.length
                    if var75016 + 1 >= cd[((32 * idx) + arg2 + 36)] - 1:
                        require idx < arg2.length
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg2 + 36)]
                        continue 
                    require idx < arg1.length
                    require s + var75016 + 1 < arg3.length
                    require s + var75016 + 2 < arg3.length
                    require idx < arg4.length
                    if address(cd[((32 * s + var75016 + 1) + arg3 + 36)]) == address(cd[((32 * s + var75016 + 2) + arg3 + 36)]):
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[_2321 + 294 len 27]
                else:
                    if not address(var75010):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _2329 = mem[64]
                    mem[mem[64] + 32] = address(var75010)
                    mem[mem[64] + 52] = address(var75011)
                    _2330 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2332 = sha3(mem[_2330 + 32 len mem[_2330]])
                    mem[_2329 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2329 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2329 + 125] = _2332
                    mem[_2329 + 157] = cd[((32 * idx) + arg4 + 36)]
                    mem[_2329 + 72] = 85
                    mem[64] = _2329 + 189
                    require ext_code.size(address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2332, cd[((32 * idx) + arg4 + 36)])))
                    staticcall address(sha3(0, address(cd[((32 * idx) + arg1 + 36)]), _2332, cd[((32 * idx) + arg4 + 36)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2329 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require var75018 < mem[96]
                    if address(var75011) == address(var75003):
                        mem[(32 * var75018) + 128] = ext_call.return_data[18 len 14]
                        require var75018 + 1 < mem[96]
                        mem[(32 * var75018 + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                    else:
                        mem[(32 * var75018) + 128] = ext_call.return_data[50 len 14]
                        require var75018 + 1 < mem[96]
                        mem[(32 * var75018 + 1) + 128] = Mask(112, 0, ext_call.return_data[0])
                    require idx < arg2.length
                    if var75016 + 1 >= cd[((32 * idx) + arg2 + 36)] - 1:
                        require idx < arg2.length
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg2 + 36)]
                        continue 
                    require idx < arg1.length
                    require s + var75016 + 1 < arg3.length
                    require s + var75016 + 2 < arg3.length
                    require idx < arg4.length
                    if address(cd[((32 * s + var75016 + 1) + arg3 + 36)]) == address(cd[((32 * s + var75016 + 2) + arg3 + 36)]):
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[_2329 + 294 len 27]
            ('iszero', ('eq', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('add', 1, ('var', 1), ('var', 75016))), ('param', 'arg3')))), ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('add', 2, ('var', 1), ('var', 75016))), ('param', 'arg3'))))))
            var75003 = address(cd[((32 * s + var75016 + 2) + arg3 + 36)])
            var75004 = address(cd[((32 * s + var75016 + 1) + arg3 + 36)])
            var75010 = address(cd[((32 * s + var75016 + 2) + arg3 + 36)])
            var75011 = address(cd[((32 * s + var75016 + 1) + arg3 + 36)])
            var75016 = var75016 + 1
            var75018 = var75018 + 2
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
