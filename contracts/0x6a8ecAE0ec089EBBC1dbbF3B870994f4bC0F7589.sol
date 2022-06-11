contract main {




// =====================  Runtime code  =====================


#
#  - sub_25f3853b(?)
#  - sub_741f313e(?)
#  - sub_8d78b909(?)
#  - sub_915b5863(?)
#  - sub_b213b901(?)
#  - sub_bb1c7470(?)
#  - _decimals(address arg1)
#
const sub_46a9e8cb(?) = Mask(32, 224, sha3(Mask(200, 56, 'userInfo(uint256,address)') >> 56))

const sub_5a2e2460(?) = Mask(32, 224, sha3(Mask(232, 24, 'pendingSushi(uint256,address)') >> 24))

const sub_a308d059(?) = Mask(32, 224, sha3(Mask(200, 56, 'supportsInterface(bytes4)') >> 56))

const sub_b6b976fa(?) = Mask(32, 224, sha3(Mask(80, 176, 'decimals()') >> 176))

const sub_b9032efd(?) = Mask(32, 224, sha3(Mask(136, 120, 'poolInfo(uint256)') >> 120))


function _fallback() payable {
    revert
}

function sub_b5cdf924(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if arg2 > -33:
        revert with 'NH{q', 17
    if arg1.length >= arg2 + 32:
        mem[ceil32(arg1.length) + 128] = mem[arg2 + 128]
    else:
        mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function toAddress(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if arg2 > -21:
        revert with 'NH{q', 17
    if arg1.length >= arg2 + 20:
        mem[ceil32(arg1.length) + 128] = mem[arg2 + 140 len 20]
    else:
        mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_f00a9744(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == Mask(32, 224, arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    mem[196 len 96] = uint32(arg2), arg3, address(arg4), mem[196 len 28]
    mem[264] = 0
    staticcall address(arg1).mem[196 len 4] with:
            gas gas_remaining wei
           args mem[200 len 64]
    if not return_data.size:
        if not ext_call.success:
            return 0
        return uint32(arg2), arg3, address(arg4) << 64
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        return 0
    if return_data.size < 32:
        if return_data.size >= 64:
            return 0, mem[260 len 4], 0
        else:
            return 0
    if return_data.size < 64:
        mem[ceil32(return_data.size) + 197] = mem[228]
        return mem[ceil32(return_data.size) + 197], 0
    _110 = mem[260 len 4], 0
    mem[ceil32(return_data.size) + 197] = mem[228]
    return mem[ceil32(return_data.size) + 197], _110
}

function sub_b8264ce5(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == Mask(32, 224, arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    mem[196 len 96] = uint32(arg2), arg3, address(arg4), mem[196 len 28]
    mem[264] = 0
    staticcall address(arg1).mem[196 len 4] with:
            gas gas_remaining wei
           args mem[200 len 64]
    if not return_data.size:
        if not ext_call.success:
            return 0, 0, 0, 128, 68, uint32(arg2), arg3, address(arg4), 0 >> 288, 0
        return uint32(arg2), 
               arg3,
               address(arg4) << 64,
               0,
               128,
               68,
               address(arg4), Mask(224, 32, uint32(arg2), Mask(224, 32, arg3) >> 32) >> 32 >> 288,
               0
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        return 0, 0, 0, 128, 68, address(arg4), Mask(224, 32, return_data.size) >> 32 >> 288, 0
    if return_data.size < 32:
        if return_data.size >= 64:
            if return_data.size >= 96:
                return 0, 
                       mem[260 len 4],
                       0,
                       0,
                       mem[296 len 28],
                       128,
                       return_data.size,
                       ext_call.return_data[0 len return_data.size],
                       Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 0) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
            return 0, 
                   mem[260 len 4],
                   0,
                   0,
                   128,
                   return_data.size,
                   ext_call.return_data[0 len return_data.size],
                   Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 0) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
        if return_data.size >= 96:
            return 0, 
                   0,
                   0,
                   mem[296 len 28],
                   128,
                   return_data.size,
                   ext_call.return_data[0 len return_data.size],
                   Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 0) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
        return 0, 
               0,
               0,
               128,
               return_data.size,
               ext_call.return_data[0 len return_data.size],
               Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 0) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
    if return_data.size < 64:
        if return_data.size < 96:
            mem[ceil32(return_data.size) + 197] = mem[228]
            return mem[ceil32(return_data.size) + 197], 
                   0,
                   0,
                   128,
                   return_data.size,
                   ext_call.return_data[0 len return_data.size],
                   mem[return_data.size + 228 len ceil32(return_data.size) - return_data.size]
        _325 = 0, mem[296 len 28]
        mem[ceil32(return_data.size) + 197] = mem[228]
        return mem[ceil32(return_data.size) + 197], 
               0,
               _325,
               128,
               return_data.size,
               ext_call.return_data[0 len return_data.size],
               mem[return_data.size + 228 len ceil32(return_data.size) - return_data.size]
    _282 = mem[260 len 4], 0
    if return_data.size < 96:
        mem[ceil32(return_data.size) + 197] = mem[228]
        return mem[ceil32(return_data.size) + 197], 
               _282,
               0,
               128,
               return_data.size,
               ext_call.return_data[0 len return_data.size],
               mem[return_data.size + 228 len ceil32(return_data.size) - return_data.size]
    _324 = 0, mem[296 len 28]
    mem[ceil32(return_data.size) + 197] = mem[228]
    return mem[ceil32(return_data.size) + 197], 
           _282,
           _324,
           Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
