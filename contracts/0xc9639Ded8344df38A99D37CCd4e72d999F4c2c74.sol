contract main {




// =====================  Runtime code  =====================


const MAX = -1


uint8 stor0;
address stor0; offset 8
address MEMOAddress;
address TIMEAddress;
address MIMAddress;
address WAVAXAddress;
address WMEMOAddress;
address sub_4a87cd67Address;
address ROUTERAddress;
uint256 sub_fc16a455;

function WMEMO() {
    return WMEMOAddress
}

function enabled() {
    return bool(uint8(stor0.field_0))
}

function ROUTER() {
    return ROUTERAddress
}

function sub_4a87cd67(?) {
    return sub_4a87cd67Address
}

function WAVAX() {
    return WAVAXAddress
}

function TIME() {
    return TIMEAddress
}

function MEMO() {
    return MEMOAddress
}

function MIM() {
    return MIMAddress
}

function sub_fc16a455(?) {
    return sub_fc16a455
}

function _fallback() payable {
    revert
}

function sub_2d24c0d5(?) {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'only owner'
    sub_fc16a455 = arg1
}

function enable(bool arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'only owner'
    uint8(stor0.field_0) = uint8(arg1)
}

function changeRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    ROUTERAddress = arg1
    require ext_code.size(MIMAddress)
    call MIMAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(TIMEAddress)
    call TIMEAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_4a87cd67Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b28705a7(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(TIMEAddress)
    staticcall TIMEAddress.0xd44545e7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(MEMOAddress)
    staticcall MEMOAddress.0x2986c0e5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = TIMEAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _64 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _67 = mem[_64 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_64 + 192])] = mem[_64 + 224 len floor32(mem[_64 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _109 = mem[ceil32(return_data.size) + 256]
    if not mem[ceil32(return_data.size) + 256]:
        mem[(32 * _67) + ceil32(return_data.size) + 224] = 26
        mem[(32 * _67) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
        require 1 < mem[ceil32(return_data.size) + 192]
        if 0 > mem[ceil32(return_data.size) + 256]:
            revert with 0, 'SafeMath: subtraction overflow'
        return mem[ceil32(return_data.size) + 256], ext_call.return_data[0]
    if ext_call.return_data[0] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != ext_call.return_data[0]:
        revert with 0, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _67) + ceil32(return_data.size) + 325 len 31]
    mem[(32 * _67) + ceil32(return_data.size) + 224] = 26
    mem[(32 * _67) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
    require 1 < mem[ceil32(return_data.size) + 192]
    if ext_call.return_data[0] * _109 / 10^6 > mem[ceil32(return_data.size) + 256]:
        revert with 0, 'SafeMath: subtraction overflow'
    return mem[ceil32(return_data.size) + 256] - (ext_call.return_data[0] * _109 / 10^6), ext_call.return_data[0]
}

function sub_d84a3026(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(TIMEAddress)
    staticcall TIMEAddress.0xd44545e7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(MEMOAddress)
    staticcall MEMOAddress.0x2986c0e5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = TIMEAddress
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = arg1
    mem[260] = 64
    mem[292] = 3
    mem[324 len 0] = None
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _65 = mem[224 len 4], Mask(224, 32, arg1) >> 32
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    _68 = mem[_65 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_65 + 224])] = mem[_65 + 256 len floor32(mem[_65 + 224])]
    require 2 < mem[ceil32(return_data.size) + 224]
    _110 = mem[ceil32(return_data.size) + 320]
    if not mem[ceil32(return_data.size) + 320]:
        mem[(32 * _68) + ceil32(return_data.size) + 256] = 26
        mem[(32 * _68) + ceil32(return_data.size) + 288] = 'SafeMath: division by zero'
        require 2 < mem[ceil32(return_data.size) + 224]
        if 0 > mem[ceil32(return_data.size) + 320]:
            revert with 0, 'SafeMath: subtraction overflow'
        return mem[ceil32(return_data.size) + 320], ext_call.return_data[0]
    if ext_call.return_data[0] * mem[ceil32(return_data.size) + 320] / mem[ceil32(return_data.size) + 320] != ext_call.return_data[0]:
        revert with 0, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _68) + ceil32(return_data.size) + 357 len 31]
    mem[(32 * _68) + ceil32(return_data.size) + 256] = 26
    mem[(32 * _68) + ceil32(return_data.size) + 288] = 'SafeMath: division by zero'
    require 2 < mem[ceil32(return_data.size) + 224]
    if ext_call.return_data[0] * _110 / 10^6 > mem[ceil32(return_data.size) + 320]:
        revert with 0, 'SafeMath: subtraction overflow'
    return mem[ceil32(return_data.size) + 320] - (ext_call.return_data[0] * _110 / 10^6), ext_call.return_data[0]
}

function exchangeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(TIMEAddress)
    staticcall TIMEAddress.0xd44545e7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(MEMOAddress)
    staticcall MEMOAddress.0x2986c0e5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = MIMAddress
    mem[160] = TIMEAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _182 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _185 = mem[_182 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_182 + 192])] = mem[_182 + 224 len floor32(mem[_182 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _345 = mem[ceil32(return_data.size) + 256]
    if not mem[ceil32(return_data.size) + 256]:
        mem[(32 * _185) + ceil32(return_data.size) + 224] = 26
        mem[(32 * _185) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
        require 1 < mem[ceil32(return_data.size) + 192]
        if 0 > mem[ceil32(return_data.size) + 256]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(TIMEAddress)
        staticcall TIMEAddress.0xd44545e7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(MEMOAddress)
        staticcall MEMOAddress.0x2986c0e5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _185) + ceil32(return_data.size) + 448] = TIMEAddress
        mem[(32 * _185) + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _185) + ceil32(return_data.size) + 484] = arg1
        mem[(32 * _185) + ceil32(return_data.size) + 516] = 64
        mem[(32 * _185) + ceil32(return_data.size) + 548] = 3
        mem[(32 * _185) + ceil32(return_data.size) + 580 len 0] = None
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=3, data=mem[(32 * _185) + ceil32(return_data.size) + 580 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _185) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _185) + (2 * ceil32(return_data.size)) + 480
        require return_data.size >= 32
        _516 = mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[(32 * _185) + ceil32(return_data.size) + mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480] <= 4294967296 and mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * _185) + ceil32(return_data.size) + mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480]) + 32 <= return_data.size
        mem[(32 * _185) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _185) + ceil32(return_data.size) + mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480]
        _521 = mem[(32 * _185) + ceil32(return_data.size) + _516 + 480]
        mem[(32 * _185) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _185) + ceil32(return_data.size) + _516 + 480])] = mem[(32 * _185) + ceil32(return_data.size) + _516 + 512 len floor32(mem[(32 * _185) + ceil32(return_data.size) + _516 + 480])]
        require 2 < mem[(32 * _185) + (2 * ceil32(return_data.size)) + 480]
        _605 = mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576]
        if not mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576]:
            mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 512] = 26
            mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
            require 2 < mem[(32 * _185) + (2 * ceil32(return_data.size)) + 480]
            _617 = mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576]
            mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 576] = 30
            mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 608] = 'SafeMath: subtraction overflow'
            if 0 > _617:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + 256]
            mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
            mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 704] = _617
            mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
            return mem[ceil32(return_data.size) + 256], ext_call.return_data[0], _617, ext_call.return_data[0]
        if ext_call.return_data[0] * mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 613 len 31]
        mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 512] = 26
        mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
        require 2 < mem[(32 * _185) + (2 * ceil32(return_data.size)) + 480]
        _623 = mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576]
        mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 576] = 30
        mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 608] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] * _605 / 10^6 > _623:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + 256]
        mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
        mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 704] = _623 - (ext_call.return_data[0] * _605 / 10^6)
        mem[(32 * _521) + (32 * _185) + (2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
        return mem[ceil32(return_data.size) + 256], 
               ext_call.return_data[0],
               _623 - (ext_call.return_data[0] * _605 / 10^6),
               ext_call.return_data[0]
    if ext_call.return_data[0] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != ext_call.return_data[0]:
        revert with 0, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _185) + ceil32(return_data.size) + 325 len 31]
    mem[(32 * _185) + ceil32(return_data.size) + 224] = 26
    mem[(32 * _185) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
    require 1 < mem[ceil32(return_data.size) + 192]
    if ext_call.return_data[0] * _345 / 10^6 > mem[ceil32(return_data.size) + 256]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(TIMEAddress)
    staticcall TIMEAddress.0xd44545e7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(MEMOAddress)
    staticcall MEMOAddress.0x2986c0e5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _185) + ceil32(return_data.size) + 448] = TIMEAddress
    mem[(32 * _185) + ceil32(return_data.size) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _185) + ceil32(return_data.size) + 484] = arg1
    mem[(32 * _185) + ceil32(return_data.size) + 516] = 64
    mem[(32 * _185) + ceil32(return_data.size) + 548] = 3
    mem[(32 * _185) + ceil32(return_data.size) + 580 len 0] = None
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[(32 * _185) + ceil32(return_data.size) + 580 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _185) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _185) + (2 * ceil32(return_data.size)) + 480
    require return_data.size >= 32
    _514 = mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[(32 * _185) + ceil32(return_data.size) + mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480] <= 4294967296 and mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * _185) + ceil32(return_data.size) + mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480]) + 32 <= return_data.size
    mem[(32 * _185) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _185) + ceil32(return_data.size) + mem[(32 * _185) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480]
    _520 = mem[(32 * _185) + ceil32(return_data.size) + _514 + 480]
    mem[(32 * _185) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _185) + ceil32(return_data.size) + _514 + 480])] = mem[(32 * _185) + ceil32(return_data.size) + _514 + 512 len floor32(mem[(32 * _185) + ceil32(return_data.size) + _514 + 480])]
    require 2 < mem[(32 * _185) + (2 * ceil32(return_data.size)) + 480]
    _604 = mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576]
    if not mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576]:
        mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 512] = 26
        mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
        require 2 < mem[(32 * _185) + (2 * ceil32(return_data.size)) + 480]
        _616 = mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576]
        mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 576] = 30
        mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 608] = 'SafeMath: subtraction overflow'
        if 0 > _616:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + 256] - (ext_call.return_data[0] * _345 / 10^6)
        mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
        mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 704] = _616
        mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
        return mem[ceil32(return_data.size) + 256] - (ext_call.return_data[0] * _345 / 10^6), 
               ext_call.return_data[0],
               _616,
               ext_call.return_data[0]
    if ext_call.return_data[0] * mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
        revert with 0, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 613 len 31]
    mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 512] = 26
    mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
    require 2 < mem[(32 * _185) + (2 * ceil32(return_data.size)) + 480]
    _622 = mem[(32 * _185) + (2 * ceil32(return_data.size)) + 576]
    mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 576] = 30
    mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 608] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] * _604 / 10^6 > _622:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + 256] - (ext_call.return_data[0] * _345 / 10^6)
    mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
    mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 704] = _622 - (ext_call.return_data[0] * _604 / 10^6)
    mem[(32 * _520) + (32 * _185) + (2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
    return mem[ceil32(return_data.size) + 256] - (ext_call.return_data[0] * _345 / 10^6), 
           ext_call.return_data[0],
           _622 - (ext_call.return_data[0] * _604 / 10^6),
           ext_call.return_data[0]
}

function sub_de1bf677(?) {
    require calldata.size - 4 >= 128
    if not uint8(stor0.field_0):
        revert with 0, 'ZAP disabled now'
    if not arg4:
        if MIMAddress == arg1:
            require ext_code.size(MIMAddress)
            call MIMAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg3), this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 2
            mem[128] = MIMAddress
            mem[160] = TIMEAddress
            require ext_code.size(TIMEAddress)
            staticcall TIMEAddress.0xd44545e7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_fc16a455:
                mem[192] = 30
                mem[224] = 'SafeMath: subtraction overflow'
                mem[256] = 30
                mem[288] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 10^6:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[320] = 26
                mem[352] = 'SafeMath: division by zero'
                if arg2:
                    if -ext_call.return_data[0] + 10^6 / 10000 * arg2 / arg2 != -ext_call.return_data[0] + 10^6 / 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                    mem[416] = 'SafeMath: division by zero'
                    mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[452] = -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100
                    mem[484] = 64
                    mem[516] = 2
                    mem[548 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100, Array(len=2, data=mem[548 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 448
                    require return_data.size >= 32
                    _1496 = mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                    require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                    require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                    require mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]
                    _1538 = mem[_1496 + 448]
                    mem[ceil32(return_data.size) + 480 len floor32(mem[_1496 + 448])] = mem[_1496 + 480 len floor32(mem[_1496 + 448])]
                    require 1 < mem[ceil32(return_data.size) + 448]
                    _2562 = mem[ceil32(return_data.size) + 512]
                    if block.timestamp + 60 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _1538) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1538) + ceil32(return_data.size) + 484] = arg2
                    mem[(32 * _1538) + ceil32(return_data.size) + 516] = _2562
                    mem[(32 * _1538) + ceil32(return_data.size) + 580] = arg3
                    mem[(32 * _1538) + ceil32(return_data.size) + 612] = block.timestamp + 60
                    mem[(32 * _1538) + ceil32(return_data.size) + 548] = 160
                    mem[(32 * _1538) + ceil32(return_data.size) + 644] = 2
                    mem[(32 * _1538) + ceil32(return_data.size) + 676 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2562, Array(len=2, data=mem[(32 * _1538) + ceil32(return_data.size) + 676 len 64]), address(arg3), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1538) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1538) + (2 * ceil32(return_data.size)) + 480
                    require return_data.size >= 32
                    _3560 = mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1538) + ceil32(return_data.size) + mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1538) + ceil32(return_data.size) + mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                    mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1538) + ceil32(return_data.size) + mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                    _3602 = mem[(32 * _1538) + ceil32(return_data.size) + _3560 + 480]
                    mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1538) + ceil32(return_data.size) + _3560 + 480])] = mem[(32 * _1538) + ceil32(return_data.size) + _3560 + 512 len floor32(mem[(32 * _1538) + ceil32(return_data.size) + _3560 + 480])]
                    require 1 < mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 480]
                    _4386 = mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544]
                    if not mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544]:
                        mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 512] = 26
                        mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                        require 1 < mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 480]
                        if 0 > mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
                    if ext_call.return_data[0] * mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _4386 / 10^6 > mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4386 / 10^6), TIMEAddress
                mem[384] = 26
                mem[416] = 'SafeMath: division by zero'
                mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[452] = 0
                mem[484] = 64
                mem[516] = 2
                mem[548 len 0] = None
                require ext_code.size(ROUTERAddress)
                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, 2, mem[548 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 448
                require return_data.size >= 32
                _1498 = mem[448 len 4], 0
                require mem[448 len 4], 0 <= 4294967296
                require mem[448 len 4], 0 + 32 <= return_data.size
                require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                _1539 = mem[_1498 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1498 + 448])] = mem[_1498 + 480 len floor32(mem[_1498 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _2563 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1539) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1539) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1539) + ceil32(return_data.size) + 516] = _2563
                mem[(32 * _1539) + ceil32(return_data.size) + 580] = arg3
                mem[(32 * _1539) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1539) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1539) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1539) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _2563, Array(len=2, data=mem[(32 * _1539) + ceil32(return_data.size) + 676 len 64]), address(arg3), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1539) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1539) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _3562 = mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1539) + ceil32(return_data.size) + mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1539) + ceil32(return_data.size) + mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1539) + ceil32(return_data.size) + mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _3603 = mem[(32 * _1539) + ceil32(return_data.size) + _3562 + 480]
                mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1539) + ceil32(return_data.size) + _3562 + 480])] = mem[(32 * _1539) + ceil32(return_data.size) + _3562 + 512 len floor32(mem[(32 * _1539) + ceil32(return_data.size) + _3562 + 480])]
                require 1 < mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 480]
                _4387 = mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
                if ext_call.return_data[0] * mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 613 len 31]
                mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 512] = 26
                mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 480]
                if ext_call.return_data[0] * _4387 / 10^6 > mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4387 / 10^6), TIMEAddress
            if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            mem[192] = 30
            mem[224] = 'SafeMath: subtraction overflow'
            if 10000 * sub_fc16a455 > 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[256] = 30
            mem[288] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[320] = 26
            mem[352] = 'SafeMath: division by zero'
            if arg2:
                if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / arg2 != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                mem[416] = 'SafeMath: division by zero'
                mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[452] = (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100
                mem[484] = 64
                mem[516] = 2
                mem[548 len 0] = None
                require ext_code.size(ROUTERAddress)
                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100, Array(len=2, data=mem[548 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 448
                require return_data.size >= 32
                _1492 = mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                require mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]
                _1536 = mem[_1492 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1492 + 448])] = mem[_1492 + 480 len floor32(mem[_1492 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _2560 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1536) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1536) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1536) + ceil32(return_data.size) + 516] = _2560
                mem[(32 * _1536) + ceil32(return_data.size) + 580] = arg3
                mem[(32 * _1536) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1536) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1536) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1536) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _2560, Array(len=2, data=mem[(32 * _1536) + ceil32(return_data.size) + 676 len 64]), address(arg3), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1536) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1536) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _3556 = mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1536) + ceil32(return_data.size) + mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1536) + ceil32(return_data.size) + mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1536) + ceil32(return_data.size) + mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _3600 = mem[(32 * _1536) + ceil32(return_data.size) + _3556 + 480]
                mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1536) + ceil32(return_data.size) + _3556 + 480])] = mem[(32 * _1536) + ceil32(return_data.size) + _3556 + 512 len floor32(mem[(32 * _1536) + ceil32(return_data.size) + _3556 + 480])]
                require 1 < mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 480]
                _4384 = mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
                if ext_call.return_data[0] * mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 613 len 31]
                mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 512] = 26
                mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 480]
                if ext_call.return_data[0] * _4384 / 10^6 > mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4384 / 10^6), TIMEAddress
            mem[384] = 26
            mem[416] = 'SafeMath: division by zero'
            mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[452] = 0
            mem[484] = 64
            mem[516] = 2
            mem[548 len 0] = None
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, 2, mem[548 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 448
            require return_data.size >= 32
            _1494 = mem[448 len 4], 0
            require mem[448 len 4], 0 <= 4294967296
            require mem[448 len 4], 0 + 32 <= return_data.size
            require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
            _1537 = mem[_1494 + 448]
            mem[ceil32(return_data.size) + 480 len floor32(mem[_1494 + 448])] = mem[_1494 + 480 len floor32(mem[_1494 + 448])]
            require 1 < mem[ceil32(return_data.size) + 448]
            _2561 = mem[ceil32(return_data.size) + 512]
            if block.timestamp + 60 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _1537) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1537) + ceil32(return_data.size) + 484] = arg2
            mem[(32 * _1537) + ceil32(return_data.size) + 516] = _2561
            mem[(32 * _1537) + ceil32(return_data.size) + 580] = arg3
            mem[(32 * _1537) + ceil32(return_data.size) + 612] = block.timestamp + 60
            mem[(32 * _1537) + ceil32(return_data.size) + 548] = 160
            mem[(32 * _1537) + ceil32(return_data.size) + 644] = 2
            mem[(32 * _1537) + ceil32(return_data.size) + 676 len 0] = None
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _2561, Array(len=2, data=mem[(32 * _1537) + ceil32(return_data.size) + 676 len 64]), address(arg3), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1537) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1537) + (2 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _3558 = mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _1537) + ceil32(return_data.size) + mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1537) + ceil32(return_data.size) + mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
            mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1537) + ceil32(return_data.size) + mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
            _3601 = mem[(32 * _1537) + ceil32(return_data.size) + _3558 + 480]
            mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1537) + ceil32(return_data.size) + _3558 + 480])] = mem[(32 * _1537) + ceil32(return_data.size) + _3558 + 512 len floor32(mem[(32 * _1537) + ceil32(return_data.size) + _3558 + 480])]
            require 1 < mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 480]
            _4385 = mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544]
            if not mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544]:
                mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 512] = 26
                mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 480]
                if 0 > mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
            if ext_call.return_data[0] * mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 613 len 31]
            mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 512] = 26
            mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 480]
            if ext_call.return_data[0] * _4385 / 10^6 > mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4385 / 10^6), TIMEAddress
        if WAVAXAddress != arg1:
            return 0, TIMEAddress
        require ext_code.size(WAVAXAddress)
        call WAVAXAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg3), this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 3
        mem[128] = WAVAXAddress
        mem[160] = MIMAddress
        mem[192] = TIMEAddress
        require ext_code.size(TIMEAddress)
        staticcall TIMEAddress.0xd44545e7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_fc16a455:
            if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 10000 * sub_fc16a455 > 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                mem[448] = 'SafeMath: division by zero'
                mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[484] = 0
                mem[516] = 64
                mem[548] = 3
                mem[580 len 0] = None
                require ext_code.size(ROUTERAddress)
                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, 3, mem[580 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 480
                require return_data.size >= 32
                _1486 = mem[480 len 4], 0
                require mem[480 len 4], 0 <= 4294967296
                require mem[480 len 4], 0 + 32 <= return_data.size
                require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                _1533 = mem[_1486 + 480]
                mem[ceil32(return_data.size) + 512 len floor32(mem[_1486 + 480])] = mem[_1486 + 512 len floor32(mem[_1486 + 480])]
                require 2 < mem[ceil32(return_data.size) + 480]
                _2557 = mem[ceil32(return_data.size) + 576]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1533) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1533) + ceil32(return_data.size) + 516] = arg2
                mem[(32 * _1533) + ceil32(return_data.size) + 548] = _2557
                mem[(32 * _1533) + ceil32(return_data.size) + 612] = arg3
                mem[(32 * _1533) + ceil32(return_data.size) + 644] = block.timestamp + 60
                mem[(32 * _1533) + ceil32(return_data.size) + 580] = 160
                mem[(32 * _1533) + ceil32(return_data.size) + 676] = 3
                mem[(32 * _1533) + ceil32(return_data.size) + 708 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _2557, Array(len=3, data=mem[(32 * _1533) + ceil32(return_data.size) + 708 len 96]), address(arg3), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1533) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1533) + (2 * ceil32(return_data.size)) + 512
                require return_data.size >= 32
                _3550 = mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1533) + ceil32(return_data.size) + mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512] <= 4294967296 and mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1533) + ceil32(return_data.size) + mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]) + 32 <= return_data.size
                mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1533) + ceil32(return_data.size) + mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]
                _3597 = mem[(32 * _1533) + ceil32(return_data.size) + _3550 + 512]
                mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1533) + ceil32(return_data.size) + _3550 + 512])] = mem[(32 * _1533) + ceil32(return_data.size) + _3550 + 544 len floor32(mem[(32 * _1533) + ceil32(return_data.size) + _3550 + 512])]
                require 1 < mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 512]
                _4381 = mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576]
                if not mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576]:
                    mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 544] = 26
                    mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 512]
                    if 0 > mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576], TIMEAddress
                if ext_call.return_data[0] * mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 645 len 31]
                mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 544] = 26
                mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 512]
                if ext_call.return_data[0] * _4381 / 10^6 > mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4381 / 10^6), TIMEAddress
            if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / arg2 != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            mem[448] = 'SafeMath: division by zero'
            mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[484] = (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100
            mem[516] = 64
            mem[548] = 3
            mem[580 len 0] = None
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100, Array(len=3, data=mem[580 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 480
            require return_data.size >= 32
            _1484 = mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
            require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
            require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
            require mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]
            _1532 = mem[_1484 + 480]
            mem[ceil32(return_data.size) + 512 len floor32(mem[_1484 + 480])] = mem[_1484 + 512 len floor32(mem[_1484 + 480])]
            require 2 < mem[ceil32(return_data.size) + 480]
            _2556 = mem[ceil32(return_data.size) + 576]
            if block.timestamp + 60 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _1532) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1532) + ceil32(return_data.size) + 516] = arg2
            mem[(32 * _1532) + ceil32(return_data.size) + 548] = _2556
            mem[(32 * _1532) + ceil32(return_data.size) + 612] = arg3
            mem[(32 * _1532) + ceil32(return_data.size) + 644] = block.timestamp + 60
            mem[(32 * _1532) + ceil32(return_data.size) + 580] = 160
            mem[(32 * _1532) + ceil32(return_data.size) + 676] = 3
            mem[(32 * _1532) + ceil32(return_data.size) + 708 len 0] = None
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _2556, Array(len=3, data=mem[(32 * _1532) + ceil32(return_data.size) + 708 len 96]), address(arg3), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1532) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1532) + (2 * ceil32(return_data.size)) + 512
            require return_data.size >= 32
            _3548 = mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _1532) + ceil32(return_data.size) + mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512] <= 4294967296 and mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1532) + ceil32(return_data.size) + mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]) + 32 <= return_data.size
            mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1532) + ceil32(return_data.size) + mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]
            _3596 = mem[(32 * _1532) + ceil32(return_data.size) + _3548 + 512]
            mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1532) + ceil32(return_data.size) + _3548 + 512])] = mem[(32 * _1532) + ceil32(return_data.size) + _3548 + 544 len floor32(mem[(32 * _1532) + ceil32(return_data.size) + _3548 + 512])]
            require 1 < mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 512]
            _4380 = mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576]
            if not mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576]:
                mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 544] = 26
                mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 512]
                if 0 > mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576], TIMEAddress
            if ext_call.return_data[0] * mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 645 len 31]
            mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 544] = 26
            mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 512]
            if ext_call.return_data[0] * _4380 / 10^6 > mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4380 / 10^6), TIMEAddress
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > 10^6:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[352] = 26
        mem[384] = 'SafeMath: division by zero'
        if not arg2:
            mem[448] = 'SafeMath: division by zero'
            mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[484] = 0
            mem[516] = 64
            mem[548] = 3
            mem[580 len 0] = None
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, 3, mem[580 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 480
            require return_data.size >= 32
            _1490 = mem[480 len 4], 0
            require mem[480 len 4], 0 <= 4294967296
            require mem[480 len 4], 0 + 32 <= return_data.size
            require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
            _1535 = mem[_1490 + 480]
            mem[ceil32(return_data.size) + 512 len floor32(mem[_1490 + 480])] = mem[_1490 + 512 len floor32(mem[_1490 + 480])]
            require 2 < mem[ceil32(return_data.size) + 480]
            _2559 = mem[ceil32(return_data.size) + 576]
            if block.timestamp + 60 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _1535) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1535) + ceil32(return_data.size) + 516] = arg2
            mem[(32 * _1535) + ceil32(return_data.size) + 548] = _2559
            mem[(32 * _1535) + ceil32(return_data.size) + 612] = arg3
            mem[(32 * _1535) + ceil32(return_data.size) + 644] = block.timestamp + 60
            mem[(32 * _1535) + ceil32(return_data.size) + 580] = 160
            mem[(32 * _1535) + ceil32(return_data.size) + 676] = 3
            mem[(32 * _1535) + ceil32(return_data.size) + 708 len 0] = None
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _2559, Array(len=3, data=mem[(32 * _1535) + ceil32(return_data.size) + 708 len 96]), address(arg3), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1535) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1535) + (2 * ceil32(return_data.size)) + 512
            require return_data.size >= 32
            _3554 = mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _1535) + ceil32(return_data.size) + mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512] <= 4294967296 and mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1535) + ceil32(return_data.size) + mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]) + 32 <= return_data.size
            mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1535) + ceil32(return_data.size) + mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]
            _3599 = mem[(32 * _1535) + ceil32(return_data.size) + _3554 + 512]
            mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1535) + ceil32(return_data.size) + _3554 + 512])] = mem[(32 * _1535) + ceil32(return_data.size) + _3554 + 544 len floor32(mem[(32 * _1535) + ceil32(return_data.size) + _3554 + 512])]
            require 1 < mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 512]
            _4383 = mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576]
            if not mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576]:
                mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 544] = 26
                mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 512]
                if 0 > mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576], TIMEAddress
            if ext_call.return_data[0] * mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 645 len 31]
            mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 544] = 26
            mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 512]
            if ext_call.return_data[0] * _4383 / 10^6 > mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4383 / 10^6), TIMEAddress
        if -ext_call.return_data[0] + 10^6 / 10000 * arg2 / arg2 != -ext_call.return_data[0] + 10^6 / 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        mem[416] = 26
        mem[448] = 'SafeMath: division by zero'
        mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[484] = -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100
        mem[516] = 64
        mem[548] = 3
        mem[580 len 0] = None
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100, Array(len=3, data=mem[580 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 480
        require return_data.size >= 32
        _1488 = mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
        require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
        require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
        require mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]
        _1534 = mem[_1488 + 480]
        mem[ceil32(return_data.size) + 512 len floor32(mem[_1488 + 480])] = mem[_1488 + 512 len floor32(mem[_1488 + 480])]
        require 2 < mem[ceil32(return_data.size) + 480]
        _2558 = mem[ceil32(return_data.size) + 576]
        if block.timestamp + 60 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[(32 * _1534) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _1534) + ceil32(return_data.size) + 516] = arg2
        mem[(32 * _1534) + ceil32(return_data.size) + 548] = _2558
        mem[(32 * _1534) + ceil32(return_data.size) + 612] = arg3
        mem[(32 * _1534) + ceil32(return_data.size) + 644] = block.timestamp + 60
        mem[(32 * _1534) + ceil32(return_data.size) + 580] = 160
        mem[(32 * _1534) + ceil32(return_data.size) + 676] = 3
        mem[(32 * _1534) + ceil32(return_data.size) + 708 len 0] = None
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _2558, Array(len=3, data=mem[(32 * _1534) + ceil32(return_data.size) + 708 len 96]), address(arg3), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1534) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1534) + (2 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        _3552 = mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _1534) + ceil32(return_data.size) + mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512] <= 4294967296 and mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1534) + ceil32(return_data.size) + mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]) + 32 <= return_data.size
        mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1534) + ceil32(return_data.size) + mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]
        _3598 = mem[(32 * _1534) + ceil32(return_data.size) + _3552 + 512]
        mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1534) + ceil32(return_data.size) + _3552 + 512])] = mem[(32 * _1534) + ceil32(return_data.size) + _3552 + 544 len floor32(mem[(32 * _1534) + ceil32(return_data.size) + _3552 + 512])]
        require 1 < mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 512]
        _4382 = mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576]
        if not mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576]:
            mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 544] = 26
            mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 512]
            if 0 > mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576], TIMEAddress
        if ext_call.return_data[0] * mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 645 len 31]
        mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 544] = 26
        mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
        require 1 < mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 512]
        if ext_call.return_data[0] * _4382 / 10^6 > mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576]:
            revert with 0, 'SafeMath: subtraction overflow'
        return mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4382 / 10^6), TIMEAddress
    if MIMAddress == arg1:
        require ext_code.size(MIMAddress)
        call MIMAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg3), this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[128] = MIMAddress
        mem[160] = TIMEAddress
        require ext_code.size(TIMEAddress)
        staticcall TIMEAddress.0xd44545e7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_fc16a455:
            mem[192] = 30
            mem[224] = 'SafeMath: subtraction overflow'
            mem[256] = 30
            mem[288] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[320] = 26
            mem[352] = 'SafeMath: division by zero'
            if arg2:
                if -ext_call.return_data[0] + 10^6 / 10000 * arg2 / arg2 != -ext_call.return_data[0] + 10^6 / 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                mem[416] = 'SafeMath: division by zero'
                mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[452] = -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100
                mem[484] = 64
                mem[516] = 2
                mem[548 len 0] = None
                require ext_code.size(ROUTERAddress)
                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100, Array(len=2, data=mem[548 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 448
                require return_data.size >= 32
                _1512 = mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                require mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]
                _1546 = mem[_1512 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1512 + 448])] = mem[_1512 + 480 len floor32(mem[_1512 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _2570 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1546) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1546) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1546) + ceil32(return_data.size) + 516] = _2570
                mem[(32 * _1546) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1546) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1546) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1546) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1546) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _2570, Array(len=2, data=mem[(32 * _1546) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1546) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1546) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _3576 = mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1546) + ceil32(return_data.size) + mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1546) + ceil32(return_data.size) + mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1546) + ceil32(return_data.size) + mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _3610 = mem[(32 * _1546) + ceil32(return_data.size) + _3576 + 480]
                mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1546) + ceil32(return_data.size) + _3576 + 480])] = mem[(32 * _1546) + ceil32(return_data.size) + _3576 + 512 len floor32(mem[(32 * _1546) + ceil32(return_data.size) + _3576 + 480])]
                require 1 < mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 480]
                _4394 = mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _4394 / 10^6 > mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4394 / 10^6))
            else:
                mem[384] = 26
                mem[416] = 'SafeMath: division by zero'
                mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[452] = 0
                mem[484] = 64
                mem[516] = 2
                mem[548 len 0] = None
                require ext_code.size(ROUTERAddress)
                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, 2, mem[548 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 448
                require return_data.size >= 32
                _1514 = mem[448 len 4], 0
                require mem[448 len 4], 0 <= 4294967296
                require mem[448 len 4], 0 + 32 <= return_data.size
                require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                _1547 = mem[_1514 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1514 + 448])] = mem[_1514 + 480 len floor32(mem[_1514 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _2571 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1547) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1547) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1547) + ceil32(return_data.size) + 516] = _2571
                mem[(32 * _1547) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1547) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1547) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1547) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1547) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _2571, Array(len=2, data=mem[(32 * _1547) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1547) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1547) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _3578 = mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1547) + ceil32(return_data.size) + mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1547) + ceil32(return_data.size) + mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1547) + ceil32(return_data.size) + mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _3611 = mem[(32 * _1547) + ceil32(return_data.size) + _3578 + 480]
                mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1547) + ceil32(return_data.size) + _3578 + 480])] = mem[(32 * _1547) + ceil32(return_data.size) + _3578 + 512 len floor32(mem[(32 * _1547) + ceil32(return_data.size) + _3578 + 480])]
                require 1 < mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 480]
                _4395 = mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _4395 / 10^6 > mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4395 / 10^6))
        else:
            if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            mem[192] = 30
            mem[224] = 'SafeMath: subtraction overflow'
            if 10000 * sub_fc16a455 > 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[256] = 30
            mem[288] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[320] = 26
            mem[352] = 'SafeMath: division by zero'
            if not arg2:
                mem[384] = 26
                mem[416] = 'SafeMath: division by zero'
                mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[452] = 0
                mem[484] = 64
                mem[516] = 2
                mem[548 len 0] = None
                require ext_code.size(ROUTERAddress)
                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0, 64, 2, mem[548 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 448
                require return_data.size >= 32
                _1510 = mem[448 len 4], 0
                require mem[448 len 4], 0 <= 4294967296
                require mem[448 len 4], 0 + 32 <= return_data.size
                require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                _1545 = mem[_1510 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1510 + 448])] = mem[_1510 + 480 len floor32(mem[_1510 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _2569 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1545) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1545) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1545) + ceil32(return_data.size) + 516] = _2569
                mem[(32 * _1545) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1545) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1545) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1545) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1545) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _2569, Array(len=2, data=mem[(32 * _1545) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1545) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1545) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _3574 = mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1545) + ceil32(return_data.size) + mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1545) + ceil32(return_data.size) + mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1545) + ceil32(return_data.size) + mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _3609 = mem[(32 * _1545) + ceil32(return_data.size) + _3574 + 480]
                mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1545) + ceil32(return_data.size) + _3574 + 480])] = mem[(32 * _1545) + ceil32(return_data.size) + _3574 + 512 len floor32(mem[(32 * _1545) + ceil32(return_data.size) + _3574 + 480])]
                require 1 < mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 480]
                _4393 = mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _4393 / 10^6 > mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4393 / 10^6))
            else:
                if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / arg2 != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                mem[384] = 26
                mem[416] = 'SafeMath: division by zero'
                mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[452] = (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100
                mem[484] = 64
                mem[516] = 2
                mem[548 len 0] = None
                require ext_code.size(ROUTERAddress)
                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100, Array(len=2, data=mem[548 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 448
                require return_data.size >= 32
                _1508 = mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                require mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]
                _1544 = mem[_1508 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1508 + 448])] = mem[_1508 + 480 len floor32(mem[_1508 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _2568 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1544) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1544) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1544) + ceil32(return_data.size) + 516] = _2568
                mem[(32 * _1544) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1544) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1544) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1544) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1544) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _2568, Array(len=2, data=mem[(32 * _1544) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1544) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1544) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _3572 = mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1544) + ceil32(return_data.size) + mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1544) + ceil32(return_data.size) + mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1544) + ceil32(return_data.size) + mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _3608 = mem[(32 * _1544) + ceil32(return_data.size) + _3572 + 480]
                mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1544) + ceil32(return_data.size) + _3572 + 480])] = mem[(32 * _1544) + ceil32(return_data.size) + _3572 + 512 len floor32(mem[(32 * _1544) + ceil32(return_data.size) + _3572 + 480])]
                require 1 < mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 480]
                _4392 = mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _4392 / 10^6 > mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4392 / 10^6))
    else:
        if WAVAXAddress != arg1:
            require ext_code.size(sub_4a87cd67Address)
            call sub_4a87cd67Address.wrap(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
        else:
            require ext_code.size(WAVAXAddress)
            call WAVAXAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg3), this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 3
            mem[128] = WAVAXAddress
            mem[160] = MIMAddress
            mem[192] = TIMEAddress
            require ext_code.size(TIMEAddress)
            staticcall TIMEAddress.0xd44545e7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_fc16a455:
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 10^6:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                if arg2:
                    if -ext_call.return_data[0] + 10^6 / 10000 * arg2 / arg2 != -ext_call.return_data[0] + 10^6 / 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    mem[448] = 'SafeMath: division by zero'
                    mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[484] = -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100
                    mem[516] = 64
                    mem[548] = 3
                    mem[580 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100, Array(len=3, data=mem[580 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 480
                    require return_data.size >= 32
                    _1504 = mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                    require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                    require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                    require mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]
                    _1542 = mem[_1504 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1504 + 480])] = mem[_1504 + 512 len floor32(mem[_1504 + 480])]
                    require 2 < mem[ceil32(return_data.size) + 480]
                    _2566 = mem[ceil32(return_data.size) + 576]
                    if block.timestamp + 60 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _1542) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1542) + ceil32(return_data.size) + 516] = arg2
                    mem[(32 * _1542) + ceil32(return_data.size) + 548] = _2566
                    mem[(32 * _1542) + ceil32(return_data.size) + 612] = this.address
                    mem[(32 * _1542) + ceil32(return_data.size) + 644] = block.timestamp + 60
                    mem[(32 * _1542) + ceil32(return_data.size) + 580] = 160
                    mem[(32 * _1542) + ceil32(return_data.size) + 676] = 3
                    mem[(32 * _1542) + ceil32(return_data.size) + 708 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2566, Array(len=3, data=mem[(32 * _1542) + ceil32(return_data.size) + 708 len 96]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1542) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1542) + (2 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _3568 = mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1542) + ceil32(return_data.size) + mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512] <= 4294967296 and mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1542) + ceil32(return_data.size) + mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]) + 32 <= return_data.size
                    mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1542) + ceil32(return_data.size) + mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]
                    _3606 = mem[(32 * _1542) + ceil32(return_data.size) + _3568 + 512]
                    mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1542) + ceil32(return_data.size) + _3568 + 512])] = mem[(32 * _1542) + ceil32(return_data.size) + _3568 + 544 len floor32(mem[(32 * _1542) + ceil32(return_data.size) + _3568 + 512])]
                    require 1 < mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 512]
                    _4390 = mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]
                    if not mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]:
                        mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 544] = 26
                        mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                        require 1 < mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 512]
                        if 0 > mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_4a87cd67Address)
                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]
                    else:
                        if ext_call.return_data[0] * mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 645 len 31]
                        mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 544] = 26
                        mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                        require 1 < mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 512]
                        if ext_call.return_data[0] * _4390 / 10^6 > mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_4a87cd67Address)
                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                             gas gas_remaining wei
                            args (mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4390 / 10^6))
                else:
                    mem[416] = 26
                    mem[448] = 'SafeMath: division by zero'
                    mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[484] = 0
                    mem[516] = 64
                    mem[548] = 3
                    mem[580 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, 3, mem[580 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 480
                    require return_data.size >= 32
                    _1506 = mem[480 len 4], 0
                    require mem[480 len 4], 0 <= 4294967296
                    require mem[480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                    _1543 = mem[_1506 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1506 + 480])] = mem[_1506 + 512 len floor32(mem[_1506 + 480])]
                    require 2 < mem[ceil32(return_data.size) + 480]
                    _2567 = mem[ceil32(return_data.size) + 576]
                    if block.timestamp + 60 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _1543) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1543) + ceil32(return_data.size) + 516] = arg2
                    mem[(32 * _1543) + ceil32(return_data.size) + 548] = _2567
                    mem[(32 * _1543) + ceil32(return_data.size) + 612] = this.address
                    mem[(32 * _1543) + ceil32(return_data.size) + 644] = block.timestamp + 60
                    mem[(32 * _1543) + ceil32(return_data.size) + 580] = 160
                    mem[(32 * _1543) + ceil32(return_data.size) + 676] = 3
                    mem[(32 * _1543) + ceil32(return_data.size) + 708 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2567, Array(len=3, data=mem[(32 * _1543) + ceil32(return_data.size) + 708 len 96]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1543) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1543) + (2 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _3570 = mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1543) + ceil32(return_data.size) + mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512] <= 4294967296 and mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1543) + ceil32(return_data.size) + mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]) + 32 <= return_data.size
                    mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1543) + ceil32(return_data.size) + mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]
                    _3607 = mem[(32 * _1543) + ceil32(return_data.size) + _3570 + 512]
                    mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1543) + ceil32(return_data.size) + _3570 + 512])] = mem[(32 * _1543) + ceil32(return_data.size) + _3570 + 544 len floor32(mem[(32 * _1543) + ceil32(return_data.size) + _3570 + 512])]
                    require 1 < mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 512]
                    _4391 = mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]
                    if not mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]:
                        mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 544] = 26
                        mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                        require 1 < mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 512]
                        if 0 > mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_4a87cd67Address)
                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]
                    else:
                        if ext_call.return_data[0] * mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 645 len 31]
                        mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 544] = 26
                        mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                        require 1 < mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 512]
                        if ext_call.return_data[0] * _4391 / 10^6 > mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_4a87cd67Address)
                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                             gas gas_remaining wei
                            args (mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4391 / 10^6))
            else:
                if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 10000 * sub_fc16a455 > 10^6:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                if not arg2:
                    mem[448] = 'SafeMath: division by zero'
                    mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[484] = 0
                    mem[516] = 64
                    mem[548] = 3
                    mem[580 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0, 64, 3, mem[580 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 480
                    require return_data.size >= 32
                    _1502 = mem[480 len 4], 0
                    require mem[480 len 4], 0 <= 4294967296
                    require mem[480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                    _1541 = mem[_1502 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1502 + 480])] = mem[_1502 + 512 len floor32(mem[_1502 + 480])]
                    require 2 < mem[ceil32(return_data.size) + 480]
                    _2565 = mem[ceil32(return_data.size) + 576]
                    if block.timestamp + 60 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _1541) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1541) + ceil32(return_data.size) + 516] = arg2
                    mem[(32 * _1541) + ceil32(return_data.size) + 548] = _2565
                    mem[(32 * _1541) + ceil32(return_data.size) + 612] = this.address
                    mem[(32 * _1541) + ceil32(return_data.size) + 644] = block.timestamp + 60
                    mem[(32 * _1541) + ceil32(return_data.size) + 580] = 160
                    mem[(32 * _1541) + ceil32(return_data.size) + 676] = 3
                    mem[(32 * _1541) + ceil32(return_data.size) + 708 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2565, Array(len=3, data=mem[(32 * _1541) + ceil32(return_data.size) + 708 len 96]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1541) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1541) + (2 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _3566 = mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1541) + ceil32(return_data.size) + mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512] <= 4294967296 and mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1541) + ceil32(return_data.size) + mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]) + 32 <= return_data.size
                    mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1541) + ceil32(return_data.size) + mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]
                    _3605 = mem[(32 * _1541) + ceil32(return_data.size) + _3566 + 512]
                    mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1541) + ceil32(return_data.size) + _3566 + 512])] = mem[(32 * _1541) + ceil32(return_data.size) + _3566 + 544 len floor32(mem[(32 * _1541) + ceil32(return_data.size) + _3566 + 512])]
                    require 1 < mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 512]
                    _4389 = mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]
                    if not mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]:
                        mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 544] = 26
                        mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                        require 1 < mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 512]
                        if 0 > mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_4a87cd67Address)
                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]
                    else:
                        if ext_call.return_data[0] * mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 645 len 31]
                        mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 544] = 26
                        mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                        require 1 < mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 512]
                        if ext_call.return_data[0] * _4389 / 10^6 > mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_4a87cd67Address)
                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                             gas gas_remaining wei
                            args (mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4389 / 10^6))
                else:
                    if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / arg2 != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    mem[416] = 26
                    mem[448] = 'SafeMath: division by zero'
                    mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[484] = (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100
                    mem[516] = 64
                    mem[548] = 3
                    mem[580 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100, Array(len=3, data=mem[580 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 480
                    require return_data.size >= 32
                    _1500 = mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                    require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                    require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                    require mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]
                    _1540 = mem[_1500 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1500 + 480])] = mem[_1500 + 512 len floor32(mem[_1500 + 480])]
                    require 2 < mem[ceil32(return_data.size) + 480]
                    _2564 = mem[ceil32(return_data.size) + 576]
                    if block.timestamp + 60 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _1540) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1540) + ceil32(return_data.size) + 516] = arg2
                    mem[(32 * _1540) + ceil32(return_data.size) + 548] = _2564
                    mem[(32 * _1540) + ceil32(return_data.size) + 612] = this.address
                    mem[(32 * _1540) + ceil32(return_data.size) + 644] = block.timestamp + 60
                    mem[(32 * _1540) + ceil32(return_data.size) + 580] = 160
                    mem[(32 * _1540) + ceil32(return_data.size) + 676] = 3
                    mem[(32 * _1540) + ceil32(return_data.size) + 708 len 0] = None
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2564, Array(len=3, data=mem[(32 * _1540) + ceil32(return_data.size) + 708 len 96]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1540) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1540) + (2 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _3564 = mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1540) + ceil32(return_data.size) + mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512] <= 4294967296 and mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1540) + ceil32(return_data.size) + mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]) + 32 <= return_data.size
                    mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1540) + ceil32(return_data.size) + mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, arg2) >> 32 + 512]
                    _3604 = mem[(32 * _1540) + ceil32(return_data.size) + _3564 + 512]
                    mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1540) + ceil32(return_data.size) + _3564 + 512])] = mem[(32 * _1540) + ceil32(return_data.size) + _3564 + 544 len floor32(mem[(32 * _1540) + ceil32(return_data.size) + _3564 + 512])]
                    require 1 < mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 512]
                    _4388 = mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]
                    if not mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]:
                        mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 544] = 26
                        mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                        require 1 < mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 512]
                        if 0 > mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_4a87cd67Address)
                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]
                    else:
                        if ext_call.return_data[0] * mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 645 len 31]
                        mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 544] = 26
                        mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                        require 1 < mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 512]
                        if ext_call.return_data[0] * _4388 / 10^6 > mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_4a87cd67Address)
                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                             gas gas_remaining wei
                            args (mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4388 / 10^6))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WMEMOAddress)
    call WMEMOAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], WMEMOAddress
}

function sub_7dd1fc38(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        if not arg1:
            if MIMAddress != WAVAXAddress:
                if WAVAXAddress != WAVAXAddress:
                    return 0, TIMEAddress
                else:
                    require ext_code.size(WAVAXAddress)
                    call WAVAXAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), this.address, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        mem[96] = 3
                        mem[128] = WAVAXAddress
                        mem[160] = MIMAddress
                        mem[192] = TIMEAddress
                        require ext_code.size(TIMEAddress)
                        staticcall TIMEAddress.0xd44545e7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if sub_fc16a455:
                                if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                else:
                                    if 10000 * sub_fc16a455 > 10^6:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if msg.value:
                                                if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                else:
                                                    mem[448] = 'SafeMath: division by zero'
                                                    mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[484] = (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100
                                                    mem[516] = 64
                                                    mem[548] = 3
                                                    mem[580 len 0] = None
                                                    require ext_code.size(ROUTERAddress)
                                                    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100, Array(len=3, data=mem[580 len 96])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(return_data.size) + 480
                                                        require return_data.size >= 32
                                                        _1484 = mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                                                        require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                                                        require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                                                        require mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]) + 32 <= return_data.size
                                                        mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]
                                                        _1532 = mem[_1484 + 480]
                                                        mem[ceil32(return_data.size) + 512 len floor32(mem[_1484 + 480])] = mem[_1484 + 512 len floor32(mem[_1484 + 480])]
                                                        require 2 < mem[ceil32(return_data.size) + 480]
                                                        _2556 = mem[ceil32(return_data.size) + 576]
                                                        if block.timestamp + 60 < block.timestamp:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            mem[(32 * _1532) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                            mem[(32 * _1532) + ceil32(return_data.size) + 516] = msg.value
                                                            mem[(32 * _1532) + ceil32(return_data.size) + 548] = _2556
                                                            mem[(32 * _1532) + ceil32(return_data.size) + 612] = msg.sender
                                                            mem[(32 * _1532) + ceil32(return_data.size) + 644] = block.timestamp + 60
                                                            mem[(32 * _1532) + ceil32(return_data.size) + 580] = 160
                                                            mem[(32 * _1532) + ceil32(return_data.size) + 676] = 3
                                                            mem[(32 * _1532) + ceil32(return_data.size) + 708 len 0] = None
                                                            require ext_code.size(ROUTERAddress)
                                                            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args msg.value, _2556, Array(len=3, data=mem[(32 * _1532) + ceil32(return_data.size) + 708 len 96]), msg.sender, block.timestamp + 60
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[(32 * _1532) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                mem[64] = (32 * _1532) + (2 * ceil32(return_data.size)) + 512
                                                                require return_data.size >= 32
                                                                _3548 = mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32
                                                                require mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                                require mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                                require mem[(32 * _1532) + ceil32(return_data.size) + mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512] <= 4294967296 and mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1532) + ceil32(return_data.size) + mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]) + 32 <= return_data.size
                                                                mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1532) + ceil32(return_data.size) + mem[(32 * _1532) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]
                                                                _3596 = mem[(32 * _1532) + ceil32(return_data.size) + _3548 + 512]
                                                                mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1532) + ceil32(return_data.size) + _3548 + 512])] = mem[(32 * _1532) + ceil32(return_data.size) + _3548 + 544 len floor32(mem[(32 * _1532) + ceil32(return_data.size) + _3548 + 512])]
                                                                require 1 < mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 512]
                                                                _4380 = mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576]
                                                                if mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576]:
                                                                    if ext_call.return_data[0] * mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 645 len 31]
                                                                    else:
                                                                        mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                        mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                        require 1 < mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 512]
                                                                        if ext_call.return_data[0] * _4380 / 10^6 > mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576]:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            return mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4380 / 10^6), TIMEAddress
                                                                else:
                                                                    mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                    mem[(32 * _3596) + (32 * _1532) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                    require 1 < mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 512]
                                                                    if 0 > mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return mem[(32 * _1532) + (2 * ceil32(return_data.size)) + 576], TIMEAddress
                                            else:
                                                mem[448] = 'SafeMath: division by zero'
                                                mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[484] = 0
                                                mem[516] = 64
                                                mem[548] = 3
                                                mem[580 len 0] = None
                                                require ext_code.size(ROUTERAddress)
                                                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                        gas gas_remaining wei
                                                       args 0, 64, 3, mem[580 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(return_data.size) + 480
                                                    require return_data.size >= 32
                                                    _1486 = mem[480 len 4], 0
                                                    require mem[480 len 4], 0 <= 4294967296
                                                    require mem[480 len 4], 0 + 32 <= return_data.size
                                                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                                                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                                                    _1533 = mem[_1486 + 480]
                                                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1486 + 480])] = mem[_1486 + 512 len floor32(mem[_1486 + 480])]
                                                    require 2 < mem[ceil32(return_data.size) + 480]
                                                    _2557 = mem[ceil32(return_data.size) + 576]
                                                    if block.timestamp + 60 < block.timestamp:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        mem[(32 * _1533) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[(32 * _1533) + ceil32(return_data.size) + 516] = msg.value
                                                        mem[(32 * _1533) + ceil32(return_data.size) + 548] = _2557
                                                        mem[(32 * _1533) + ceil32(return_data.size) + 612] = msg.sender
                                                        mem[(32 * _1533) + ceil32(return_data.size) + 644] = block.timestamp + 60
                                                        mem[(32 * _1533) + ceil32(return_data.size) + 580] = 160
                                                        mem[(32 * _1533) + ceil32(return_data.size) + 676] = 3
                                                        mem[(32 * _1533) + ceil32(return_data.size) + 708 len 0] = None
                                                        require ext_code.size(ROUTERAddress)
                                                        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args msg.value, _2557, Array(len=3, data=mem[(32 * _1533) + ceil32(return_data.size) + 708 len 96]), msg.sender, block.timestamp + 60
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[(32 * _1533) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = (32 * _1533) + (2 * ceil32(return_data.size)) + 512
                                                            require return_data.size >= 32
                                                            _3550 = mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32
                                                            require mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                            require mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                            require mem[(32 * _1533) + ceil32(return_data.size) + mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512] <= 4294967296 and mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1533) + ceil32(return_data.size) + mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]) + 32 <= return_data.size
                                                            mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1533) + ceil32(return_data.size) + mem[(32 * _1533) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]
                                                            _3597 = mem[(32 * _1533) + ceil32(return_data.size) + _3550 + 512]
                                                            mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1533) + ceil32(return_data.size) + _3550 + 512])] = mem[(32 * _1533) + ceil32(return_data.size) + _3550 + 544 len floor32(mem[(32 * _1533) + ceil32(return_data.size) + _3550 + 512])]
                                                            require 1 < mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 512]
                                                            _4381 = mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576]
                                                            if mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576]:
                                                                if ext_call.return_data[0] * mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 645 len 31]
                                                                else:
                                                                    mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                    mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                    require 1 < mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 512]
                                                                    if ext_call.return_data[0] * _4381 / 10^6 > mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4381 / 10^6), TIMEAddress
                                                            else:
                                                                mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                mem[(32 * _3597) + (32 * _1533) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                require 1 < mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 512]
                                                                if 0 > mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    return mem[(32 * _1533) + (2 * ceil32(return_data.size)) + 576], TIMEAddress
                            else:
                                mem[224] = 30
                                mem[256] = 'SafeMath: subtraction overflow'
                                mem[288] = 30
                                mem[320] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > 10^6:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    mem[352] = 26
                                    mem[384] = 'SafeMath: division by zero'
                                    if msg.value:
                                        if -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != -ext_call.return_data[0] + 10^6 / 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        else:
                                            mem[416] = 26
                                            mem[448] = 'SafeMath: division by zero'
                                            mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[484] = -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100
                                            mem[516] = 64
                                            mem[548] = 3
                                            mem[580 len 0] = None
                                            require ext_code.size(ROUTERAddress)
                                            staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100, Array(len=3, data=mem[580 len 96])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(return_data.size) + 480
                                                require return_data.size >= 32
                                                _1488 = mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                                                require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                                                require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                                                require mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]) + 32 <= return_data.size
                                                mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]
                                                _1534 = mem[_1488 + 480]
                                                mem[ceil32(return_data.size) + 512 len floor32(mem[_1488 + 480])] = mem[_1488 + 512 len floor32(mem[_1488 + 480])]
                                                require 2 < mem[ceil32(return_data.size) + 480]
                                                _2558 = mem[ceil32(return_data.size) + 576]
                                                if block.timestamp + 60 < block.timestamp:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    mem[(32 * _1534) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[(32 * _1534) + ceil32(return_data.size) + 516] = msg.value
                                                    mem[(32 * _1534) + ceil32(return_data.size) + 548] = _2558
                                                    mem[(32 * _1534) + ceil32(return_data.size) + 612] = msg.sender
                                                    mem[(32 * _1534) + ceil32(return_data.size) + 644] = block.timestamp + 60
                                                    mem[(32 * _1534) + ceil32(return_data.size) + 580] = 160
                                                    mem[(32 * _1534) + ceil32(return_data.size) + 676] = 3
                                                    mem[(32 * _1534) + ceil32(return_data.size) + 708 len 0] = None
                                                    require ext_code.size(ROUTERAddress)
                                                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args msg.value, _2558, Array(len=3, data=mem[(32 * _1534) + ceil32(return_data.size) + 708 len 96]), msg.sender, block.timestamp + 60
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[(32 * _1534) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = (32 * _1534) + (2 * ceil32(return_data.size)) + 512
                                                        require return_data.size >= 32
                                                        _3552 = mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32
                                                        require mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                        require mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                        require mem[(32 * _1534) + ceil32(return_data.size) + mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512] <= 4294967296 and mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1534) + ceil32(return_data.size) + mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]) + 32 <= return_data.size
                                                        mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1534) + ceil32(return_data.size) + mem[(32 * _1534) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]
                                                        _3598 = mem[(32 * _1534) + ceil32(return_data.size) + _3552 + 512]
                                                        mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1534) + ceil32(return_data.size) + _3552 + 512])] = mem[(32 * _1534) + ceil32(return_data.size) + _3552 + 544 len floor32(mem[(32 * _1534) + ceil32(return_data.size) + _3552 + 512])]
                                                        require 1 < mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 512]
                                                        _4382 = mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576]
                                                        if mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576]:
                                                            if ext_call.return_data[0] * mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 645 len 31]
                                                            else:
                                                                mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                require 1 < mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 512]
                                                                if ext_call.return_data[0] * _4382 / 10^6 > mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    return mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4382 / 10^6), TIMEAddress
                                                        else:
                                                            mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 544] = 26
                                                            mem[(32 * _3598) + (32 * _1534) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                            require 1 < mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 512]
                                                            if 0 > mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                return mem[(32 * _1534) + (2 * ceil32(return_data.size)) + 576], TIMEAddress
                                    else:
                                        mem[448] = 'SafeMath: division by zero'
                                        mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[484] = 0
                                        mem[516] = 64
                                        mem[548] = 3
                                        mem[580 len 0] = None
                                        require ext_code.size(ROUTERAddress)
                                        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args 0, 64, 3, mem[580 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(return_data.size) + 480
                                            require return_data.size >= 32
                                            _1490 = mem[480 len 4], 0
                                            require mem[480 len 4], 0 <= 4294967296
                                            require mem[480 len 4], 0 + 32 <= return_data.size
                                            require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                                            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                                            _1535 = mem[_1490 + 480]
                                            mem[ceil32(return_data.size) + 512 len floor32(mem[_1490 + 480])] = mem[_1490 + 512 len floor32(mem[_1490 + 480])]
                                            require 2 < mem[ceil32(return_data.size) + 480]
                                            _2559 = mem[ceil32(return_data.size) + 576]
                                            if block.timestamp + 60 < block.timestamp:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                mem[(32 * _1535) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[(32 * _1535) + ceil32(return_data.size) + 516] = msg.value
                                                mem[(32 * _1535) + ceil32(return_data.size) + 548] = _2559
                                                mem[(32 * _1535) + ceil32(return_data.size) + 612] = msg.sender
                                                mem[(32 * _1535) + ceil32(return_data.size) + 644] = block.timestamp + 60
                                                mem[(32 * _1535) + ceil32(return_data.size) + 580] = 160
                                                mem[(32 * _1535) + ceil32(return_data.size) + 676] = 3
                                                mem[(32 * _1535) + ceil32(return_data.size) + 708 len 0] = None
                                                require ext_code.size(ROUTERAddress)
                                                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args msg.value, _2559, Array(len=3, data=mem[(32 * _1535) + ceil32(return_data.size) + 708 len 96]), msg.sender, block.timestamp + 60
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[(32 * _1535) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = (32 * _1535) + (2 * ceil32(return_data.size)) + 512
                                                    require return_data.size >= 32
                                                    _3554 = mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32
                                                    require mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                    require mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                    require mem[(32 * _1535) + ceil32(return_data.size) + mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512] <= 4294967296 and mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1535) + ceil32(return_data.size) + mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]) + 32 <= return_data.size
                                                    mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1535) + ceil32(return_data.size) + mem[(32 * _1535) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]
                                                    _3599 = mem[(32 * _1535) + ceil32(return_data.size) + _3554 + 512]
                                                    mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1535) + ceil32(return_data.size) + _3554 + 512])] = mem[(32 * _1535) + ceil32(return_data.size) + _3554 + 544 len floor32(mem[(32 * _1535) + ceil32(return_data.size) + _3554 + 512])]
                                                    require 1 < mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 512]
                                                    _4383 = mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576]
                                                    if mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576]:
                                                        if ext_call.return_data[0] * mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 645 len 31]
                                                        else:
                                                            mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 544] = 26
                                                            mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                            require 1 < mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 512]
                                                            if ext_call.return_data[0] * _4383 / 10^6 > mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                return mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4383 / 10^6), TIMEAddress
                                                    else:
                                                        mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 544] = 26
                                                        mem[(32 * _3599) + (32 * _1535) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                        require 1 < mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 512]
                                                        if 0 > mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            return mem[(32 * _1535) + (2 * ceil32(return_data.size)) + 576], TIMEAddress
            else:
                require ext_code.size(MIMAddress)
                call MIMAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), this.address, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[128] = MIMAddress
                    mem[160] = TIMEAddress
                    require ext_code.size(TIMEAddress)
                    staticcall TIMEAddress.0xd44545e7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if sub_fc16a455:
                            if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            else:
                                mem[192] = 30
                                mem[224] = 'SafeMath: subtraction overflow'
                                if 10000 * sub_fc16a455 > 10^6:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    mem[256] = 30
                                    mem[288] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        mem[320] = 26
                                        mem[352] = 'SafeMath: division by zero'
                                        if msg.value:
                                            if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            else:
                                                mem[416] = 'SafeMath: division by zero'
                                                mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[452] = (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100
                                                mem[484] = 64
                                                mem[516] = 2
                                                mem[548 len 0] = None
                                                require ext_code.size(ROUTERAddress)
                                                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                        gas gas_remaining wei
                                                       args (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100, Array(len=2, data=mem[548 len 64])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(return_data.size) + 448
                                                    require return_data.size >= 32
                                                    _1492 = mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                                                    require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                                                    require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                                                    require mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]) + 32 <= return_data.size
                                                    mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]
                                                    _1536 = mem[_1492 + 448]
                                                    mem[ceil32(return_data.size) + 480 len floor32(mem[_1492 + 448])] = mem[_1492 + 480 len floor32(mem[_1492 + 448])]
                                                    require 1 < mem[ceil32(return_data.size) + 448]
                                                    _2560 = mem[ceil32(return_data.size) + 512]
                                                    if block.timestamp + 60 < block.timestamp:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        mem[(32 * _1536) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[(32 * _1536) + ceil32(return_data.size) + 484] = msg.value
                                                        mem[(32 * _1536) + ceil32(return_data.size) + 516] = _2560
                                                        mem[(32 * _1536) + ceil32(return_data.size) + 580] = msg.sender
                                                        mem[(32 * _1536) + ceil32(return_data.size) + 612] = block.timestamp + 60
                                                        mem[(32 * _1536) + ceil32(return_data.size) + 548] = 160
                                                        mem[(32 * _1536) + ceil32(return_data.size) + 644] = 2
                                                        mem[(32 * _1536) + ceil32(return_data.size) + 676 len 0] = None
                                                        require ext_code.size(ROUTERAddress)
                                                        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args msg.value, _2560, Array(len=2, data=mem[(32 * _1536) + ceil32(return_data.size) + 676 len 64]), msg.sender, block.timestamp + 60
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[(32 * _1536) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = (32 * _1536) + (2 * ceil32(return_data.size)) + 480
                                                            require return_data.size >= 32
                                                            _3556 = mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                                                            require mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                            require mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                            require mem[(32 * _1536) + ceil32(return_data.size) + mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1536) + ceil32(return_data.size) + mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                                                            mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1536) + ceil32(return_data.size) + mem[(32 * _1536) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                                                            _3600 = mem[(32 * _1536) + ceil32(return_data.size) + _3556 + 480]
                                                            mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1536) + ceil32(return_data.size) + _3556 + 480])] = mem[(32 * _1536) + ceil32(return_data.size) + _3556 + 512 len floor32(mem[(32 * _1536) + ceil32(return_data.size) + _3556 + 480])]
                                                            require 1 < mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 480]
                                                            _4384 = mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544]
                                                            if mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544]:
                                                                if ext_call.return_data[0] * mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 613 len 31]
                                                                else:
                                                                    mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 512] = 26
                                                                    mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                                    require 1 < mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 480]
                                                                    if ext_call.return_data[0] * _4384 / 10^6 > mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4384 / 10^6), TIMEAddress
                                                            else:
                                                                mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 512] = 26
                                                                mem[(32 * _3600) + (32 * _1536) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                                require 1 < mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 480]
                                                                if 0 > mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    return mem[(32 * _1536) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
                                        else:
                                            mem[384] = 26
                                            mem[416] = 'SafeMath: division by zero'
                                            mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[452] = 0
                                            mem[484] = 64
                                            mem[516] = 2
                                            mem[548 len 0] = None
                                            require ext_code.size(ROUTERAddress)
                                            staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args 0, 64, 2, mem[548 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(return_data.size) + 448
                                                require return_data.size >= 32
                                                _1494 = mem[448 len 4], 0
                                                require mem[448 len 4], 0 <= 4294967296
                                                require mem[448 len 4], 0 + 32 <= return_data.size
                                                require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                                                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                                                _1537 = mem[_1494 + 448]
                                                mem[ceil32(return_data.size) + 480 len floor32(mem[_1494 + 448])] = mem[_1494 + 480 len floor32(mem[_1494 + 448])]
                                                require 1 < mem[ceil32(return_data.size) + 448]
                                                _2561 = mem[ceil32(return_data.size) + 512]
                                                if block.timestamp + 60 < block.timestamp:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    mem[(32 * _1537) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[(32 * _1537) + ceil32(return_data.size) + 484] = msg.value
                                                    mem[(32 * _1537) + ceil32(return_data.size) + 516] = _2561
                                                    mem[(32 * _1537) + ceil32(return_data.size) + 580] = msg.sender
                                                    mem[(32 * _1537) + ceil32(return_data.size) + 612] = block.timestamp + 60
                                                    mem[(32 * _1537) + ceil32(return_data.size) + 548] = 160
                                                    mem[(32 * _1537) + ceil32(return_data.size) + 644] = 2
                                                    mem[(32 * _1537) + ceil32(return_data.size) + 676 len 0] = None
                                                    require ext_code.size(ROUTERAddress)
                                                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args msg.value, _2561, Array(len=2, data=mem[(32 * _1537) + ceil32(return_data.size) + 676 len 64]), msg.sender, block.timestamp + 60
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[(32 * _1537) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = (32 * _1537) + (2 * ceil32(return_data.size)) + 480
                                                        require return_data.size >= 32
                                                        _3558 = mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                                                        require mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                        require mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                        require mem[(32 * _1537) + ceil32(return_data.size) + mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1537) + ceil32(return_data.size) + mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                                                        mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1537) + ceil32(return_data.size) + mem[(32 * _1537) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                                                        _3601 = mem[(32 * _1537) + ceil32(return_data.size) + _3558 + 480]
                                                        mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1537) + ceil32(return_data.size) + _3558 + 480])] = mem[(32 * _1537) + ceil32(return_data.size) + _3558 + 512 len floor32(mem[(32 * _1537) + ceil32(return_data.size) + _3558 + 480])]
                                                        require 1 < mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 480]
                                                        _4385 = mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544]
                                                        if mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544]:
                                                            if ext_call.return_data[0] * mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 613 len 31]
                                                            else:
                                                                mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 512] = 26
                                                                mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                                require 1 < mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 480]
                                                                if ext_call.return_data[0] * _4385 / 10^6 > mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    return mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4385 / 10^6), TIMEAddress
                                                        else:
                                                            mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 512] = 26
                                                            mem[(32 * _3601) + (32 * _1537) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                            require 1 < mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 480]
                                                            if 0 > mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                return mem[(32 * _1537) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
                        else:
                            mem[192] = 30
                            mem[224] = 'SafeMath: subtraction overflow'
                            mem[256] = 30
                            mem[288] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                mem[320] = 26
                                mem[352] = 'SafeMath: division by zero'
                                if msg.value:
                                    if -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != -ext_call.return_data[0] + 10^6 / 10000:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    else:
                                        mem[416] = 'SafeMath: division by zero'
                                        mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[452] = -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100
                                        mem[484] = 64
                                        mem[516] = 2
                                        mem[548 len 0] = None
                                        require ext_code.size(ROUTERAddress)
                                        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100, Array(len=2, data=mem[548 len 64])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(return_data.size) + 448
                                            require return_data.size >= 32
                                            _1496 = mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                                            require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                                            require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                                            require mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]) + 32 <= return_data.size
                                            mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]
                                            _1538 = mem[_1496 + 448]
                                            mem[ceil32(return_data.size) + 480 len floor32(mem[_1496 + 448])] = mem[_1496 + 480 len floor32(mem[_1496 + 448])]
                                            require 1 < mem[ceil32(return_data.size) + 448]
                                            _2562 = mem[ceil32(return_data.size) + 512]
                                            if block.timestamp + 60 < block.timestamp:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                mem[(32 * _1538) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[(32 * _1538) + ceil32(return_data.size) + 484] = msg.value
                                                mem[(32 * _1538) + ceil32(return_data.size) + 516] = _2562
                                                mem[(32 * _1538) + ceil32(return_data.size) + 580] = msg.sender
                                                mem[(32 * _1538) + ceil32(return_data.size) + 612] = block.timestamp + 60
                                                mem[(32 * _1538) + ceil32(return_data.size) + 548] = 160
                                                mem[(32 * _1538) + ceil32(return_data.size) + 644] = 2
                                                mem[(32 * _1538) + ceil32(return_data.size) + 676 len 0] = None
                                                require ext_code.size(ROUTERAddress)
                                                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args msg.value, _2562, Array(len=2, data=mem[(32 * _1538) + ceil32(return_data.size) + 676 len 64]), msg.sender, block.timestamp + 60
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[(32 * _1538) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = (32 * _1538) + (2 * ceil32(return_data.size)) + 480
                                                    require return_data.size >= 32
                                                    _3560 = mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                                                    require mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                    require mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                    require mem[(32 * _1538) + ceil32(return_data.size) + mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1538) + ceil32(return_data.size) + mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                                                    mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1538) + ceil32(return_data.size) + mem[(32 * _1538) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                                                    _3602 = mem[(32 * _1538) + ceil32(return_data.size) + _3560 + 480]
                                                    mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1538) + ceil32(return_data.size) + _3560 + 480])] = mem[(32 * _1538) + ceil32(return_data.size) + _3560 + 512 len floor32(mem[(32 * _1538) + ceil32(return_data.size) + _3560 + 480])]
                                                    require 1 < mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 480]
                                                    _4386 = mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544]
                                                    if mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544]:
                                                        if ext_call.return_data[0] * mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 613 len 31]
                                                        else:
                                                            mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 512] = 26
                                                            mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                            require 1 < mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 480]
                                                            if ext_call.return_data[0] * _4386 / 10^6 > mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                return mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4386 / 10^6), TIMEAddress
                                                    else:
                                                        mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 512] = 26
                                                        mem[(32 * _3602) + (32 * _1538) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                        require 1 < mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 480]
                                                        if 0 > mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            return mem[(32 * _1538) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
                                else:
                                    mem[384] = 26
                                    mem[416] = 'SafeMath: division by zero'
                                    mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[452] = 0
                                    mem[484] = 64
                                    mem[516] = 2
                                    mem[548 len 0] = None
                                    require ext_code.size(ROUTERAddress)
                                    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[548 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + 448
                                        require return_data.size >= 32
                                        _1498 = mem[448 len 4], 0
                                        require mem[448 len 4], 0 <= 4294967296
                                        require mem[448 len 4], 0 + 32 <= return_data.size
                                        require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                                        mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                                        _1539 = mem[_1498 + 448]
                                        mem[ceil32(return_data.size) + 480 len floor32(mem[_1498 + 448])] = mem[_1498 + 480 len floor32(mem[_1498 + 448])]
                                        require 1 < mem[ceil32(return_data.size) + 448]
                                        _2563 = mem[ceil32(return_data.size) + 512]
                                        if block.timestamp + 60 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            mem[(32 * _1539) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _1539) + ceil32(return_data.size) + 484] = msg.value
                                            mem[(32 * _1539) + ceil32(return_data.size) + 516] = _2563
                                            mem[(32 * _1539) + ceil32(return_data.size) + 580] = msg.sender
                                            mem[(32 * _1539) + ceil32(return_data.size) + 612] = block.timestamp + 60
                                            mem[(32 * _1539) + ceil32(return_data.size) + 548] = 160
                                            mem[(32 * _1539) + ceil32(return_data.size) + 644] = 2
                                            mem[(32 * _1539) + ceil32(return_data.size) + 676 len 0] = None
                                            require ext_code.size(ROUTERAddress)
                                            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args msg.value, _2563, Array(len=2, data=mem[(32 * _1539) + ceil32(return_data.size) + 676 len 64]), msg.sender, block.timestamp + 60
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[(32 * _1539) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = (32 * _1539) + (2 * ceil32(return_data.size)) + 480
                                                require return_data.size >= 32
                                                _3562 = mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                                                require mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                require mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                require mem[(32 * _1539) + ceil32(return_data.size) + mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1539) + ceil32(return_data.size) + mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                                                mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1539) + ceil32(return_data.size) + mem[(32 * _1539) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                                                _3603 = mem[(32 * _1539) + ceil32(return_data.size) + _3562 + 480]
                                                mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1539) + ceil32(return_data.size) + _3562 + 480])] = mem[(32 * _1539) + ceil32(return_data.size) + _3562 + 512 len floor32(mem[(32 * _1539) + ceil32(return_data.size) + _3562 + 480])]
                                                require 1 < mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 480]
                                                _4387 = mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544]
                                                if mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544]:
                                                    if ext_call.return_data[0] * mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 613 len 31]
                                                    else:
                                                        mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 512] = 26
                                                        mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                        require 1 < mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 480]
                                                        if ext_call.return_data[0] * _4387 / 10^6 > mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            return mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4387 / 10^6), TIMEAddress
                                                else:
                                                    mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 512] = 26
                                                    mem[(32 * _3603) + (32 * _1539) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                    require 1 < mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 480]
                                                    if 0 > mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        return mem[(32 * _1539) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
        else:
            if MIMAddress != WAVAXAddress:
                if WAVAXAddress != WAVAXAddress:
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_code.size(WMEMOAddress)
                        call WMEMOAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0], WMEMOAddress
                else:
                    require ext_code.size(WAVAXAddress)
                    call WAVAXAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), this.address, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        mem[96] = 3
                        mem[128] = WAVAXAddress
                        mem[160] = MIMAddress
                        mem[192] = TIMEAddress
                        require ext_code.size(TIMEAddress)
                        staticcall TIMEAddress.0xd44545e7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if sub_fc16a455:
                                if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                else:
                                    mem[224] = 30
                                    mem[256] = 'SafeMath: subtraction overflow'
                                    if 10000 * sub_fc16a455 > 10^6:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        mem[288] = 30
                                        mem[320] = 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            mem[352] = 26
                                            mem[384] = 'SafeMath: division by zero'
                                            if msg.value:
                                                if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                else:
                                                    mem[416] = 26
                                                    mem[448] = 'SafeMath: division by zero'
                                                    mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[484] = (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100
                                                    mem[516] = 64
                                                    mem[548] = 3
                                                    mem[580 len 0] = None
                                                    require ext_code.size(ROUTERAddress)
                                                    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100, Array(len=3, data=mem[580 len 96])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(return_data.size) + 480
                                                        require return_data.size >= 32
                                                        _1500 = mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                                                        require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                                                        require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                                                        require mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]) + 32 <= return_data.size
                                                        mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]
                                                        _1540 = mem[_1500 + 480]
                                                        mem[ceil32(return_data.size) + 512 len floor32(mem[_1500 + 480])] = mem[_1500 + 512 len floor32(mem[_1500 + 480])]
                                                        require 2 < mem[ceil32(return_data.size) + 480]
                                                        _2564 = mem[ceil32(return_data.size) + 576]
                                                        if block.timestamp + 60 < block.timestamp:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            mem[(32 * _1540) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                            mem[(32 * _1540) + ceil32(return_data.size) + 516] = msg.value
                                                            mem[(32 * _1540) + ceil32(return_data.size) + 548] = _2564
                                                            mem[(32 * _1540) + ceil32(return_data.size) + 612] = this.address
                                                            mem[(32 * _1540) + ceil32(return_data.size) + 644] = block.timestamp + 60
                                                            mem[(32 * _1540) + ceil32(return_data.size) + 580] = 160
                                                            mem[(32 * _1540) + ceil32(return_data.size) + 676] = 3
                                                            mem[(32 * _1540) + ceil32(return_data.size) + 708 len 0] = None
                                                            require ext_code.size(ROUTERAddress)
                                                            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args msg.value, _2564, Array(len=3, data=mem[(32 * _1540) + ceil32(return_data.size) + 708 len 96]), address(this.address), block.timestamp + 60
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                mem[(32 * _1540) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                mem[64] = (32 * _1540) + (2 * ceil32(return_data.size)) + 512
                                                                require return_data.size >= 32
                                                                _3564 = mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32
                                                                require mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                                require mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                                require mem[(32 * _1540) + ceil32(return_data.size) + mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512] <= 4294967296 and mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1540) + ceil32(return_data.size) + mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]) + 32 <= return_data.size
                                                                mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1540) + ceil32(return_data.size) + mem[(32 * _1540) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]
                                                                _3604 = mem[(32 * _1540) + ceil32(return_data.size) + _3564 + 512]
                                                                mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1540) + ceil32(return_data.size) + _3564 + 512])] = mem[(32 * _1540) + ceil32(return_data.size) + _3564 + 544 len floor32(mem[(32 * _1540) + ceil32(return_data.size) + _3564 + 512])]
                                                                require 1 < mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 512]
                                                                _4388 = mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]
                                                                if mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]:
                                                                    if ext_call.return_data[0] * mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 645 len 31]
                                                                    else:
                                                                        mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                        mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                        require 1 < mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 512]
                                                                        if ext_call.return_data[0] * _4388 / 10^6 > mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            require ext_code.size(sub_4a87cd67Address)
                                                                            call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args (mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4388 / 10^6))
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_code.size(WMEMOAddress)
                                                                                call WMEMOAddress.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    return ext_call.return_data[0], WMEMOAddress
                                                                else:
                                                                    mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                    mem[(32 * _3604) + (32 * _1540) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                    require 1 < mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 512]
                                                                    if 0 > mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        require ext_code.size(sub_4a87cd67Address)
                                                                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(32 * _1540) + (2 * ceil32(return_data.size)) + 576]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_code.size(WMEMOAddress)
                                                                            call WMEMOAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                return ext_call.return_data[0], WMEMOAddress
                                            else:
                                                mem[448] = 'SafeMath: division by zero'
                                                mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[484] = 0
                                                mem[516] = 64
                                                mem[548] = 3
                                                mem[580 len 0] = None
                                                require ext_code.size(ROUTERAddress)
                                                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                        gas gas_remaining wei
                                                       args 0, 64, 3, mem[580 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(return_data.size) + 480
                                                    require return_data.size >= 32
                                                    _1502 = mem[480 len 4], 0
                                                    require mem[480 len 4], 0 <= 4294967296
                                                    require mem[480 len 4], 0 + 32 <= return_data.size
                                                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                                                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                                                    _1541 = mem[_1502 + 480]
                                                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1502 + 480])] = mem[_1502 + 512 len floor32(mem[_1502 + 480])]
                                                    require 2 < mem[ceil32(return_data.size) + 480]
                                                    _2565 = mem[ceil32(return_data.size) + 576]
                                                    if block.timestamp + 60 < block.timestamp:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        mem[(32 * _1541) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[(32 * _1541) + ceil32(return_data.size) + 516] = msg.value
                                                        mem[(32 * _1541) + ceil32(return_data.size) + 548] = _2565
                                                        mem[(32 * _1541) + ceil32(return_data.size) + 612] = this.address
                                                        mem[(32 * _1541) + ceil32(return_data.size) + 644] = block.timestamp + 60
                                                        mem[(32 * _1541) + ceil32(return_data.size) + 580] = 160
                                                        mem[(32 * _1541) + ceil32(return_data.size) + 676] = 3
                                                        mem[(32 * _1541) + ceil32(return_data.size) + 708 len 0] = None
                                                        require ext_code.size(ROUTERAddress)
                                                        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args msg.value, _2565, Array(len=3, data=mem[(32 * _1541) + ceil32(return_data.size) + 708 len 96]), address(this.address), block.timestamp + 60
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[(32 * _1541) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = (32 * _1541) + (2 * ceil32(return_data.size)) + 512
                                                            require return_data.size >= 32
                                                            _3566 = mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32
                                                            require mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                            require mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                            require mem[(32 * _1541) + ceil32(return_data.size) + mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512] <= 4294967296 and mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1541) + ceil32(return_data.size) + mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]) + 32 <= return_data.size
                                                            mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1541) + ceil32(return_data.size) + mem[(32 * _1541) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]
                                                            _3605 = mem[(32 * _1541) + ceil32(return_data.size) + _3566 + 512]
                                                            mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1541) + ceil32(return_data.size) + _3566 + 512])] = mem[(32 * _1541) + ceil32(return_data.size) + _3566 + 544 len floor32(mem[(32 * _1541) + ceil32(return_data.size) + _3566 + 512])]
                                                            require 1 < mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 512]
                                                            _4389 = mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]
                                                            if mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]:
                                                                if ext_call.return_data[0] * mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 645 len 31]
                                                                else:
                                                                    mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                    mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                    require 1 < mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 512]
                                                                    if ext_call.return_data[0] * _4389 / 10^6 > mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        require ext_code.size(sub_4a87cd67Address)
                                                                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args (mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4389 / 10^6))
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_code.size(WMEMOAddress)
                                                                            call WMEMOAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                return ext_call.return_data[0], WMEMOAddress
                                                            else:
                                                                mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                mem[(32 * _3605) + (32 * _1541) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                require 1 < mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 512]
                                                                if 0 > mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    require ext_code.size(sub_4a87cd67Address)
                                                                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(32 * _1541) + (2 * ceil32(return_data.size)) + 576]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_code.size(WMEMOAddress)
                                                                        call WMEMOAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            return ext_call.return_data[0], WMEMOAddress
                            else:
                                mem[224] = 30
                                mem[256] = 'SafeMath: subtraction overflow'
                                mem[288] = 30
                                mem[320] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > 10^6:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    mem[352] = 26
                                    mem[384] = 'SafeMath: division by zero'
                                    if msg.value:
                                        if -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != -ext_call.return_data[0] + 10^6 / 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        else:
                                            mem[448] = 'SafeMath: division by zero'
                                            mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[484] = -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100
                                            mem[516] = 64
                                            mem[548] = 3
                                            mem[580 len 0] = None
                                            require ext_code.size(ROUTERAddress)
                                            staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100, Array(len=3, data=mem[580 len 96])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(return_data.size) + 480
                                                require return_data.size >= 32
                                                _1504 = mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                                                require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                                                require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                                                require mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]) + 32 <= return_data.size
                                                mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]
                                                _1542 = mem[_1504 + 480]
                                                mem[ceil32(return_data.size) + 512 len floor32(mem[_1504 + 480])] = mem[_1504 + 512 len floor32(mem[_1504 + 480])]
                                                require 2 < mem[ceil32(return_data.size) + 480]
                                                _2566 = mem[ceil32(return_data.size) + 576]
                                                if block.timestamp + 60 < block.timestamp:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    mem[(32 * _1542) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[(32 * _1542) + ceil32(return_data.size) + 516] = msg.value
                                                    mem[(32 * _1542) + ceil32(return_data.size) + 548] = _2566
                                                    mem[(32 * _1542) + ceil32(return_data.size) + 612] = this.address
                                                    mem[(32 * _1542) + ceil32(return_data.size) + 644] = block.timestamp + 60
                                                    mem[(32 * _1542) + ceil32(return_data.size) + 580] = 160
                                                    mem[(32 * _1542) + ceil32(return_data.size) + 676] = 3
                                                    mem[(32 * _1542) + ceil32(return_data.size) + 708 len 0] = None
                                                    require ext_code.size(ROUTERAddress)
                                                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args msg.value, _2566, Array(len=3, data=mem[(32 * _1542) + ceil32(return_data.size) + 708 len 96]), address(this.address), block.timestamp + 60
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[(32 * _1542) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = (32 * _1542) + (2 * ceil32(return_data.size)) + 512
                                                        require return_data.size >= 32
                                                        _3568 = mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32
                                                        require mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                        require mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                        require mem[(32 * _1542) + ceil32(return_data.size) + mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512] <= 4294967296 and mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1542) + ceil32(return_data.size) + mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]) + 32 <= return_data.size
                                                        mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1542) + ceil32(return_data.size) + mem[(32 * _1542) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]
                                                        _3606 = mem[(32 * _1542) + ceil32(return_data.size) + _3568 + 512]
                                                        mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1542) + ceil32(return_data.size) + _3568 + 512])] = mem[(32 * _1542) + ceil32(return_data.size) + _3568 + 544 len floor32(mem[(32 * _1542) + ceil32(return_data.size) + _3568 + 512])]
                                                        require 1 < mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 512]
                                                        _4390 = mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]
                                                        if mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]:
                                                            if ext_call.return_data[0] * mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 645 len 31]
                                                            else:
                                                                mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 544] = 26
                                                                mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                                require 1 < mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 512]
                                                                if ext_call.return_data[0] * _4390 / 10^6 > mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    require ext_code.size(sub_4a87cd67Address)
                                                                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args (mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4390 / 10^6))
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_code.size(WMEMOAddress)
                                                                        call WMEMOAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            return ext_call.return_data[0], WMEMOAddress
                                                        else:
                                                            mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 544] = 26
                                                            mem[(32 * _3606) + (32 * _1542) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                            require 1 < mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 512]
                                                            if 0 > mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                require ext_code.size(sub_4a87cd67Address)
                                                                call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(32 * _1542) + (2 * ceil32(return_data.size)) + 576]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(WMEMOAddress)
                                                                    call WMEMOAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        return ext_call.return_data[0], WMEMOAddress
                                    else:
                                        mem[416] = 26
                                        mem[448] = 'SafeMath: division by zero'
                                        mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[484] = 0
                                        mem[516] = 64
                                        mem[548] = 3
                                        mem[580 len 0] = None
                                        require ext_code.size(ROUTERAddress)
                                        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args 0, 64, 3, mem[580 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(return_data.size) + 480
                                            require return_data.size >= 32
                                            _1506 = mem[480 len 4], 0
                                            require mem[480 len 4], 0 <= 4294967296
                                            require mem[480 len 4], 0 + 32 <= return_data.size
                                            require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                                            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                                            _1543 = mem[_1506 + 480]
                                            mem[ceil32(return_data.size) + 512 len floor32(mem[_1506 + 480])] = mem[_1506 + 512 len floor32(mem[_1506 + 480])]
                                            require 2 < mem[ceil32(return_data.size) + 480]
                                            _2567 = mem[ceil32(return_data.size) + 576]
                                            if block.timestamp + 60 < block.timestamp:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                mem[(32 * _1543) + ceil32(return_data.size) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[(32 * _1543) + ceil32(return_data.size) + 516] = msg.value
                                                mem[(32 * _1543) + ceil32(return_data.size) + 548] = _2567
                                                mem[(32 * _1543) + ceil32(return_data.size) + 612] = this.address
                                                mem[(32 * _1543) + ceil32(return_data.size) + 644] = block.timestamp + 60
                                                mem[(32 * _1543) + ceil32(return_data.size) + 580] = 160
                                                mem[(32 * _1543) + ceil32(return_data.size) + 676] = 3
                                                mem[(32 * _1543) + ceil32(return_data.size) + 708 len 0] = None
                                                require ext_code.size(ROUTERAddress)
                                                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args msg.value, _2567, Array(len=3, data=mem[(32 * _1543) + ceil32(return_data.size) + 708 len 96]), address(this.address), block.timestamp + 60
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[(32 * _1543) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = (32 * _1543) + (2 * ceil32(return_data.size)) + 512
                                                    require return_data.size >= 32
                                                    _3570 = mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32
                                                    require mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                    require mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                    require mem[(32 * _1543) + ceil32(return_data.size) + mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512] <= 4294967296 and mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1543) + ceil32(return_data.size) + mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]) + 32 <= return_data.size
                                                    mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _1543) + ceil32(return_data.size) + mem[(32 * _1543) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 512]
                                                    _3607 = mem[(32 * _1543) + ceil32(return_data.size) + _3570 + 512]
                                                    mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1543) + ceil32(return_data.size) + _3570 + 512])] = mem[(32 * _1543) + ceil32(return_data.size) + _3570 + 544 len floor32(mem[(32 * _1543) + ceil32(return_data.size) + _3570 + 512])]
                                                    require 1 < mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 512]
                                                    _4391 = mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]
                                                    if mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]:
                                                        if ext_call.return_data[0] * mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 645 len 31]
                                                        else:
                                                            mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 544] = 26
                                                            mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                            require 1 < mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 512]
                                                            if ext_call.return_data[0] * _4391 / 10^6 > mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                require ext_code.size(sub_4a87cd67Address)
                                                                call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args (mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576] - (ext_call.return_data[0] * _4391 / 10^6))
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(WMEMOAddress)
                                                                    call WMEMOAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        return ext_call.return_data[0], WMEMOAddress
                                                    else:
                                                        mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 544] = 26
                                                        mem[(32 * _3607) + (32 * _1543) + (2 * ceil32(return_data.size)) + 576] = 'SafeMath: division by zero'
                                                        require 1 < mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 512]
                                                        if 0 > mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            require ext_code.size(sub_4a87cd67Address)
                                                            call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args mem[(32 * _1543) + (2 * ceil32(return_data.size)) + 576]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_code.size(WMEMOAddress)
                                                                call WMEMOAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    return ext_call.return_data[0], WMEMOAddress
            else:
                require ext_code.size(MIMAddress)
                call MIMAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), this.address, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    mem[96] = 2
                    mem[128] = MIMAddress
                    mem[160] = TIMEAddress
                    require ext_code.size(TIMEAddress)
                    staticcall TIMEAddress.0xd44545e7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if sub_fc16a455:
                            if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            else:
                                mem[192] = 30
                                mem[224] = 'SafeMath: subtraction overflow'
                                if 10000 * sub_fc16a455 > 10^6:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    mem[256] = 30
                                    mem[288] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        mem[320] = 26
                                        mem[352] = 'SafeMath: division by zero'
                                        if msg.value:
                                            if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            else:
                                                mem[384] = 26
                                                mem[416] = 'SafeMath: division by zero'
                                                mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[452] = (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100
                                                mem[484] = 64
                                                mem[516] = 2
                                                mem[548 len 0] = None
                                                require ext_code.size(ROUTERAddress)
                                                staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                        gas gas_remaining wei
                                                       args (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100, Array(len=2, data=mem[548 len 64])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(return_data.size) + 448
                                                    require return_data.size >= 32
                                                    _1508 = mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                                                    require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                                                    require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                                                    require mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]) + 32 <= return_data.size
                                                    mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]
                                                    _1544 = mem[_1508 + 448]
                                                    mem[ceil32(return_data.size) + 480 len floor32(mem[_1508 + 448])] = mem[_1508 + 480 len floor32(mem[_1508 + 448])]
                                                    require 1 < mem[ceil32(return_data.size) + 448]
                                                    _2568 = mem[ceil32(return_data.size) + 512]
                                                    if block.timestamp + 60 < block.timestamp:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        mem[(32 * _1544) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[(32 * _1544) + ceil32(return_data.size) + 484] = msg.value
                                                        mem[(32 * _1544) + ceil32(return_data.size) + 516] = _2568
                                                        mem[(32 * _1544) + ceil32(return_data.size) + 580] = this.address
                                                        mem[(32 * _1544) + ceil32(return_data.size) + 612] = block.timestamp + 60
                                                        mem[(32 * _1544) + ceil32(return_data.size) + 548] = 160
                                                        mem[(32 * _1544) + ceil32(return_data.size) + 644] = 2
                                                        mem[(32 * _1544) + ceil32(return_data.size) + 676 len 0] = None
                                                        require ext_code.size(ROUTERAddress)
                                                        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args msg.value, _2568, Array(len=2, data=mem[(32 * _1544) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            mem[(32 * _1544) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = (32 * _1544) + (2 * ceil32(return_data.size)) + 480
                                                            require return_data.size >= 32
                                                            _3572 = mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                                                            require mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                            require mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                            require mem[(32 * _1544) + ceil32(return_data.size) + mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1544) + ceil32(return_data.size) + mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                                                            mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1544) + ceil32(return_data.size) + mem[(32 * _1544) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                                                            _3608 = mem[(32 * _1544) + ceil32(return_data.size) + _3572 + 480]
                                                            mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1544) + ceil32(return_data.size) + _3572 + 480])] = mem[(32 * _1544) + ceil32(return_data.size) + _3572 + 512 len floor32(mem[(32 * _1544) + ceil32(return_data.size) + _3572 + 480])]
                                                            require 1 < mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 480]
                                                            _4392 = mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]
                                                            if mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]:
                                                                if ext_call.return_data[0] * mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 613 len 31]
                                                                else:
                                                                    mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 512] = 26
                                                                    mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                                    require 1 < mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 480]
                                                                    if ext_call.return_data[0] * _4392 / 10^6 > mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        require ext_code.size(sub_4a87cd67Address)
                                                                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args (mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4392 / 10^6))
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_code.size(WMEMOAddress)
                                                                            call WMEMOAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                return ext_call.return_data[0], WMEMOAddress
                                                            else:
                                                                mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 512] = 26
                                                                mem[(32 * _3608) + (32 * _1544) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                                require 1 < mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 480]
                                                                if 0 > mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    require ext_code.size(sub_4a87cd67Address)
                                                                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(32 * _1544) + (2 * ceil32(return_data.size)) + 544]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_code.size(WMEMOAddress)
                                                                        call WMEMOAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            return ext_call.return_data[0], WMEMOAddress
                                        else:
                                            mem[384] = 26
                                            mem[416] = 'SafeMath: division by zero'
                                            mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[452] = 0
                                            mem[484] = 64
                                            mem[516] = 2
                                            mem[548 len 0] = None
                                            require ext_code.size(ROUTERAddress)
                                            staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args 0, 64, 2, mem[548 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(return_data.size) + 448
                                                require return_data.size >= 32
                                                _1510 = mem[448 len 4], 0
                                                require mem[448 len 4], 0 <= 4294967296
                                                require mem[448 len 4], 0 + 32 <= return_data.size
                                                require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                                                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                                                _1545 = mem[_1510 + 448]
                                                mem[ceil32(return_data.size) + 480 len floor32(mem[_1510 + 448])] = mem[_1510 + 480 len floor32(mem[_1510 + 448])]
                                                require 1 < mem[ceil32(return_data.size) + 448]
                                                _2569 = mem[ceil32(return_data.size) + 512]
                                                if block.timestamp + 60 < block.timestamp:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    mem[(32 * _1545) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[(32 * _1545) + ceil32(return_data.size) + 484] = msg.value
                                                    mem[(32 * _1545) + ceil32(return_data.size) + 516] = _2569
                                                    mem[(32 * _1545) + ceil32(return_data.size) + 580] = this.address
                                                    mem[(32 * _1545) + ceil32(return_data.size) + 612] = block.timestamp + 60
                                                    mem[(32 * _1545) + ceil32(return_data.size) + 548] = 160
                                                    mem[(32 * _1545) + ceil32(return_data.size) + 644] = 2
                                                    mem[(32 * _1545) + ceil32(return_data.size) + 676 len 0] = None
                                                    require ext_code.size(ROUTERAddress)
                                                    call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args msg.value, _2569, Array(len=2, data=mem[(32 * _1545) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[(32 * _1545) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = (32 * _1545) + (2 * ceil32(return_data.size)) + 480
                                                        require return_data.size >= 32
                                                        _3574 = mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                                                        require mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                        require mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                        require mem[(32 * _1545) + ceil32(return_data.size) + mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1545) + ceil32(return_data.size) + mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                                                        mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1545) + ceil32(return_data.size) + mem[(32 * _1545) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                                                        _3609 = mem[(32 * _1545) + ceil32(return_data.size) + _3574 + 480]
                                                        mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1545) + ceil32(return_data.size) + _3574 + 480])] = mem[(32 * _1545) + ceil32(return_data.size) + _3574 + 512 len floor32(mem[(32 * _1545) + ceil32(return_data.size) + _3574 + 480])]
                                                        require 1 < mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 480]
                                                        _4393 = mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]
                                                        if mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]:
                                                            if ext_call.return_data[0] * mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 613 len 31]
                                                            else:
                                                                mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 512] = 26
                                                                mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                                require 1 < mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 480]
                                                                if ext_call.return_data[0] * _4393 / 10^6 > mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    require ext_code.size(sub_4a87cd67Address)
                                                                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args (mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4393 / 10^6))
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_code.size(WMEMOAddress)
                                                                        call WMEMOAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            return ext_call.return_data[0], WMEMOAddress
                                                        else:
                                                            mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 512] = 26
                                                            mem[(32 * _3609) + (32 * _1545) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                            require 1 < mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 480]
                                                            if 0 > mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                require ext_code.size(sub_4a87cd67Address)
                                                                call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(32 * _1545) + (2 * ceil32(return_data.size)) + 544]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(WMEMOAddress)
                                                                    call WMEMOAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        return ext_call.return_data[0], WMEMOAddress
                        else:
                            mem[192] = 30
                            mem[224] = 'SafeMath: subtraction overflow'
                            mem[256] = 30
                            mem[288] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10^6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                mem[320] = 26
                                mem[352] = 'SafeMath: division by zero'
                                if msg.value:
                                    if -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != -ext_call.return_data[0] + 10^6 / 10000:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    else:
                                        mem[416] = 'SafeMath: division by zero'
                                        mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[452] = -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100
                                        mem[484] = 64
                                        mem[516] = 2
                                        mem[548 len 0] = None
                                        require ext_code.size(ROUTERAddress)
                                        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100, Array(len=2, data=mem[548 len 64])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(return_data.size) + 448
                                            require return_data.size >= 32
                                            _1512 = mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                                            require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                                            require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                                            require mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]) + 32 <= return_data.size
                                            mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]
                                            _1546 = mem[_1512 + 448]
                                            mem[ceil32(return_data.size) + 480 len floor32(mem[_1512 + 448])] = mem[_1512 + 480 len floor32(mem[_1512 + 448])]
                                            require 1 < mem[ceil32(return_data.size) + 448]
                                            _2570 = mem[ceil32(return_data.size) + 512]
                                            if block.timestamp + 60 < block.timestamp:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                mem[(32 * _1546) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[(32 * _1546) + ceil32(return_data.size) + 484] = msg.value
                                                mem[(32 * _1546) + ceil32(return_data.size) + 516] = _2570
                                                mem[(32 * _1546) + ceil32(return_data.size) + 580] = this.address
                                                mem[(32 * _1546) + ceil32(return_data.size) + 612] = block.timestamp + 60
                                                mem[(32 * _1546) + ceil32(return_data.size) + 548] = 160
                                                mem[(32 * _1546) + ceil32(return_data.size) + 644] = 2
                                                mem[(32 * _1546) + ceil32(return_data.size) + 676 len 0] = None
                                                require ext_code.size(ROUTERAddress)
                                                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args msg.value, _2570, Array(len=2, data=mem[(32 * _1546) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[(32 * _1546) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = (32 * _1546) + (2 * ceil32(return_data.size)) + 480
                                                    require return_data.size >= 32
                                                    _3576 = mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                                                    require mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                    require mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                    require mem[(32 * _1546) + ceil32(return_data.size) + mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1546) + ceil32(return_data.size) + mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                                                    mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1546) + ceil32(return_data.size) + mem[(32 * _1546) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                                                    _3610 = mem[(32 * _1546) + ceil32(return_data.size) + _3576 + 480]
                                                    mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1546) + ceil32(return_data.size) + _3576 + 480])] = mem[(32 * _1546) + ceil32(return_data.size) + _3576 + 512 len floor32(mem[(32 * _1546) + ceil32(return_data.size) + _3576 + 480])]
                                                    require 1 < mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 480]
                                                    _4394 = mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]
                                                    if mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]:
                                                        if ext_call.return_data[0] * mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 613 len 31]
                                                        else:
                                                            mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 512] = 26
                                                            mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                            require 1 < mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 480]
                                                            if ext_call.return_data[0] * _4394 / 10^6 > mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                require ext_code.size(sub_4a87cd67Address)
                                                                call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args (mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4394 / 10^6))
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(WMEMOAddress)
                                                                    call WMEMOAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        return ext_call.return_data[0], WMEMOAddress
                                                    else:
                                                        mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 512] = 26
                                                        mem[(32 * _3610) + (32 * _1546) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                        require 1 < mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 480]
                                                        if 0 > mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            require ext_code.size(sub_4a87cd67Address)
                                                            call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args mem[(32 * _1546) + (2 * ceil32(return_data.size)) + 544]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_code.size(WMEMOAddress)
                                                                call WMEMOAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    return ext_call.return_data[0], WMEMOAddress
                                else:
                                    mem[384] = 26
                                    mem[416] = 'SafeMath: division by zero'
                                    mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[452] = 0
                                    mem[484] = 64
                                    mem[516] = 2
                                    mem[548 len 0] = None
                                    require ext_code.size(ROUTERAddress)
                                    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[548 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + 448
                                        require return_data.size >= 32
                                        _1514 = mem[448 len 4], 0
                                        require mem[448 len 4], 0 <= 4294967296
                                        require mem[448 len 4], 0 + 32 <= return_data.size
                                        require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                                        mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                                        _1547 = mem[_1514 + 448]
                                        mem[ceil32(return_data.size) + 480 len floor32(mem[_1514 + 448])] = mem[_1514 + 480 len floor32(mem[_1514 + 448])]
                                        require 1 < mem[ceil32(return_data.size) + 448]
                                        _2571 = mem[ceil32(return_data.size) + 512]
                                        if block.timestamp + 60 < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            mem[(32 * _1547) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _1547) + ceil32(return_data.size) + 484] = msg.value
                                            mem[(32 * _1547) + ceil32(return_data.size) + 516] = _2571
                                            mem[(32 * _1547) + ceil32(return_data.size) + 580] = this.address
                                            mem[(32 * _1547) + ceil32(return_data.size) + 612] = block.timestamp + 60
                                            mem[(32 * _1547) + ceil32(return_data.size) + 548] = 160
                                            mem[(32 * _1547) + ceil32(return_data.size) + 644] = 2
                                            mem[(32 * _1547) + ceil32(return_data.size) + 676 len 0] = None
                                            require ext_code.size(ROUTERAddress)
                                            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args msg.value, _2571, Array(len=2, data=mem[(32 * _1547) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                mem[(32 * _1547) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = (32 * _1547) + (2 * ceil32(return_data.size)) + 480
                                                require return_data.size >= 32
                                                _3578 = mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                                                require mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                                                require mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                                                require mem[(32 * _1547) + ceil32(return_data.size) + mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1547) + ceil32(return_data.size) + mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                                                mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1547) + ceil32(return_data.size) + mem[(32 * _1547) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                                                _3611 = mem[(32 * _1547) + ceil32(return_data.size) + _3578 + 480]
                                                mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1547) + ceil32(return_data.size) + _3578 + 480])] = mem[(32 * _1547) + ceil32(return_data.size) + _3578 + 512 len floor32(mem[(32 * _1547) + ceil32(return_data.size) + _3578 + 480])]
                                                require 1 < mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 480]
                                                _4395 = mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]
                                                if mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]:
                                                    if ext_call.return_data[0] * mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 613 len 31]
                                                    else:
                                                        mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 512] = 26
                                                        mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                        require 1 < mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 480]
                                                        if ext_call.return_data[0] * _4395 / 10^6 > mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            require ext_code.size(sub_4a87cd67Address)
                                                            call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args (mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _4395 / 10^6))
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_code.size(WMEMOAddress)
                                                                call WMEMOAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    return ext_call.return_data[0], WMEMOAddress
                                                else:
                                                    mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 512] = 26
                                                    mem[(32 * _3611) + (32 * _1547) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                                                    require 1 < mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 480]
                                                    if 0 > mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        require ext_code.size(sub_4a87cd67Address)
                                                        call sub_4a87cd67Address.wrap(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args mem[(32 * _1547) + (2 * ceil32(return_data.size)) + 544]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_code.size(WMEMOAddress)
                                                            call WMEMOAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                return ext_call.return_data[0], WMEMOAddress
}



}
