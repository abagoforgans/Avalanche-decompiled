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

function WMEMO() payable {
    return WMEMOAddress
}

function enabled() payable {
    return bool(uint8(stor0.field_0))
}

function ROUTER() payable {
    return ROUTERAddress
}

function sub_4a87cd67(?) payable {
    return sub_4a87cd67Address
}

function WAVAX() payable {
    return WAVAXAddress
}

function TIME() payable {
    return TIMEAddress
}

function MEMO() payable {
    return MEMOAddress
}

function MIM() payable {
    return MIMAddress
}

function sub_fc16a455(?) payable {
    return sub_fc16a455
}

function _fallback() payable {
    revert
}

function sub_2d24c0d5(?) payable {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'only owner'
    sub_fc16a455 = arg1
}

function enable(bool arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'only owner'
    uint8(stor0.field_0) = uint8(arg1)
}

function changeRouterAddress(address arg1) payable {
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

function sub_b28705a7(?) payable {
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

function sub_d84a3026(?) payable {
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

function sub_7f1fa609(?) payable {
    require calldata.size - 4 >= 64
    if MIMAddress == arg1:
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
        mem[196] = arg2
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _132 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        _137 = mem[_132 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_132 + 192])] = mem[_132 + 224 len floor32(mem[_132 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _221 = mem[ceil32(return_data.size) + 256]
        if not mem[ceil32(return_data.size) + 256]:
            mem[(32 * _137) + ceil32(return_data.size) + 224] = 26
            mem[(32 * _137) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
            require 1 < mem[ceil32(return_data.size) + 192]
            if 0 > mem[ceil32(return_data.size) + 256]:
                revert with 0, 'SafeMath: subtraction overflow'
            return mem[ceil32(return_data.size) + 256], ext_call.return_data[0]
        if ext_call.return_data[0] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _137) + ceil32(return_data.size) + 325 len 31]
        mem[(32 * _137) + ceil32(return_data.size) + 224] = 26
        mem[(32 * _137) + ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
        require 1 < mem[ceil32(return_data.size) + 192]
        if ext_call.return_data[0] * _221 / 10^6 > mem[ceil32(return_data.size) + 256]:
            revert with 0, 'SafeMath: subtraction overflow'
        return mem[ceil32(return_data.size) + 256] - (ext_call.return_data[0] * _221 / 10^6), ext_call.return_data[0]
    if WAVAXAddress != arg1:
        return 0
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
    mem[228] = arg2
    mem[260] = 64
    mem[292] = 3
    mem[324 len 0] = None
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _130 = mem[224 len 4], Mask(224, 32, arg2) >> 32
    require mem[224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    _136 = mem[_130 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_130 + 224])] = mem[_130 + 256 len floor32(mem[_130 + 224])]
    require 2 < mem[ceil32(return_data.size) + 224]
    _220 = mem[ceil32(return_data.size) + 320]
    if not mem[ceil32(return_data.size) + 320]:
        mem[(32 * _136) + ceil32(return_data.size) + 256] = 26
        mem[(32 * _136) + ceil32(return_data.size) + 288] = 'SafeMath: division by zero'
        require 2 < mem[ceil32(return_data.size) + 224]
        if 0 > mem[ceil32(return_data.size) + 320]:
            revert with 0, 'SafeMath: subtraction overflow'
        return mem[ceil32(return_data.size) + 320], ext_call.return_data[0]
    if ext_call.return_data[0] * mem[ceil32(return_data.size) + 320] / mem[ceil32(return_data.size) + 320] != ext_call.return_data[0]:
        revert with 0, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _136) + ceil32(return_data.size) + 357 len 31]
    mem[(32 * _136) + ceil32(return_data.size) + 256] = 26
    mem[(32 * _136) + ceil32(return_data.size) + 288] = 'SafeMath: division by zero'
    require 2 < mem[ceil32(return_data.size) + 224]
    if ext_call.return_data[0] * _220 / 10^6 > mem[ceil32(return_data.size) + 320]:
        revert with 0, 'SafeMath: subtraction overflow'
    return mem[ceil32(return_data.size) + 320] - (ext_call.return_data[0] * _220 / 10^6), ext_call.return_data[0]
}

function trade(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_0):
        revert with 0, 'ZAP disabled now'
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
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
        if not arg1:
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
            require mem[480 len 4], 0 <= 4294967296
            require mem[480 len 4], 0 + 32 <= return_data.size
            require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
        else:
            if -ext_call.return_data[0] + 10^6 / 10000 * arg1 / arg1 != -ext_call.return_data[0] + 10^6 / 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            mem[448] = 'SafeMath: division by zero'
            mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[484] = -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100
            mem[516] = 64
            mem[548] = 3
            mem[580 len 0] = None
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100, Array(len=3, data=mem[580 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 480
            require return_data.size >= 32
            require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 <= 4294967296
            require mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + 32 <= return_data.size
            require mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + 480]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + 480]
    else:
        if 10000 * sub_fc16a455 / sub_fc16a455 != 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if 10000 * sub_fc16a455 > 10^6:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > (-10000 * sub_fc16a455) + 10^6:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
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
            require mem[480 len 4], 0 <= 4294967296
            require mem[480 len 4], 0 + 32 <= return_data.size
            require mem[mem[480 len 4], 0 + 480] <= 4294967296 and mem[480 len 4], 0 + (32 * mem[mem[480 len 4], 0 + 480]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], 0 + 480]
        else:
            if (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg1 / arg1 != (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            mem[448] = 'SafeMath: division by zero'
            mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[484] = (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100
            mem[516] = 64
            mem[548] = 3
            mem[580 len 0] = None
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100, Array(len=3, data=mem[580 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 480
            require return_data.size >= 32
            require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 <= 4294967296
            require mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + 32 <= return_data.size
            require mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + 480]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, (-10000 * sub_fc16a455) + -ext_call.return_data[0] + 10^6 / 10000 * arg1 / 100) >> 32 + 480]
    require 1 < mem[ceil32(return_data.size) + 480]
}



}
