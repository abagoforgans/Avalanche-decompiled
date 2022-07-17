contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function a() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function b() payable {
    require ext_code.size(stor0)
    staticcall stor0.0xbc9f63a1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function d(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x39af9eb00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor0)
    staticcall stor0.tiers(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[96 len 4], Mask(224, 32, arg1) >> 32 >= 160
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 256
    _6 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < return_data.size + 96
    _7 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 257 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 161 < 160:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 257
    mem[ceil32(return_data.size) + 256] = _7
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288 len ceil32(_7)] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + _6 + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[ceil32(return_data.size) + _7 + 288] = 0
    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 256
    require mem[_4 + 128] == mem[_4 + 159 len 1]
    mem[ceil32(return_data.size) + 128] = mem[_4 + 128]
    require mem[_4 + 160] == mem[_4 + 191 len 1]
    mem[ceil32(return_data.size) + 160] = mem[_4 + 160]
    require mem[_4 + 192] == mem[_4 + 192]
    mem[ceil32(return_data.size) + 192] = mem[_4 + 192]
    require mem[_4 + 224] == mem[_4 + 224]
    mem[ceil32(return_data.size) + 224] = mem[_4 + 224]
    mem[mem[64]] = mem[ceil32(return_data.size) + 192]
    return memory
      from mem[64]
       len 32
}

function c(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0x39af9eb00000000000000000000000000000000000000000000000000000000
    mem[260] = arg1
    require ext_code.size(stor0)
    staticcall stor0.tiers(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[256 len 4], Mask(224, 32, arg1) >> 32
    require mem[256 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[256 len 4], Mask(224, 32, arg1) >> 32 >= 160
    if not bool(ceil32(return_data.size) + 416 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 416
    _7 = mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256]
    require mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256] <= test266151307()
    require mem[256 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256] + 287 < return_data.size + 256
    _8 = mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256] + 256]
    if mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256] + 256] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256] + 256])) + 417 > test266151307() or ceil32(ceil32(mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256] + 256])) + 161 < 160:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256] + 256])) + 417
    mem[ceil32(return_data.size) + 416] = mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256] + 256]
    require mem[256 len 4], Mask(224, 32, arg1) >> 32 + _7 + _8 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 448 len ceil32(_8)] = mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + _7 + 288 len ceil32(_8)]
    if ceil32(_8) <= _8:
        mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + 416
        require mem[_5 + 288] == mem[_5 + 319 len 1]
        mem[ceil32(return_data.size) + 288] = mem[_5 + 288]
        require mem[_5 + 320] == mem[_5 + 351 len 1]
        mem[ceil32(return_data.size) + 320] = mem[_5 + 320]
        require mem[_5 + 352] == mem[_5 + 352]
        mem[ceil32(return_data.size) + 352] = mem[_5 + 352]
        require mem[_5 + 384] == mem[_5 + 384]
        mem[ceil32(return_data.size) + 384] = mem[_5 + 384]
        _56 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 160
        _60 = mem[ceil32(return_data.size) + 416]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 416]
        mem[mem[64] + 224 len ceil32(_60)] = mem[ceil32(return_data.size) + 448 len ceil32(_60)]
        if ceil32(_60) <= _60:
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 319 len 1]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 351 len 1]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 384]
            return 32, 160, mem[mem[64] + 64 len ceil32(_60) + 160]
        mem[mem[64] + _60 + 224] = 0
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 319 len 1]
        mem[_56 + 96] = mem[ceil32(return_data.size) + 351 len 1]
        mem[_56 + 128] = mem[ceil32(return_data.size) + 352]
        mem[_56 + 160] = mem[ceil32(return_data.size) + 384]
        return memory
          from mem[64]
           len _56 + ceil32(_60) + -mem[64] + 224
    mem[ceil32(return_data.size) + _8 + 448] = 0
    mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + 416
    require mem[_5 + 288] == mem[_5 + 319 len 1]
    mem[ceil32(return_data.size) + 288] = mem[_5 + 288]
    require mem[_5 + 320] == mem[_5 + 351 len 1]
    mem[ceil32(return_data.size) + 320] = mem[_5 + 320]
    require mem[_5 + 352] == mem[_5 + 352]
    mem[ceil32(return_data.size) + 352] = mem[_5 + 352]
    require mem[_5 + 384] == mem[_5 + 384]
    mem[ceil32(return_data.size) + 384] = mem[_5 + 384]
    _57 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 160
    _61 = mem[ceil32(return_data.size) + 416]
    mem[mem[64] + 192] = mem[ceil32(return_data.size) + 416]
    mem[mem[64] + 224 len ceil32(_61)] = mem[ceil32(return_data.size) + 448 len ceil32(_61)]
    if ceil32(_61) <= _61:
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 319 len 1]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 351 len 1]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 384]
        return 32, 160, mem[mem[64] + 64 len ceil32(_61) + 160]
    mem[mem[64] + _61 + 224] = 0
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 319 len 1]
    mem[_57 + 96] = mem[ceil32(return_data.size) + 351 len 1]
    mem[_57 + 128] = mem[ceil32(return_data.size) + 352]
    mem[_57 + 160] = mem[ceil32(return_data.size) + 384]
    return memory
      from mem[64]
       len _57 + ceil32(_61) + -mem[64] + 224
}



}
