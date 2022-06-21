contract main {




// =====================  Runtime code  =====================


const MAX = -1


uint8 stor0;
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
    return bool(stor0)
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

function changeRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    ROUTERAddress = arg1
}

function trade(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 'wrap disabled now'
}

function sub_30cce354(?) payable {
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



}
