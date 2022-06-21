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

function sub_7f1fa609(?) {
    require calldata.size - 4 >= 64
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
        if MIMAddress != arg1:
            if WAVAXAddress != arg1:
                return 0, TIMEAddress
            require ext_code.size(WAVAXAddress)
            call WAVAXAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg3), this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(TIMEAddress)
            staticcall TIMEAddress.0xd44545e7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_fc16a455:
                if ext_call.return_data[0] > 10^6:
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
                    _1070 = mem[480 len 4], 0
                    require mem[480 len 4], 0 <= 4294967296
                    require mem[480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                    _1115 = mem[_1070 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1070 + 480])] = mem[_1070 + 512 len floor32(mem[_1070 + 480])]
                    require 1 < mem[ceil32(return_data.size) + 480]
                    mem[(32 * _1115) + ceil32(return_data.size) + 512] = mem[ceil32(return_data.size) + 544]
                    return mem[(32 * _1115) + ceil32(return_data.size) + 512], TIMEAddress
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
                _1068 = mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                require mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]
                _1114 = mem[_1068 + 480]
                mem[ceil32(return_data.size) + 512 len floor32(mem[_1068 + 480])] = mem[_1068 + 512 len floor32(mem[_1068 + 480])]
                require 1 < mem[ceil32(return_data.size) + 480]
                mem[(32 * _1114) + ceil32(return_data.size) + 512] = mem[ceil32(return_data.size) + 544]
                return mem[(32 * _1114) + ceil32(return_data.size) + 512], TIMEAddress
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
                _1066 = mem[480 len 4], 0
                require mem[480 len 4], 0 <= 4294967296
                require mem[480 len 4], 0 + 32 <= return_data.size
                require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                _1113 = mem[_1066 + 480]
                mem[ceil32(return_data.size) + 512 len floor32(mem[_1066 + 480])] = mem[_1066 + 512 len floor32(mem[_1066 + 480])]
                require 1 < mem[ceil32(return_data.size) + 480]
                mem[(32 * _1113) + ceil32(return_data.size) + 512] = mem[ceil32(return_data.size) + 544]
                return mem[(32 * _1113) + ceil32(return_data.size) + 512], TIMEAddress
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
            _1064 = mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
            require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
            require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
            require mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]
            _1112 = mem[_1064 + 480]
            mem[ceil32(return_data.size) + 512 len floor32(mem[_1064 + 480])] = mem[_1064 + 512 len floor32(mem[_1064 + 480])]
            require 1 < mem[ceil32(return_data.size) + 480]
            mem[(32 * _1112) + ceil32(return_data.size) + 512] = mem[ceil32(return_data.size) + 544]
            return mem[(32 * _1112) + ceil32(return_data.size) + 512], TIMEAddress
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
                _1076 = mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                require mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]
                _1118 = mem[_1076 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1076 + 448])] = mem[_1076 + 480 len floor32(mem[_1076 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1722 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1118) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1118) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1118) + ceil32(return_data.size) + 516] = _1722
                mem[(32 * _1118) + ceil32(return_data.size) + 580] = arg3
                mem[(32 * _1118) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1118) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1118) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1118) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _1722, Array(len=2, data=mem[(32 * _1118) + ceil32(return_data.size) + 676 len 64]), address(arg3), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1118) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1118) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2268 = mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1118) + ceil32(return_data.size) + mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1118) + ceil32(return_data.size) + mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1118) + ceil32(return_data.size) + mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _2290 = mem[(32 * _1118) + ceil32(return_data.size) + _2268 + 480]
                mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1118) + ceil32(return_data.size) + _2268 + 480])] = mem[(32 * _1118) + ceil32(return_data.size) + _2268 + 512 len floor32(mem[(32 * _1118) + ceil32(return_data.size) + _2268 + 480])]
                require 1 < mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 480]
                _2682 = mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
                if ext_call.return_data[0] * mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 613 len 31]
                mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 512] = 26
                mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 480]
                if ext_call.return_data[0] * _2682 / 10^6 > mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2682 / 10^6), TIMEAddress
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
            _1078 = mem[448 len 4], 0
            require mem[448 len 4], 0 <= 4294967296
            require mem[448 len 4], 0 + 32 <= return_data.size
            require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
            _1119 = mem[_1078 + 448]
            mem[ceil32(return_data.size) + 480 len floor32(mem[_1078 + 448])] = mem[_1078 + 480 len floor32(mem[_1078 + 448])]
            require 1 < mem[ceil32(return_data.size) + 448]
            _1723 = mem[ceil32(return_data.size) + 512]
            if block.timestamp + 60 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _1119) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1119) + ceil32(return_data.size) + 484] = arg2
            mem[(32 * _1119) + ceil32(return_data.size) + 516] = _1723
            mem[(32 * _1119) + ceil32(return_data.size) + 580] = arg3
            mem[(32 * _1119) + ceil32(return_data.size) + 612] = block.timestamp + 60
            mem[(32 * _1119) + ceil32(return_data.size) + 548] = 160
            mem[(32 * _1119) + ceil32(return_data.size) + 644] = 2
            mem[(32 * _1119) + ceil32(return_data.size) + 676 len 0] = None
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _1723, Array(len=2, data=mem[(32 * _1119) + ceil32(return_data.size) + 676 len 64]), address(arg3), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1119) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1119) + (2 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _2270 = mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _1119) + ceil32(return_data.size) + mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1119) + ceil32(return_data.size) + mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
            mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1119) + ceil32(return_data.size) + mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
            _2291 = mem[(32 * _1119) + ceil32(return_data.size) + _2270 + 480]
            mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1119) + ceil32(return_data.size) + _2270 + 480])] = mem[(32 * _1119) + ceil32(return_data.size) + _2270 + 512 len floor32(mem[(32 * _1119) + ceil32(return_data.size) + _2270 + 480])]
            require 1 < mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 480]
            _2683 = mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544]
            if not mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544]:
                mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 512] = 26
                mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 480]
                if 0 > mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
            if ext_call.return_data[0] * mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 613 len 31]
            mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 512] = 26
            mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 480]
            if ext_call.return_data[0] * _2683 / 10^6 > mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2683 / 10^6), TIMEAddress
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
            _1074 = mem[448 len 4], 0
            require mem[448 len 4], 0 <= 4294967296
            require mem[448 len 4], 0 + 32 <= return_data.size
            require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
            _1117 = mem[_1074 + 448]
            mem[ceil32(return_data.size) + 480 len floor32(mem[_1074 + 448])] = mem[_1074 + 480 len floor32(mem[_1074 + 448])]
            require 1 < mem[ceil32(return_data.size) + 448]
            _1721 = mem[ceil32(return_data.size) + 512]
            if block.timestamp + 60 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _1117) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1117) + ceil32(return_data.size) + 484] = arg2
            mem[(32 * _1117) + ceil32(return_data.size) + 516] = _1721
            mem[(32 * _1117) + ceil32(return_data.size) + 580] = arg3
            mem[(32 * _1117) + ceil32(return_data.size) + 612] = block.timestamp + 60
            mem[(32 * _1117) + ceil32(return_data.size) + 548] = 160
            mem[(32 * _1117) + ceil32(return_data.size) + 644] = 2
            mem[(32 * _1117) + ceil32(return_data.size) + 676 len 0] = None
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _1721, Array(len=2, data=mem[(32 * _1117) + ceil32(return_data.size) + 676 len 64]), address(arg3), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1117) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1117) + (2 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _2266 = mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _1117) + ceil32(return_data.size) + mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1117) + ceil32(return_data.size) + mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
            mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1117) + ceil32(return_data.size) + mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
            _2289 = mem[(32 * _1117) + ceil32(return_data.size) + _2266 + 480]
            mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1117) + ceil32(return_data.size) + _2266 + 480])] = mem[(32 * _1117) + ceil32(return_data.size) + _2266 + 512 len floor32(mem[(32 * _1117) + ceil32(return_data.size) + _2266 + 480])]
            require 1 < mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 480]
            _2681 = mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544]
            if not mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544]:
                mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 512] = 26
                mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 480]
                if 0 > mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
            if ext_call.return_data[0] * mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 613 len 31]
            mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 512] = 26
            mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 480]
            if ext_call.return_data[0] * _2681 / 10^6 > mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2681 / 10^6), TIMEAddress
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
        _1072 = mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
        require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
        require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
        require mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]
        _1116 = mem[_1072 + 448]
        mem[ceil32(return_data.size) + 480 len floor32(mem[_1072 + 448])] = mem[_1072 + 480 len floor32(mem[_1072 + 448])]
        require 1 < mem[ceil32(return_data.size) + 448]
        _1720 = mem[ceil32(return_data.size) + 512]
        if block.timestamp + 60 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[(32 * _1116) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _1116) + ceil32(return_data.size) + 484] = arg2
        mem[(32 * _1116) + ceil32(return_data.size) + 516] = _1720
        mem[(32 * _1116) + ceil32(return_data.size) + 580] = arg3
        mem[(32 * _1116) + ceil32(return_data.size) + 612] = block.timestamp + 60
        mem[(32 * _1116) + ceil32(return_data.size) + 548] = 160
        mem[(32 * _1116) + ceil32(return_data.size) + 644] = 2
        mem[(32 * _1116) + ceil32(return_data.size) + 676 len 0] = None
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _1720, Array(len=2, data=mem[(32 * _1116) + ceil32(return_data.size) + 676 len 64]), address(arg3), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1116) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1116) + (2 * ceil32(return_data.size)) + 480
        require return_data.size >= 32
        _2264 = mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _1116) + ceil32(return_data.size) + mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1116) + ceil32(return_data.size) + mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
        mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1116) + ceil32(return_data.size) + mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
        _2288 = mem[(32 * _1116) + ceil32(return_data.size) + _2264 + 480]
        mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1116) + ceil32(return_data.size) + _2264 + 480])] = mem[(32 * _1116) + ceil32(return_data.size) + _2264 + 512 len floor32(mem[(32 * _1116) + ceil32(return_data.size) + _2264 + 480])]
        require 1 < mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 480]
        _2680 = mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544]
        if not mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544]:
            mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 512] = 26
            mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 480]
            if 0 > mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
        if ext_call.return_data[0] * mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 613 len 31]
        mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 512] = 26
        mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
        require 1 < mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 480]
        if ext_call.return_data[0] * _2680 / 10^6 > mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544]:
            revert with 0, 'SafeMath: subtraction overflow'
        return mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2680 / 10^6), TIMEAddress
    if MIMAddress != arg1:
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
            require ext_code.size(TIMEAddress)
            staticcall TIMEAddress.0xd44545e7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_fc16a455:
                if ext_call.return_data[0] > 10^6:
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
                    _1086 = mem[480 len 4], 0
                    require mem[480 len 4], 0 <= 4294967296
                    require mem[480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1086 + 480])] = mem[_1086 + 512 len floor32(mem[_1086 + 480])]
                else:
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
                    _1084 = mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                    require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                    require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                    require mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1084 + 480])] = mem[_1084 + 512 len floor32(mem[_1084 + 480])]
            else:
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
                    _1082 = mem[480 len 4], 0
                    require mem[480 len 4], 0 <= 4294967296
                    require mem[480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1082 + 480])] = mem[_1082 + 512 len floor32(mem[_1082 + 480])]
                else:
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
                    _1080 = mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                    require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                    require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                    require mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1080 + 480])] = mem[_1080 + 512 len floor32(mem[_1080 + 480])]
            require 1 < mem[ceil32(return_data.size) + 480]
            require ext_code.size(sub_4a87cd67Address)
            call sub_4a87cd67Address.wrap(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 544]
    else:
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
                _1094 = mem[448 len 4], 0
                require mem[448 len 4], 0 <= 4294967296
                require mem[448 len 4], 0 + 32 <= return_data.size
                require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                _1127 = mem[_1094 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1094 + 448])] = mem[_1094 + 480 len floor32(mem[_1094 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1731 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1127) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1127) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1127) + ceil32(return_data.size) + 516] = _1731
                mem[(32 * _1127) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1127) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1127) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1127) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1127) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _1731, Array(len=2, data=mem[(32 * _1127) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1127) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1127) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2278 = mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1127) + ceil32(return_data.size) + mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1127) + ceil32(return_data.size) + mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1127) + ceil32(return_data.size) + mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _2295 = mem[(32 * _1127) + ceil32(return_data.size) + _2278 + 480]
                mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1127) + ceil32(return_data.size) + _2278 + 480])] = mem[(32 * _1127) + ceil32(return_data.size) + _2278 + 512 len floor32(mem[(32 * _1127) + ceil32(return_data.size) + _2278 + 480])]
                require 1 < mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 480]
                _2687 = mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _2687 / 10^6 > mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2687 / 10^6))
            else:
                if -ext_call.return_data[0] + 10^6 / 10000 * arg2 / arg2 != -ext_call.return_data[0] + 10^6 / 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                mem[384] = 26
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
                _1092 = mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                require mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]
                _1126 = mem[_1092 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1092 + 448])] = mem[_1092 + 480 len floor32(mem[_1092 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1730 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1126) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1126) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1126) + ceil32(return_data.size) + 516] = _1730
                mem[(32 * _1126) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1126) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1126) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1126) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1126) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _1730, Array(len=2, data=mem[(32 * _1126) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1126) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1126) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2276 = mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1126) + ceil32(return_data.size) + mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1126) + ceil32(return_data.size) + mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1126) + ceil32(return_data.size) + mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _2294 = mem[(32 * _1126) + ceil32(return_data.size) + _2276 + 480]
                mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1126) + ceil32(return_data.size) + _2276 + 480])] = mem[(32 * _1126) + ceil32(return_data.size) + _2276 + 512 len floor32(mem[(32 * _1126) + ceil32(return_data.size) + _2276 + 480])]
                require 1 < mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 480]
                _2686 = mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _2686 / 10^6 > mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2686 / 10^6))
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
                _1090 = mem[448 len 4], 0
                require mem[448 len 4], 0 <= 4294967296
                require mem[448 len 4], 0 + 32 <= return_data.size
                require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                _1125 = mem[_1090 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1090 + 448])] = mem[_1090 + 480 len floor32(mem[_1090 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1729 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1125) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1125) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1125) + ceil32(return_data.size) + 516] = _1729
                mem[(32 * _1125) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1125) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1125) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1125) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1125) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _1729, Array(len=2, data=mem[(32 * _1125) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1125) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1125) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2274 = mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1125) + ceil32(return_data.size) + mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1125) + ceil32(return_data.size) + mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1125) + ceil32(return_data.size) + mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _2293 = mem[(32 * _1125) + ceil32(return_data.size) + _2274 + 480]
                mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1125) + ceil32(return_data.size) + _2274 + 480])] = mem[(32 * _1125) + ceil32(return_data.size) + _2274 + 512 len floor32(mem[(32 * _1125) + ceil32(return_data.size) + _2274 + 480])]
                require 1 < mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 480]
                _2685 = mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _2685 / 10^6 > mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2685 / 10^6))
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
                _1088 = mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32
                require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 <= 4294967296
                require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 32 <= return_data.size
                require mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg2 / 100) >> 32 + 448]
                _1124 = mem[_1088 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1088 + 448])] = mem[_1088 + 480 len floor32(mem[_1088 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1728 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1124) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1124) + ceil32(return_data.size) + 484] = arg2
                mem[(32 * _1124) + ceil32(return_data.size) + 516] = _1728
                mem[(32 * _1124) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1124) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1124) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1124) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1124) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _1728, Array(len=2, data=mem[(32 * _1124) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1124) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1124) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2272 = mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[(32 * _1124) + ceil32(return_data.size) + mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1124) + ceil32(return_data.size) + mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1124) + ceil32(return_data.size) + mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
                _2292 = mem[(32 * _1124) + ceil32(return_data.size) + _2272 + 480]
                mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1124) + ceil32(return_data.size) + _2272 + 480])] = mem[(32 * _1124) + ceil32(return_data.size) + _2272 + 512 len floor32(mem[(32 * _1124) + ceil32(return_data.size) + _2272 + 480])]
                require 1 < mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 480]
                _2684 = mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _2684 / 10^6 > mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2684 / 10^6))
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
    if not arg1:
        if MIMAddress != WAVAXAddress:
            if WAVAXAddress != WAVAXAddress:
                return 0, TIMEAddress
            require ext_code.size(WAVAXAddress)
            call WAVAXAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), this.address, msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(TIMEAddress)
            staticcall TIMEAddress.0xd44545e7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_fc16a455:
                if ext_call.return_data[0] > 10^6:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.value:
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
                    _1070 = mem[480 len 4], 0
                    require mem[480 len 4], 0 <= 4294967296
                    require mem[480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                    _1115 = mem[_1070 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1070 + 480])] = mem[_1070 + 512 len floor32(mem[_1070 + 480])]
                    require 1 < mem[ceil32(return_data.size) + 480]
                    mem[(32 * _1115) + ceil32(return_data.size) + 512] = mem[ceil32(return_data.size) + 544]
                    return mem[(32 * _1115) + ceil32(return_data.size) + 512], TIMEAddress
                if -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != -ext_call.return_data[0] + 10^6 / 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
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
                mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 480
                require return_data.size >= 32
                _1068 = mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                require mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]
                _1114 = mem[_1068 + 480]
                mem[ceil32(return_data.size) + 512 len floor32(mem[_1068 + 480])] = mem[_1068 + 512 len floor32(mem[_1068 + 480])]
                require 1 < mem[ceil32(return_data.size) + 480]
                mem[(32 * _1114) + ceil32(return_data.size) + 512] = mem[ceil32(return_data.size) + 544]
                return mem[(32 * _1114) + ceil32(return_data.size) + 512], TIMEAddress
            if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 10000 * sub_fc16a455 > 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.value:
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
                _1066 = mem[480 len 4], 0
                require mem[480 len 4], 0 <= 4294967296
                require mem[480 len 4], 0 + 32 <= return_data.size
                require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                _1113 = mem[_1066 + 480]
                mem[ceil32(return_data.size) + 512 len floor32(mem[_1066 + 480])] = mem[_1066 + 512 len floor32(mem[_1066 + 480])]
                require 1 < mem[ceil32(return_data.size) + 480]
                mem[(32 * _1113) + ceil32(return_data.size) + 512] = mem[ceil32(return_data.size) + 544]
                return mem[(32 * _1113) + ceil32(return_data.size) + 512], TIMEAddress
            if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
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
            mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 480
            require return_data.size >= 32
            _1064 = mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
            require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
            require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
            require mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]
            _1112 = mem[_1064 + 480]
            mem[ceil32(return_data.size) + 512 len floor32(mem[_1064 + 480])] = mem[_1064 + 512 len floor32(mem[_1064 + 480])]
            require 1 < mem[ceil32(return_data.size) + 480]
            mem[(32 * _1112) + ceil32(return_data.size) + 512] = mem[ceil32(return_data.size) + 544]
            return mem[(32 * _1112) + ceil32(return_data.size) + 512], TIMEAddress
        require ext_code.size(MIMAddress)
        call MIMAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), this.address, msg.value
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
            if msg.value:
                if -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != -ext_call.return_data[0] + 10^6 / 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
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
                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 448
                require return_data.size >= 32
                _1076 = mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                require mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]
                _1118 = mem[_1076 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1076 + 448])] = mem[_1076 + 480 len floor32(mem[_1076 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1722 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1118) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1118) + ceil32(return_data.size) + 484] = msg.value
                mem[(32 * _1118) + ceil32(return_data.size) + 516] = _1722
                mem[(32 * _1118) + ceil32(return_data.size) + 580] = msg.sender
                mem[(32 * _1118) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1118) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1118) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1118) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, _1722, Array(len=2, data=mem[(32 * _1118) + ceil32(return_data.size) + 676 len 64]), msg.sender, block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1118) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1118) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2268 = mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                require mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                require mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                require mem[(32 * _1118) + ceil32(return_data.size) + mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1118) + ceil32(return_data.size) + mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1118) + ceil32(return_data.size) + mem[(32 * _1118) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                _2290 = mem[(32 * _1118) + ceil32(return_data.size) + _2268 + 480]
                mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1118) + ceil32(return_data.size) + _2268 + 480])] = mem[(32 * _1118) + ceil32(return_data.size) + _2268 + 512 len floor32(mem[(32 * _1118) + ceil32(return_data.size) + _2268 + 480])]
                require 1 < mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 480]
                _2682 = mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
                if ext_call.return_data[0] * mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 613 len 31]
                mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 512] = 26
                mem[(32 * _2290) + (32 * _1118) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 480]
                if ext_call.return_data[0] * _2682 / 10^6 > mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1118) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2682 / 10^6), TIMEAddress
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
            _1078 = mem[448 len 4], 0
            require mem[448 len 4], 0 <= 4294967296
            require mem[448 len 4], 0 + 32 <= return_data.size
            require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
            _1119 = mem[_1078 + 448]
            mem[ceil32(return_data.size) + 480 len floor32(mem[_1078 + 448])] = mem[_1078 + 480 len floor32(mem[_1078 + 448])]
            require 1 < mem[ceil32(return_data.size) + 448]
            _1723 = mem[ceil32(return_data.size) + 512]
            if block.timestamp + 60 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _1119) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1119) + ceil32(return_data.size) + 484] = msg.value
            mem[(32 * _1119) + ceil32(return_data.size) + 516] = _1723
            mem[(32 * _1119) + ceil32(return_data.size) + 580] = msg.sender
            mem[(32 * _1119) + ceil32(return_data.size) + 612] = block.timestamp + 60
            mem[(32 * _1119) + ceil32(return_data.size) + 548] = 160
            mem[(32 * _1119) + ceil32(return_data.size) + 644] = 2
            mem[(32 * _1119) + ceil32(return_data.size) + 676 len 0] = None
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args msg.value, _1723, Array(len=2, data=mem[(32 * _1119) + ceil32(return_data.size) + 676 len 64]), msg.sender, block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1119) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1119) + (2 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _2270 = mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[(32 * _1119) + ceil32(return_data.size) + mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1119) + ceil32(return_data.size) + mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
            mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1119) + ceil32(return_data.size) + mem[(32 * _1119) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
            _2291 = mem[(32 * _1119) + ceil32(return_data.size) + _2270 + 480]
            mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1119) + ceil32(return_data.size) + _2270 + 480])] = mem[(32 * _1119) + ceil32(return_data.size) + _2270 + 512 len floor32(mem[(32 * _1119) + ceil32(return_data.size) + _2270 + 480])]
            require 1 < mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 480]
            _2683 = mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544]
            if not mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544]:
                mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 512] = 26
                mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 480]
                if 0 > mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
            if ext_call.return_data[0] * mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 613 len 31]
            mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 512] = 26
            mem[(32 * _2291) + (32 * _1119) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 480]
            if ext_call.return_data[0] * _2683 / 10^6 > mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1119) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2683 / 10^6), TIMEAddress
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
        if not msg.value:
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
            _1074 = mem[448 len 4], 0
            require mem[448 len 4], 0 <= 4294967296
            require mem[448 len 4], 0 + 32 <= return_data.size
            require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
            _1117 = mem[_1074 + 448]
            mem[ceil32(return_data.size) + 480 len floor32(mem[_1074 + 448])] = mem[_1074 + 480 len floor32(mem[_1074 + 448])]
            require 1 < mem[ceil32(return_data.size) + 448]
            _1721 = mem[ceil32(return_data.size) + 512]
            if block.timestamp + 60 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _1117) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1117) + ceil32(return_data.size) + 484] = msg.value
            mem[(32 * _1117) + ceil32(return_data.size) + 516] = _1721
            mem[(32 * _1117) + ceil32(return_data.size) + 580] = msg.sender
            mem[(32 * _1117) + ceil32(return_data.size) + 612] = block.timestamp + 60
            mem[(32 * _1117) + ceil32(return_data.size) + 548] = 160
            mem[(32 * _1117) + ceil32(return_data.size) + 644] = 2
            mem[(32 * _1117) + ceil32(return_data.size) + 676 len 0] = None
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args msg.value, _1721, Array(len=2, data=mem[(32 * _1117) + ceil32(return_data.size) + 676 len 64]), msg.sender, block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1117) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1117) + (2 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _2266 = mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[(32 * _1117) + ceil32(return_data.size) + mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1117) + ceil32(return_data.size) + mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
            mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1117) + ceil32(return_data.size) + mem[(32 * _1117) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
            _2289 = mem[(32 * _1117) + ceil32(return_data.size) + _2266 + 480]
            mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1117) + ceil32(return_data.size) + _2266 + 480])] = mem[(32 * _1117) + ceil32(return_data.size) + _2266 + 512 len floor32(mem[(32 * _1117) + ceil32(return_data.size) + _2266 + 480])]
            require 1 < mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 480]
            _2681 = mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544]
            if not mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544]:
                mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 512] = 26
                mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                require 1 < mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 480]
                if 0 > mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
            if ext_call.return_data[0] * mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 613 len 31]
            mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 512] = 26
            mem[(32 * _2289) + (32 * _1117) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 480]
            if ext_call.return_data[0] * _2681 / 10^6 > mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1117) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2681 / 10^6), TIMEAddress
        if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
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
        mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 448
        require return_data.size >= 32
        _1072 = mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
        require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
        require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
        require mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]
        _1116 = mem[_1072 + 448]
        mem[ceil32(return_data.size) + 480 len floor32(mem[_1072 + 448])] = mem[_1072 + 480 len floor32(mem[_1072 + 448])]
        require 1 < mem[ceil32(return_data.size) + 448]
        _1720 = mem[ceil32(return_data.size) + 512]
        if block.timestamp + 60 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[(32 * _1116) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _1116) + ceil32(return_data.size) + 484] = msg.value
        mem[(32 * _1116) + ceil32(return_data.size) + 516] = _1720
        mem[(32 * _1116) + ceil32(return_data.size) + 580] = msg.sender
        mem[(32 * _1116) + ceil32(return_data.size) + 612] = block.timestamp + 60
        mem[(32 * _1116) + ceil32(return_data.size) + 548] = 160
        mem[(32 * _1116) + ceil32(return_data.size) + 644] = 2
        mem[(32 * _1116) + ceil32(return_data.size) + 676 len 0] = None
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args msg.value, _1720, Array(len=2, data=mem[(32 * _1116) + ceil32(return_data.size) + 676 len 64]), msg.sender, block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1116) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1116) + (2 * ceil32(return_data.size)) + 480
        require return_data.size >= 32
        _2264 = mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
        require mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[(32 * _1116) + ceil32(return_data.size) + mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1116) + ceil32(return_data.size) + mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
        mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1116) + ceil32(return_data.size) + mem[(32 * _1116) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
        _2288 = mem[(32 * _1116) + ceil32(return_data.size) + _2264 + 480]
        mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1116) + ceil32(return_data.size) + _2264 + 480])] = mem[(32 * _1116) + ceil32(return_data.size) + _2264 + 512 len floor32(mem[(32 * _1116) + ceil32(return_data.size) + _2264 + 480])]
        require 1 < mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 480]
        _2680 = mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544]
        if not mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544]:
            mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 512] = 26
            mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
            require 1 < mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 480]
            if 0 > mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544], TIMEAddress
        if ext_call.return_data[0] * mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 613 len 31]
        mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 512] = 26
        mem[(32 * _2288) + (32 * _1116) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
        require 1 < mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 480]
        if ext_call.return_data[0] * _2680 / 10^6 > mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544]:
            revert with 0, 'SafeMath: subtraction overflow'
        return mem[(32 * _1116) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2680 / 10^6), TIMEAddress
    if MIMAddress != WAVAXAddress:
        if WAVAXAddress != WAVAXAddress:
            require ext_code.size(sub_4a87cd67Address)
            call sub_4a87cd67Address.wrap(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
        else:
            require ext_code.size(WAVAXAddress)
            call WAVAXAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), this.address, msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(TIMEAddress)
            staticcall TIMEAddress.0xd44545e7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_fc16a455:
                if ext_call.return_data[0] > 10^6:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.value:
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
                    _1086 = mem[480 len 4], 0
                    require mem[480 len 4], 0 <= 4294967296
                    require mem[480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1086 + 480])] = mem[_1086 + 512 len floor32(mem[_1086 + 480])]
                else:
                    if -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != -ext_call.return_data[0] + 10^6 / 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
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
                    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 480
                    require return_data.size >= 32
                    _1084 = mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                    require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                    require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                    require mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1084 + 480])] = mem[_1084 + 512 len floor32(mem[_1084 + 480])]
            else:
                if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 10000 * sub_fc16a455 > 10^6:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.value:
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
                    _1082 = mem[480 len 4], 0
                    require mem[480 len 4], 0 <= 4294967296
                    require mem[480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1082 + 480])] = mem[_1082 + 512 len floor32(mem[_1082 + 480])]
                else:
                    if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
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
                    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 480
                    require return_data.size >= 32
                    _1080 = mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                    require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                    require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                    require mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 480]
                    mem[ceil32(return_data.size) + 512 len floor32(mem[_1080 + 480])] = mem[_1080 + 512 len floor32(mem[_1080 + 480])]
            require 1 < mem[ceil32(return_data.size) + 480]
            require ext_code.size(sub_4a87cd67Address)
            call sub_4a87cd67Address.wrap(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 544]
    else:
        require ext_code.size(MIMAddress)
        call MIMAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), this.address, msg.value
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
            if not msg.value:
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
                _1094 = mem[448 len 4], 0
                require mem[448 len 4], 0 <= 4294967296
                require mem[448 len 4], 0 + 32 <= return_data.size
                require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                _1127 = mem[_1094 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1094 + 448])] = mem[_1094 + 480 len floor32(mem[_1094 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1731 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1127) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1127) + ceil32(return_data.size) + 484] = msg.value
                mem[(32 * _1127) + ceil32(return_data.size) + 516] = _1731
                mem[(32 * _1127) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1127) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1127) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1127) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1127) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, _1731, Array(len=2, data=mem[(32 * _1127) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1127) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1127) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2278 = mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                require mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                require mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                require mem[(32 * _1127) + ceil32(return_data.size) + mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1127) + ceil32(return_data.size) + mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1127) + ceil32(return_data.size) + mem[(32 * _1127) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                _2295 = mem[(32 * _1127) + ceil32(return_data.size) + _2278 + 480]
                mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1127) + ceil32(return_data.size) + _2278 + 480])] = mem[(32 * _1127) + ceil32(return_data.size) + _2278 + 512 len floor32(mem[(32 * _1127) + ceil32(return_data.size) + _2278 + 480])]
                require 1 < mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 480]
                _2687 = mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2295) + (32 * _1127) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _2687 / 10^6 > mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1127) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2687 / 10^6))
            else:
                if -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != -ext_call.return_data[0] + 10^6 / 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                mem[384] = 26
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
                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 448
                require return_data.size >= 32
                _1092 = mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                require mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                require mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]
                _1126 = mem[_1092 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1092 + 448])] = mem[_1092 + 480 len floor32(mem[_1092 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1730 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1126) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1126) + ceil32(return_data.size) + 484] = msg.value
                mem[(32 * _1126) + ceil32(return_data.size) + 516] = _1730
                mem[(32 * _1126) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1126) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1126) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1126) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1126) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, _1730, Array(len=2, data=mem[(32 * _1126) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1126) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1126) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2276 = mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                require mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                require mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                require mem[(32 * _1126) + ceil32(return_data.size) + mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1126) + ceil32(return_data.size) + mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1126) + ceil32(return_data.size) + mem[(32 * _1126) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                _2294 = mem[(32 * _1126) + ceil32(return_data.size) + _2276 + 480]
                mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1126) + ceil32(return_data.size) + _2276 + 480])] = mem[(32 * _1126) + ceil32(return_data.size) + _2276 + 512 len floor32(mem[(32 * _1126) + ceil32(return_data.size) + _2276 + 480])]
                require 1 < mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 480]
                _2686 = mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2294) + (32 * _1126) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _2686 / 10^6 > mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1126) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2686 / 10^6))
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
            if not msg.value:
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
                _1090 = mem[448 len 4], 0
                require mem[448 len 4], 0 <= 4294967296
                require mem[448 len 4], 0 + 32 <= return_data.size
                require mem[mem[448 len 4], 0 + 448] <= 4294967296 and mem[448 len 4], 0 + (32 * mem[mem[448 len 4], 0 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
                _1125 = mem[_1090 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1090 + 448])] = mem[_1090 + 480 len floor32(mem[_1090 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1729 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1125) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1125) + ceil32(return_data.size) + 484] = msg.value
                mem[(32 * _1125) + ceil32(return_data.size) + 516] = _1729
                mem[(32 * _1125) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1125) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1125) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1125) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1125) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, _1729, Array(len=2, data=mem[(32 * _1125) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1125) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1125) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2274 = mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                require mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                require mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                require mem[(32 * _1125) + ceil32(return_data.size) + mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1125) + ceil32(return_data.size) + mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1125) + ceil32(return_data.size) + mem[(32 * _1125) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                _2293 = mem[(32 * _1125) + ceil32(return_data.size) + _2274 + 480]
                mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1125) + ceil32(return_data.size) + _2274 + 480])] = mem[(32 * _1125) + ceil32(return_data.size) + _2274 + 512 len floor32(mem[(32 * _1125) + ceil32(return_data.size) + _2274 + 480])]
                require 1 < mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 480]
                _2685 = mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2293) + (32 * _1125) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _2685 / 10^6 > mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1125) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2685 / 10^6))
            else:
                if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / msg.value != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
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
                mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 448
                require return_data.size >= 32
                _1088 = mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32
                require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 <= 4294967296
                require mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 32 <= return_data.size
                require mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * msg.value / 100) >> 32 + 448]
                _1124 = mem[_1088 + 448]
                mem[ceil32(return_data.size) + 480 len floor32(mem[_1088 + 448])] = mem[_1088 + 480 len floor32(mem[_1088 + 448])]
                require 1 < mem[ceil32(return_data.size) + 448]
                _1728 = mem[ceil32(return_data.size) + 512]
                if block.timestamp + 60 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1124) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1124) + ceil32(return_data.size) + 484] = msg.value
                mem[(32 * _1124) + ceil32(return_data.size) + 516] = _1728
                mem[(32 * _1124) + ceil32(return_data.size) + 580] = this.address
                mem[(32 * _1124) + ceil32(return_data.size) + 612] = block.timestamp + 60
                mem[(32 * _1124) + ceil32(return_data.size) + 548] = 160
                mem[(32 * _1124) + ceil32(return_data.size) + 644] = 2
                mem[(32 * _1124) + ceil32(return_data.size) + 676 len 0] = None
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args msg.value, _1728, Array(len=2, data=mem[(32 * _1124) + ceil32(return_data.size) + 676 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1124) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1124) + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                _2272 = mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32
                require mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                require mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                require mem[(32 * _1124) + ceil32(return_data.size) + mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1124) + ceil32(return_data.size) + mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
                mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 480] = mem[(32 * _1124) + ceil32(return_data.size) + mem[(32 * _1124) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
                _2292 = mem[(32 * _1124) + ceil32(return_data.size) + _2272 + 480]
                mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _1124) + ceil32(return_data.size) + _2272 + 480])] = mem[(32 * _1124) + ceil32(return_data.size) + _2272 + 512 len floor32(mem[(32 * _1124) + ceil32(return_data.size) + _2272 + 480])]
                require 1 < mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 480]
                _2684 = mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]
                if not mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]:
                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 480]
                    if 0 > mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]
                else:
                    if ext_call.return_data[0] * mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544] / mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 613 len 31]
                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 512] = 26
                    mem[(32 * _2292) + (32 * _1124) + (2 * ceil32(return_data.size)) + 544] = 'SafeMath: division by zero'
                    require 1 < mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 480]
                    if ext_call.return_data[0] * _2684 / 10^6 > mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_4a87cd67Address)
                    call sub_4a87cd67Address.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args (mem[(32 * _1124) + (2 * ceil32(return_data.size)) + 544] - (ext_call.return_data[0] * _2684 / 10^6))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WMEMOAddress)
    call WMEMOAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], WMEMOAddress
}



}
