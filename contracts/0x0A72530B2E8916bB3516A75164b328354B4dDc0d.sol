contract main {




// =====================  Runtime code  =====================


#
#  - sub_30e33018(?)
#
address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_2de54a75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    return arg1, 
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[64],
           ext_call.return_data[32] << 128,
           ext_call.return_data[64] << 128,
           ext_call.return_data[0] << 240,
           uint16(ext_call.return_data[32])
}

function sub_c0a6e9d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x183ce75d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_code.size(stor0)
    staticcall stor0.0xf769a0c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    if ext_call.return_data[160] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 224,
               ext_call.return_data[64] << 224,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[0] << 240,
               ext_call.return_data[32] << 240,
               4
    if ext_call.return_data[224] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 224,
               ext_call.return_data[64] << 224,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[0] << 240,
               ext_call.return_data[32] << 240,
               3
    if ext_call.return_data[128] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 224,
               ext_call.return_data[64] << 224,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[0] << 240,
               ext_call.return_data[32] << 240,
               2
    if ext_call.return_data[192] <= 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 224,
               ext_call.return_data[64] << 224,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[0] << 240,
               ext_call.return_data[32] << 240,
               0
    return ext_call.return_data[0], 
           ext_call.return_data[32] << 224,
           ext_call.return_data[64] << 224,
           ext_call.return_data[96] << 224,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[0] << 240,
           ext_call.return_data[32] << 240,
           1
}

function getGameInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0xf0344e36 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(stor0)
    staticcall stor0.0x183ce75d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_code.size(stor0)
    staticcall stor0.0xf769a0c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    if ext_call.return_data[160] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 128,
               ext_call.return_data[64] << 128,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128] << 224,
               ext_call.return_data[160] << 224,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               4
    if ext_call.return_data[224] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 128,
               ext_call.return_data[64] << 128,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128] << 224,
               ext_call.return_data[160] << 224,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               3
    if ext_call.return_data[128] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 128,
               ext_call.return_data[64] << 128,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128] << 224,
               ext_call.return_data[160] << 224,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               2
    if ext_call.return_data[192] <= 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 128,
               ext_call.return_data[64] << 128,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128] << 224,
               ext_call.return_data[160] << 224,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               0
    return ext_call.return_data[0], 
           ext_call.return_data[32] << 128,
           ext_call.return_data[64] << 128,
           ext_call.return_data[96] << 224,
           ext_call.return_data[128] << 224,
           ext_call.return_data[160] << 224,
           ext_call.return_data[0],
           0,
           0,
           0,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           0,
           0,
           1
}

function sub_969215ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x969215ba with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_code.size(stor0)
    staticcall stor0.0xf0344e36 with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(stor0)
    staticcall stor0.0x183ce75d with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_code.size(stor0)
    staticcall stor0.0xf769a0c with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    if ext_call.return_data[160] > 0:
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               4
    if ext_call.return_data[224] > 0:
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               3
    if ext_call.return_data[128] > 0:
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               2
    if ext_call.return_data[192] <= 0:
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               0
    return arg1, 
           address(ext_call.return_data[0]),
           ext_call.return_data[32],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           ext_call.return_data[64],
           0,
           0,
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           ext_call.return_data[64],
           0,
           0,
           0,
           0,
           ext_call.return_data[96],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           ext_call.return_data[64],
           0,
           0,
           0,
           0,
           ext_call.return_data[128] << 240,
           ext_call.return_data[160] << 240,
           ext_call.return_data[192],
           ext_call.return_data[0],
           0,
           0,
           0,
           0,
           0,
           ext_call.return_data[0],
           0,
           0,
           0,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           0,
           0,
           1
}

function sub_a9e3fdb8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0xf0344e36 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(stor0)
    staticcall stor0.0x969215ba with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_code.size(stor0)
    staticcall stor0.0xf0344e36 with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(stor0)
    staticcall stor0.0x183ce75d with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_code.size(stor0)
    staticcall stor0.0xf769a0c with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    if ext_call.return_data[160] > 0:
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               4
    if ext_call.return_data[224] > 0:
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               3
    if ext_call.return_data[128] > 0:
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               2
    if ext_call.return_data[192] <= 0:
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               ext_call.return_data[64],
               0,
               0,
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               0
    return ext_call.return_data[0], 
           address(ext_call.return_data[0]),
           ext_call.return_data[32],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           ext_call.return_data[64],
           0,
           0,
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           ext_call.return_data[64],
           0,
           0,
           0,
           0,
           ext_call.return_data[96],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           ext_call.return_data[64],
           0,
           0,
           0,
           0,
           ext_call.return_data[128] << 240,
           ext_call.return_data[160] << 240,
           ext_call.return_data[192],
           ext_call.return_data[0],
           0,
           0,
           0,
           0,
           0,
           ext_call.return_data[0],
           0,
           0,
           0,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           0,
           0,
           1
}

function sub_0b97dfd0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        if arg2 < arg1:
            revert with 'NH{q', 17
        if var192002 >= arg2 - arg1:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            idx = 0
            s = 128
            t = (32 * arg2 - arg1) + 192
            while idx < mem[96]:
                _701 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_701 + 44 len 20]
                mem[t + 64] = mem[_701 + 64]
                mem[t + 96] = mem[_701 + 96]
                mem[t + 128] = mem[_701 + 144 len 16]
                mem[t + 160] = mem[_701 + 176 len 16]
                mem[t + 192] = mem[_701 + 222 len 2]
                mem[t + 224] = mem[_701 + 254 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len (290 * arg2) + (-290 * arg1) + -mem[64] + 192
        if var204003 > -arg1 - 1:
            revert with 'NH{q', 17
        mem[64] = (32 * arg2 - arg1) + 384
        mem[(32 * arg2 - arg1) + 128] = 0
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[(32 * arg2 - arg1) + 192] = 0
        mem[(32 * arg2 - arg1) + 224] = 0
        mem[(32 * arg2 - arg1) + 256] = 0
        mem[(32 * arg2 - arg1) + 288] = 0
        mem[(32 * arg2 - arg1) + 320] = 0
        mem[(32 * arg2 - arg1) + 352] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args (var206002 + arg1)
        mem[(32 * arg2 - arg1) + 384 len 64] = ext_call.return_data[0 len 64]
        s = var206002 + arg1
        t = var206006
        while ext_call.success:
            _1270 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1273 = mem[_1270]
            require mem[_1270] == mem[_1270 + 30 len 2]
            _1275 = mem[_1270 + 32]
            require mem[_1270 + 32] == mem[_1270 + 62 len 2]
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1280 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1283 = mem[_1280]
            require mem[_1280] == mem[_1280]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_1288] == mem[_1288]
            require mem[_1288 + 32] == mem[_1288 + 32]
            _1295 = mem[_1288 + 64]
            require mem[_1288 + 64] == mem[_1288 + 64]
            require mem[_1288 + 96] == mem[_1288 + 120 len 8]
            require mem[_1288 + 128] == mem[_1288 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1304 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1307 = mem[_1304]
            require mem[_1304] == mem[_1304 + 12 len 20]
            _1309 = mem[_1304 + 32]
            require mem[_1304 + 32] == mem[_1304 + 48 len 16]
            _1311 = mem[_1304 + 64]
            require mem[_1304 + 64] == mem[_1304 + 80 len 16]
            _1313 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1313] = s
            mem[_1313 + 32] = address(_1307)
            mem[_1313 + 64] = _1283
            mem[_1313 + 96] = _1295
            mem[_1313 + 128] = uint128(_1309)
            mem[_1313 + 160] = uint128(_1311)
            mem[_1313 + 192] = uint16(_1273)
            mem[_1313 + 224] = uint16(_1275)
            if t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * t) + 128] = _1313
            if t == -1:
                revert with 'NH{q', 17
            if arg2 < arg1:
                revert with 'NH{q', 17
            if t + 1 >= arg2 - arg1:
                _1317 = mem[64]
                mem[mem[64]] = 32
                _1319 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _1319:
                    _1341 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_1341 + 44 len 20]
                    mem[u + 64] = mem[_1341 + 64]
                    mem[u + 96] = mem[_1341 + 96]
                    mem[u + 128] = mem[_1341 + 144 len 16]
                    mem[u + 160] = mem[_1341 + 176 len 16]
                    mem[u + 192] = mem[_1341 + 222 len 2]
                    mem[u + 224] = mem[_1341 + 254 len 2]
                    mem[64] = mem[64] + 256
                    mem[(32 * arg2 - arg1) + 128] = 0
                    mem[(32 * arg2 - arg1) + 160] = 0
                    mem[(32 * arg2 - arg1) + 192] = 0
                    mem[(32 * arg2 - arg1) + 224] = 0
                    mem[(32 * arg2 - arg1) + 256] = 0
                    mem[(32 * arg2 - arg1) + 288] = 0
                    mem[(32 * arg2 - arg1) + 320] = 0
                    mem[(32 * arg2 - arg1) + 352] = 0
                    mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2 - arg1) + 388] = s
                    require ext_code.size(stor0)
                    staticcall stor0.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * arg2 - arg1) + -mem[64] + 416]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                return memory
                  from mem[64]
                   len _1317 + (256 * _1319) + -mem[64] + 64
            if t + 1 > -arg1 - 1:
                revert with 'NH{q', 17
            mem[64] = mem[64] + 256
            mem[(32 * arg2 - arg1) + 128] = 0
            mem[(32 * arg2 - arg1) + 160] = 0
            mem[(32 * arg2 - arg1) + 192] = 0
            mem[(32 * arg2 - arg1) + 224] = 0
            mem[(32 * arg2 - arg1) + 256] = 0
            mem[(32 * arg2 - arg1) + 288] = 0
            mem[(32 * arg2 - arg1) + 320] = 0
            mem[(32 * arg2 - arg1) + 352] = 0
            mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2 - arg1) + 388] = t + arg1 + 2
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * arg2 - arg1) + -mem[64] + 416]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            s = t + arg1 + 1
            t = t + 1
            continue 
    else:
        mem[64] = (32 * arg2 - arg1) + 384
        mem[(32 * arg2 - arg1) + 128] = 0
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[(32 * arg2 - arg1) + 192] = 0
        mem[(32 * arg2 - arg1) + 224] = 0
        mem[(32 * arg2 - arg1) + 256] = 0
        mem[(32 * arg2 - arg1) + 288] = 0
        mem[(32 * arg2 - arg1) + 320] = 0
        mem[(32 * arg2 - arg1) + 352] = 0
        mem[var32001] = (32 * arg2 - arg1) + 128
        s = var32001
        idx = var32002
        while idx - 1:
            mem[64] = mem[64] + 256
            mem[(32 * arg2 - arg1) + 128] = 0
            mem[(32 * arg2 - arg1) + 160] = 0
            mem[(32 * arg2 - arg1) + 192] = 0
            mem[(32 * arg2 - arg1) + 224] = 0
            mem[(32 * arg2 - arg1) + 256] = 0
            mem[(32 * arg2 - arg1) + 288] = 0
            mem[(32 * arg2 - arg1) + 320] = 0
            mem[(32 * arg2 - arg1) + 352] = 0
            mem[s + 32] = (32 * arg2 - arg1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if arg2 < arg1:
            revert with 'NH{q', 17
        if var199002 >= arg2 - arg1:
            _787 = mem[64]
            mem[mem[64]] = 32
            _788 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _788:
                _875 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_875 + 44 len 20]
                mem[t + 64] = mem[_875 + 64]
                mem[t + 96] = mem[_875 + 96]
                mem[t + 128] = mem[_875 + 144 len 16]
                mem[t + 160] = mem[_875 + 176 len 16]
                mem[t + 192] = mem[_875 + 222 len 2]
                mem[t + 224] = mem[_875 + 254 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len _787 + (256 * _788) + -mem[64] + 64
        if var211003 > -arg1 - 1:
            revert with 'NH{q', 17
        _1389 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1389] = 0
        mem[_1389 + 32] = 0
        mem[_1389 + 64] = 0
        mem[_1389 + 96] = 0
        mem[_1389 + 128] = 0
        mem[_1389 + 160] = 0
        mem[_1389 + 192] = 0
        mem[_1389 + 224] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args (var213002 + arg1)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        s = var213002 + arg1
        t = var213006
        while ext_call.success:
            _1392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1393 = mem[_1392]
            require mem[_1392] == mem[_1392 + 30 len 2]
            _1394 = mem[_1392 + 32]
            require mem[_1392 + 32] == mem[_1392 + 62 len 2]
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1398 = mem[_1397]
            require mem[_1397] == mem[_1397]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1401 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_1401] == mem[_1401]
            require mem[_1401 + 32] == mem[_1401 + 32]
            _1404 = mem[_1401 + 64]
            require mem[_1401 + 64] == mem[_1401 + 64]
            require mem[_1401 + 96] == mem[_1401 + 120 len 8]
            require mem[_1401 + 128] == mem[_1401 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1409 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1410 = mem[_1409]
            require mem[_1409] == mem[_1409 + 12 len 20]
            _1411 = mem[_1409 + 32]
            require mem[_1409 + 32] == mem[_1409 + 48 len 16]
            _1412 = mem[_1409 + 64]
            require mem[_1409 + 64] == mem[_1409 + 80 len 16]
            _1413 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1413] = s
            mem[_1413 + 32] = address(_1410)
            mem[_1413 + 64] = _1398
            mem[_1413 + 96] = _1404
            mem[_1413 + 128] = uint128(_1411)
            mem[_1413 + 160] = uint128(_1412)
            mem[_1413 + 192] = uint16(_1393)
            mem[_1413 + 224] = uint16(_1394)
            if t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * t) + 128] = _1413
            if t == -1:
                revert with 'NH{q', 17
            if arg2 < arg1:
                revert with 'NH{q', 17
            if t + 1 >= arg2 - arg1:
                _1415 = mem[64]
                mem[mem[64]] = 32
                _1416 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _1416:
                    _1427 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_1427 + 44 len 20]
                    mem[u + 64] = mem[_1427 + 64]
                    mem[u + 96] = mem[_1427 + 96]
                    mem[u + 128] = mem[_1427 + 144 len 16]
                    mem[u + 160] = mem[_1427 + 176 len 16]
                    mem[u + 192] = mem[_1427 + 222 len 2]
                    mem[u + 224] = mem[_1427 + 254 len 2]
                    _1389 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1389] = 0
                    mem[_1389 + 32] = 0
                    mem[_1389 + 64] = 0
                    mem[_1389 + 96] = 0
                    mem[_1389 + 128] = 0
                    mem[_1389 + 160] = 0
                    mem[_1389 + 192] = 0
                    mem[_1389 + 224] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                return memory
                  from mem[64]
                   len _1415 + (256 * _1416) + -mem[64] + 64
            if t + 1 > -arg1 - 1:
                revert with 'NH{q', 17
            _1389 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1389] = 0
            mem[_1389 + 32] = 0
            mem[_1389 + 64] = 0
            mem[_1389 + 96] = 0
            mem[_1389 + 128] = 0
            mem[_1389 + 160] = 0
            mem[_1389 + 192] = 0
            mem[_1389 + 224] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args (t + arg1 + 2)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            s = t + arg1 + 1
            t = t + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_321dfd74(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = 0
        while idx < arg2 - arg1:
            if idx > -arg1 - 1:
                revert with 'NH{q', 17
            _126 = mem[64]
            mem[64] = mem[64] + 224
            mem[_126] = 0
            mem[_126 + 32] = 0
            mem[_126 + 64] = 0
            mem[_126 + 96] = 0
            mem[_126 + 128] = 0
            mem[_126 + 160] = 0
            _127 = mem[64]
            mem[64] = mem[64] + 352
            mem[_127] = 0
            mem[_127 + 32] = 0
            mem[_127 + 64] = 0
            mem[_127 + 96] = 0
            mem[_127 + 128] = 0
            mem[_127 + 160] = 0
            mem[_127 + 192] = 0
            mem[_127 + 224] = 0
            mem[_127 + 256] = 0
            mem[_127 + 288] = 0
            mem[_127 + 320] = 0
            mem[_126 + 192] = _127
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _143 = mem[_139]
            require mem[_139] == mem[_139]
            _150 = mem[_139 + 32]
            require mem[_139 + 32] == mem[_139 + 48 len 16]
            _156 = mem[_139 + 64]
            require mem[_139 + 64] == mem[_139 + 80 len 16]
            _161 = mem[_139 + 96]
            require mem[_139 + 96] == mem[_139 + 124 len 4]
            _168 = mem[_139 + 128]
            require mem[_139 + 128] == mem[_139 + 156 len 4]
            _174 = mem[_139 + 160]
            require mem[_139 + 160] == mem[_139 + 188 len 4]
            _181 = mem[64]
            mem[64] = mem[64] + 352
            mem[_181] = 0
            mem[_181 + 32] = 0
            mem[_181 + 64] = 0
            mem[_181 + 96] = 0
            mem[_181 + 128] = 0
            mem[_181 + 160] = 0
            mem[_181 + 192] = 0
            mem[_181 + 224] = 0
            mem[_181 + 256] = 0
            mem[_181 + 288] = 0
            mem[_181 + 320] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _190 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _193 = mem[_190]
            require mem[_190] == mem[_190]
            _198 = mem[_190 + 32]
            require mem[_190 + 32] == mem[_190 + 60 len 4]
            _200 = mem[_190 + 64]
            require mem[_190 + 64] == mem[_190 + 92 len 4]
            _202 = mem[_190 + 96]
            require mem[_190 + 96] == mem[_190 + 124 len 4]
            _204 = mem[_190 + 128]
            require mem[_190 + 128] == mem[_190 + 128]
            _206 = mem[_190 + 160]
            require mem[_190 + 160] == mem[_190 + 160]
            _208 = mem[_190 + 192]
            require mem[_190 + 192] == mem[_190 + 192]
            _210 = mem[_190 + 224]
            require mem[_190 + 224] == mem[_190 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _217 = mem[_216]
            require mem[_216] == mem[_216 + 30 len 2]
            _220 = mem[_216 + 32]
            require mem[_216 + 32] == mem[_216 + 62 len 2]
            if _206 > 0:
                _223 = mem[64]
                mem[64] = mem[64] + 352
                mem[_223] = _193
                mem[_223 + 32] = uint32(_198)
                mem[_223 + 64] = uint32(_200)
                mem[_223 + 96] = uint32(_202)
                mem[_223 + 128] = _204
                mem[_223 + 160] = _206
                mem[_223 + 192] = _208
                mem[_223 + 224] = _210
                mem[_223 + 256] = uint16(_217)
                mem[_223 + 288] = uint16(_220)
                mem[_223 + 320] = 4
                _224 = mem[64]
                mem[64] = mem[64] + 224
                mem[_224] = _143
                mem[_224 + 32] = uint128(_150)
                mem[_224 + 64] = uint128(_156)
                mem[_224 + 96] = uint32(_161)
                mem[_224 + 128] = uint32(_168)
                mem[_224 + 160] = uint32(_174)
                mem[_224 + 192] = _223
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _224
            else:
                if _210 > 0:
                    _225 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_225] = _193
                    mem[_225 + 32] = uint32(_198)
                    mem[_225 + 64] = uint32(_200)
                    mem[_225 + 96] = uint32(_202)
                    mem[_225 + 128] = _204
                    mem[_225 + 160] = _206
                    mem[_225 + 192] = _208
                    mem[_225 + 224] = _210
                    mem[_225 + 256] = uint16(_217)
                    mem[_225 + 288] = uint16(_220)
                    mem[_225 + 320] = 3
                    _227 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_227] = _143
                    mem[_227 + 32] = uint128(_150)
                    mem[_227 + 64] = uint128(_156)
                    mem[_227 + 96] = uint32(_161)
                    mem[_227 + 128] = uint32(_168)
                    mem[_227 + 160] = uint32(_174)
                    mem[_227 + 192] = _225
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _227
                else:
                    if _204 > 0:
                        _228 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_228] = _193
                        mem[_228 + 32] = uint32(_198)
                        mem[_228 + 64] = uint32(_200)
                        mem[_228 + 96] = uint32(_202)
                        mem[_228 + 128] = _204
                        mem[_228 + 160] = _206
                        mem[_228 + 192] = _208
                        mem[_228 + 224] = _210
                        mem[_228 + 256] = uint16(_217)
                        mem[_228 + 288] = uint16(_220)
                        mem[_228 + 320] = 2
                        _231 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_231] = _143
                        mem[_231 + 32] = uint128(_150)
                        mem[_231 + 64] = uint128(_156)
                        mem[_231 + 96] = uint32(_161)
                        mem[_231 + 128] = uint32(_168)
                        mem[_231 + 160] = uint32(_174)
                        mem[_231 + 192] = _228
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _231
                    else:
                        if _208 <= 0:
                            _230 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_230] = _193
                            mem[_230 + 32] = uint32(_198)
                            mem[_230 + 64] = uint32(_200)
                            mem[_230 + 96] = uint32(_202)
                            mem[_230 + 128] = _204
                            mem[_230 + 160] = _206
                            mem[_230 + 192] = _208
                            mem[_230 + 224] = _210
                            mem[_230 + 256] = uint16(_217)
                            mem[_230 + 288] = uint16(_220)
                            mem[_230 + 320] = 0
                            _232 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_232] = _143
                            mem[_232 + 32] = uint128(_150)
                            mem[_232 + 64] = uint128(_156)
                            mem[_232 + 96] = uint32(_161)
                            mem[_232 + 128] = uint32(_168)
                            mem[_232 + 160] = uint32(_174)
                            mem[_232 + 192] = _230
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _232
                        else:
                            _233 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_233] = _193
                            mem[_233 + 32] = uint32(_198)
                            mem[_233 + 64] = uint32(_200)
                            mem[_233 + 96] = uint32(_202)
                            mem[_233 + 128] = _204
                            mem[_233 + 160] = _206
                            mem[_233 + 192] = _208
                            mem[_233 + 224] = _210
                            mem[_233 + 256] = uint16(_217)
                            mem[_233 + 288] = uint16(_220)
                            mem[_233 + 320] = 1
                            _236 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_236] = _143
                            mem[_236 + 32] = uint128(_150)
                            mem[_236 + 64] = uint128(_156)
                            mem[_236 + 96] = uint32(_161)
                            mem[_236 + 128] = uint32(_168)
                            mem[_236 + 160] = uint32(_174)
                            mem[_236 + 192] = _233
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _236
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _122 = mem[64]
        mem[mem[64]] = 32
        _124 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _124:
            _254 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_254 + 48 len 16]
            mem[t + 64] = mem[_254 + 80 len 16]
            mem[t + 96] = mem[_254 + 124 len 4]
            mem[t + 128] = mem[_254 + 156 len 4]
            mem[t + 160] = mem[_254 + 188 len 4]
            _274 = mem[_254 + 192]
            mem[t + 192] = mem[mem[_254 + 192]]
            mem[t + 224] = mem[_274 + 60 len 4]
            mem[t + 256] = mem[_274 + 92 len 4]
            mem[t + 288] = mem[_274 + 124 len 4]
            mem[t + 320] = mem[_274 + 128]
            mem[t + 352] = mem[_274 + 160]
            mem[t + 384] = mem[_274 + 192]
            mem[t + 416] = mem[_274 + 224]
            mem[t + 448] = mem[_274 + 286 len 2]
            mem[t + 480] = mem[_274 + 318 len 2]
            mem[t + 512] = mem[_274 + 351 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 544
            continue 
        return memory
          from mem[64]
           len _122 + (544 * _124) + -mem[64] + 64
    mem[(32 * arg2 - arg1) + 128] = 0
    mem[(32 * arg2 - arg1) + 160] = 0
    mem[(32 * arg2 - arg1) + 192] = 0
    mem[(32 * arg2 - arg1) + 224] = 0
    mem[(32 * arg2 - arg1) + 256] = 0
    mem[(32 * arg2 - arg1) + 288] = 0
    mem[64] = (32 * arg2 - arg1) + 704
    mem[(32 * arg2 - arg1) + 352] = 0
    mem[(32 * arg2 - arg1) + 384] = 0
    mem[(32 * arg2 - arg1) + 416] = 0
    mem[(32 * arg2 - arg1) + 448] = 0
    mem[(32 * arg2 - arg1) + 480] = 0
    mem[(32 * arg2 - arg1) + 512] = 0
    mem[(32 * arg2 - arg1) + 544] = 0
    mem[(32 * arg2 - arg1) + 576] = 0
    mem[(32 * arg2 - arg1) + 608] = 0
    mem[(32 * arg2 - arg1) + 640] = 0
    mem[(32 * arg2 - arg1) + 672] = 0
    mem[(32 * arg2 - arg1) + 320] = (32 * arg2 - arg1) + 352
    mem[var36002] = (32 * arg2 - arg1) + 128
    s = (32 * arg2 - arg1) + 320
    s = (32 * arg2 - arg1) + 128
    s = var36002
    idx = var36003
    while idx - 1:
        _342 = mem[64]
        mem[64] = mem[64] + 224
        mem[_342] = 0
        mem[_342 + 32] = 0
        mem[_342 + 64] = 0
        mem[_342 + 96] = 0
        mem[_342 + 128] = 0
        mem[_342 + 160] = 0
        mem[64] = mem[64] + 352
        mem[(32 * arg2 - arg1) + 352] = 0
        mem[(32 * arg2 - arg1) + 384] = 0
        mem[(32 * arg2 - arg1) + 416] = 0
        mem[(32 * arg2 - arg1) + 448] = 0
        mem[(32 * arg2 - arg1) + 480] = 0
        mem[(32 * arg2 - arg1) + 512] = 0
        mem[(32 * arg2 - arg1) + 544] = 0
        mem[(32 * arg2 - arg1) + 576] = 0
        mem[(32 * arg2 - arg1) + 608] = 0
        mem[(32 * arg2 - arg1) + 640] = 0
        mem[(32 * arg2 - arg1) + 672] = 0
        mem[_342 + 192] = (32 * arg2 - arg1) + 352
        mem[s + 32] = _342
        s = _342 + 192
        s = _342
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2 - arg1:
        if idx > -arg1 - 1:
            revert with 'NH{q', 17
        _410 = mem[64]
        mem[64] = mem[64] + 224
        mem[_410] = 0
        mem[_410 + 32] = 0
        mem[_410 + 64] = 0
        mem[_410 + 96] = 0
        mem[_410 + 128] = 0
        mem[_410 + 160] = 0
        _411 = mem[64]
        mem[64] = mem[64] + 352
        mem[_411] = 0
        mem[_411 + 32] = 0
        mem[_411 + 64] = 0
        mem[_411 + 96] = 0
        mem[_411 + 128] = 0
        mem[_411 + 160] = 0
        mem[_411 + 192] = 0
        mem[_411 + 224] = 0
        mem[_411 + 256] = 0
        mem[_411 + 288] = 0
        mem[_411 + 320] = 0
        mem[_410 + 192] = _411
        require ext_code.size(stor0)
        staticcall stor0.0xf0344e36 with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _418 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _420 = mem[_418]
        require mem[_418] == mem[_418]
        _423 = mem[_418 + 32]
        require mem[_418 + 32] == mem[_418 + 48 len 16]
        _426 = mem[_418 + 64]
        require mem[_418 + 64] == mem[_418 + 80 len 16]
        _429 = mem[_418 + 96]
        require mem[_418 + 96] == mem[_418 + 124 len 4]
        _432 = mem[_418 + 128]
        require mem[_418 + 128] == mem[_418 + 156 len 4]
        _435 = mem[_418 + 160]
        require mem[_418 + 160] == mem[_418 + 188 len 4]
        _438 = mem[64]
        mem[64] = mem[64] + 352
        mem[_438] = 0
        mem[_438 + 32] = 0
        mem[_438 + 64] = 0
        mem[_438 + 96] = 0
        mem[_438 + 128] = 0
        mem[_438 + 160] = 0
        mem[_438 + 192] = 0
        mem[_438 + 224] = 0
        mem[_438 + 256] = 0
        mem[_438 + 288] = 0
        mem[_438 + 320] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _443 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _445 = mem[_443]
        require mem[_443] == mem[_443]
        _446 = mem[_443 + 32]
        require mem[_443 + 32] == mem[_443 + 60 len 4]
        _447 = mem[_443 + 64]
        require mem[_443 + 64] == mem[_443 + 92 len 4]
        _448 = mem[_443 + 96]
        require mem[_443 + 96] == mem[_443 + 124 len 4]
        _449 = mem[_443 + 128]
        require mem[_443 + 128] == mem[_443 + 128]
        _450 = mem[_443 + 160]
        require mem[_443 + 160] == mem[_443 + 160]
        _451 = mem[_443 + 192]
        require mem[_443 + 192] == mem[_443 + 192]
        _452 = mem[_443 + 224]
        require mem[_443 + 224] == mem[_443 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _455 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _456 = mem[_455]
        require mem[_455] == mem[_455 + 30 len 2]
        _457 = mem[_455 + 32]
        require mem[_455 + 32] == mem[_455 + 62 len 2]
        if _450 > 0:
            _458 = mem[64]
            mem[64] = mem[64] + 352
            mem[_458] = _445
            mem[_458 + 32] = uint32(_446)
            mem[_458 + 64] = uint32(_447)
            mem[_458 + 96] = uint32(_448)
            mem[_458 + 128] = _449
            mem[_458 + 160] = _450
            mem[_458 + 192] = _451
            mem[_458 + 224] = _452
            mem[_458 + 256] = uint16(_456)
            mem[_458 + 288] = uint16(_457)
            mem[_458 + 320] = 4
            _459 = mem[64]
            mem[64] = mem[64] + 224
            mem[_459] = _420
            mem[_459 + 32] = uint128(_423)
            mem[_459 + 64] = uint128(_426)
            mem[_459 + 96] = uint32(_429)
            mem[_459 + 128] = uint32(_432)
            mem[_459 + 160] = uint32(_435)
            mem[_459 + 192] = _458
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _459
        else:
            if _452 > 0:
                _460 = mem[64]
                mem[64] = mem[64] + 352
                mem[_460] = _445
                mem[_460 + 32] = uint32(_446)
                mem[_460 + 64] = uint32(_447)
                mem[_460 + 96] = uint32(_448)
                mem[_460 + 128] = _449
                mem[_460 + 160] = _450
                mem[_460 + 192] = _451
                mem[_460 + 224] = _452
                mem[_460 + 256] = uint16(_456)
                mem[_460 + 288] = uint16(_457)
                mem[_460 + 320] = 3
                _462 = mem[64]
                mem[64] = mem[64] + 224
                mem[_462] = _420
                mem[_462 + 32] = uint128(_423)
                mem[_462 + 64] = uint128(_426)
                mem[_462 + 96] = uint32(_429)
                mem[_462 + 128] = uint32(_432)
                mem[_462 + 160] = uint32(_435)
                mem[_462 + 192] = _460
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _462
            else:
                if _449 > 0:
                    _463 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_463] = _445
                    mem[_463 + 32] = uint32(_446)
                    mem[_463 + 64] = uint32(_447)
                    mem[_463 + 96] = uint32(_448)
                    mem[_463 + 128] = _449
                    mem[_463 + 160] = _450
                    mem[_463 + 192] = _451
                    mem[_463 + 224] = _452
                    mem[_463 + 256] = uint16(_456)
                    mem[_463 + 288] = uint16(_457)
                    mem[_463 + 320] = 2
                    _466 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_466] = _420
                    mem[_466 + 32] = uint128(_423)
                    mem[_466 + 64] = uint128(_426)
                    mem[_466 + 96] = uint32(_429)
                    mem[_466 + 128] = uint32(_432)
                    mem[_466 + 160] = uint32(_435)
                    mem[_466 + 192] = _463
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _466
                else:
                    if _451 <= 0:
                        _465 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_465] = _445
                        mem[_465 + 32] = uint32(_446)
                        mem[_465 + 64] = uint32(_447)
                        mem[_465 + 96] = uint32(_448)
                        mem[_465 + 128] = _449
                        mem[_465 + 160] = _450
                        mem[_465 + 192] = _451
                        mem[_465 + 224] = _452
                        mem[_465 + 256] = uint16(_456)
                        mem[_465 + 288] = uint16(_457)
                        mem[_465 + 320] = 0
                        _467 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_467] = _420
                        mem[_467 + 32] = uint128(_423)
                        mem[_467 + 64] = uint128(_426)
                        mem[_467 + 96] = uint32(_429)
                        mem[_467 + 128] = uint32(_432)
                        mem[_467 + 160] = uint32(_435)
                        mem[_467 + 192] = _465
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _467
                    else:
                        _468 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_468] = _445
                        mem[_468 + 32] = uint32(_446)
                        mem[_468 + 64] = uint32(_447)
                        mem[_468 + 96] = uint32(_448)
                        mem[_468 + 128] = _449
                        mem[_468 + 160] = _450
                        mem[_468 + 192] = _451
                        mem[_468 + 224] = _452
                        mem[_468 + 256] = uint16(_456)
                        mem[_468 + 288] = uint16(_457)
                        mem[_468 + 320] = 1
                        _471 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_471] = _420
                        mem[_471 + 32] = uint128(_423)
                        mem[_471 + 64] = uint128(_426)
                        mem[_471 + 96] = uint32(_429)
                        mem[_471 + 128] = uint32(_432)
                        mem[_471 + 160] = uint32(_435)
                        mem[_471 + 192] = _468
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _471
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _408 = mem[64]
    mem[mem[64]] = 32
    _409 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _409:
        _473 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_473 + 48 len 16]
        mem[t + 64] = mem[_473 + 80 len 16]
        mem[t + 96] = mem[_473 + 124 len 4]
        mem[t + 128] = mem[_473 + 156 len 4]
        mem[t + 160] = mem[_473 + 188 len 4]
        _481 = mem[_473 + 192]
        mem[t + 192] = mem[mem[_473 + 192]]
        mem[t + 224] = mem[_481 + 60 len 4]
        mem[t + 256] = mem[_481 + 92 len 4]
        mem[t + 288] = mem[_481 + 124 len 4]
        mem[t + 320] = mem[_481 + 128]
        mem[t + 352] = mem[_481 + 160]
        mem[t + 384] = mem[_481 + 192]
        mem[t + 416] = mem[_481 + 224]
        mem[t + 448] = mem[_481 + 286 len 2]
        mem[t + 480] = mem[_481 + 318 len 2]
        mem[t + 512] = mem[_481 + 351 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 544
        continue 
    return memory
      from mem[64]
       len _408 + (544 * _409) + -mem[64] + 64
}

function sub_314d3090(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = 0
        while idx < arg2 - arg1:
            if idx > -arg1 - 1:
                revert with 'NH{q', 17
            _607 = mem[64]
            mem[64] = mem[64] + 288
            mem[_607] = 0
            mem[_607 + 32] = 0
            _608 = mem[64]
            mem[64] = mem[64] + 256
            mem[_608] = 0
            mem[_608 + 32] = 0
            mem[_608 + 64] = 0
            mem[_608 + 96] = 0
            mem[_608 + 128] = 0
            mem[_608 + 160] = 0
            mem[_608 + 192] = 0
            mem[_608 + 224] = 0
            mem[_607 + 64] = _608
            _611 = mem[64]
            mem[64] = mem[64] + 256
            mem[_611] = 0
            mem[_611 + 32] = 0
            mem[_611 + 64] = 0
            mem[_611 + 96] = 0
            mem[_611 + 128] = 0
            mem[_611 + 160] = 0
            mem[_611 + 192] = 0
            mem[_611 + 224] = 0
            mem[_607 + 96] = _611
            _614 = mem[64]
            mem[64] = mem[64] + 256
            mem[_614] = 0
            mem[_614 + 32] = 0
            mem[_614 + 64] = 0
            mem[_614 + 96] = 0
            mem[_614 + 128] = 0
            mem[_614 + 160] = 0
            mem[_614 + 192] = 0
            mem[_614 + 224] = 0
            mem[_607 + 128] = _614
            mem[_607 + 160] = 0
            mem[_607 + 192] = 0
            mem[_607 + 224] = 0
            _617 = mem[64]
            mem[64] = mem[64] + 224
            mem[_617] = 0
            mem[_617 + 32] = 0
            mem[_617 + 64] = 0
            mem[_617 + 96] = 0
            mem[_617 + 128] = 0
            mem[_617 + 160] = 0
            _619 = mem[64]
            mem[64] = mem[64] + 352
            mem[_619] = 0
            mem[_619 + 32] = 0
            mem[_619 + 64] = 0
            mem[_619 + 96] = 0
            mem[_619 + 128] = 0
            mem[_619 + 160] = 0
            mem[_619 + 192] = 0
            mem[_619 + 224] = 0
            mem[_619 + 256] = 0
            mem[_619 + 288] = 0
            mem[_619 + 320] = 0
            mem[_617 + 192] = _619
            mem[_607 + 256] = _617
            require ext_code.size(stor0)
            staticcall stor0.0x969215ba with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _628 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _630 = mem[_628]
            require mem[_628] == mem[_628 + 12 len 20]
            _636 = mem[_628 + 32]
            require mem[_628 + 32] == mem[_628 + 32]
            _641 = mem[_628 + 64]
            require mem[_628 + 64] == mem[_628 + 64]
            _645 = mem[_628 + 96]
            require mem[_628 + 96] == mem[_628 + 96]
            _649 = mem[_628 + 128]
            require mem[_628 + 128] == mem[_628 + 158 len 2]
            _653 = mem[_628 + 160]
            require mem[_628 + 160] == mem[_628 + 190 len 2]
            _657 = mem[_628 + 192]
            require mem[_628 + 192] == mem[_628 + 192]
            require mem[_628 + 224] == mem[_628 + 240 len 16]
            _667 = mem[64]
            mem[64] = mem[64] + 256
            mem[_667] = 0
            mem[_667 + 32] = 0
            mem[_667 + 64] = 0
            mem[_667 + 96] = 0
            mem[_667 + 128] = 0
            mem[_667 + 160] = 0
            mem[_667 + 192] = 0
            mem[_667 + 224] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _636
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _674 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _676 = mem[_674]
            require mem[_674] == mem[_674 + 30 len 2]
            _680 = mem[_674 + 32]
            require mem[_674 + 32] == mem[_674 + 62 len 2]
            mem[mem[64] + 4] = _636
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _636
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _688 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _691 = mem[_688]
            require mem[_688] == mem[_688]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args _636
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _701 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_701] == mem[_701]
            require mem[_701 + 32] == mem[_701 + 32]
            _713 = mem[_701 + 64]
            require mem[_701 + 64] == mem[_701 + 64]
            require mem[_701 + 96] == mem[_701 + 120 len 8]
            require mem[_701 + 128] == mem[_701 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _636
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _731 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _733 = mem[_731]
            require mem[_731] == mem[_731 + 12 len 20]
            _740 = mem[_731 + 32]
            require mem[_731 + 32] == mem[_731 + 48 len 16]
            _746 = mem[_731 + 64]
            require mem[_731 + 64] == mem[_731 + 80 len 16]
            _753 = mem[64]
            mem[64] = mem[64] + 256
            mem[_753] = _636
            mem[_753 + 32] = address(_733)
            mem[_753 + 64] = _691
            mem[_753 + 96] = _713
            mem[_753 + 128] = uint128(_740)
            mem[_753 + 160] = uint128(_746)
            mem[_753 + 192] = uint16(_676)
            mem[_753 + 224] = uint16(_680)
            _755 = mem[64]
            mem[64] = mem[64] + 256
            mem[_755] = 0
            mem[_755 + 32] = 0
            mem[_755 + 64] = 0
            mem[_755 + 96] = 0
            mem[_755 + 128] = 0
            mem[_755 + 160] = 0
            mem[_755 + 192] = 0
            mem[_755 + 224] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _641
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _760 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _763 = mem[_760]
            require mem[_760] == mem[_760 + 30 len 2]
            _767 = mem[_760 + 32]
            require mem[_760 + 32] == mem[_760 + 62 len 2]
            mem[mem[64] + 4] = _641
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _641
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _776 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _779 = mem[_776]
            require mem[_776] == mem[_776]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args _641
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _788 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_788] == mem[_788]
            require mem[_788 + 32] == mem[_788 + 32]
            _800 = mem[_788 + 64]
            require mem[_788 + 64] == mem[_788 + 64]
            require mem[_788 + 96] == mem[_788 + 120 len 8]
            require mem[_788 + 128] == mem[_788 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _641
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _818 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _819 = mem[_818]
            require mem[_818] == mem[_818 + 12 len 20]
            _824 = mem[_818 + 32]
            require mem[_818 + 32] == mem[_818 + 48 len 16]
            _829 = mem[_818 + 64]
            require mem[_818 + 64] == mem[_818 + 80 len 16]
            _832 = mem[64]
            mem[64] = mem[64] + 256
            mem[_832] = _641
            mem[_832 + 32] = address(_819)
            mem[_832 + 64] = _779
            mem[_832 + 96] = _800
            mem[_832 + 128] = uint128(_824)
            mem[_832 + 160] = uint128(_829)
            mem[_832 + 192] = uint16(_763)
            mem[_832 + 224] = uint16(_767)
            _835 = mem[64]
            mem[64] = mem[64] + 256
            mem[_835] = 0
            mem[_835 + 32] = 0
            mem[_835 + 64] = 0
            mem[_835 + 96] = 0
            mem[_835 + 128] = 0
            mem[_835 + 160] = 0
            mem[_835 + 192] = 0
            mem[_835 + 224] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _645
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _843 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _845 = mem[_843]
            require mem[_843] == mem[_843 + 30 len 2]
            _850 = mem[_843 + 32]
            require mem[_843 + 32] == mem[_843 + 62 len 2]
            mem[mem[64] + 4] = _645
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _645
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _859 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _860 = mem[_859]
            require mem[_859] == mem[_859]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args _645
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _869 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_869] == mem[_869]
            require mem[_869 + 32] == mem[_869 + 32]
            _882 = mem[_869 + 64]
            require mem[_869 + 64] == mem[_869 + 64]
            require mem[_869 + 96] == mem[_869 + 120 len 8]
            require mem[_869 + 128] == mem[_869 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _645
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _906 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _916 = mem[_906]
            require mem[_906] == mem[_906 + 12 len 20]
            _923 = mem[_906 + 32]
            require mem[_906 + 32] == mem[_906 + 48 len 16]
            _925 = mem[_906 + 64]
            require mem[_906 + 64] == mem[_906 + 80 len 16]
            _928 = mem[64]
            mem[64] = mem[64] + 256
            mem[_928] = _645
            mem[_928 + 32] = address(_916)
            mem[_928 + 64] = _860
            mem[_928 + 96] = _882
            mem[_928 + 128] = uint128(_923)
            mem[_928 + 160] = uint128(_925)
            mem[_928 + 192] = uint16(_845)
            mem[_928 + 224] = uint16(_850)
            _930 = mem[64]
            mem[64] = mem[64] + 224
            mem[_930] = 0
            mem[_930 + 32] = 0
            mem[_930 + 64] = 0
            mem[_930 + 96] = 0
            mem[_930 + 128] = 0
            mem[_930 + 160] = 0
            _931 = mem[64]
            mem[64] = mem[64] + 352
            mem[_931] = 0
            mem[_931 + 32] = 0
            mem[_931 + 64] = 0
            mem[_931 + 96] = 0
            mem[_931 + 128] = 0
            mem[_931 + 160] = 0
            mem[_931 + 192] = 0
            mem[_931 + 224] = 0
            mem[_931 + 256] = 0
            mem[_931 + 288] = 0
            mem[_931 + 320] = 0
            mem[_930 + 192] = _931
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args _657
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _939 = mem[_936]
            require mem[_936] == mem[_936]
            _941 = mem[_936 + 32]
            require mem[_936 + 32] == mem[_936 + 48 len 16]
            _944 = mem[_936 + 64]
            require mem[_936 + 64] == mem[_936 + 80 len 16]
            _947 = mem[_936 + 96]
            require mem[_936 + 96] == mem[_936 + 124 len 4]
            _949 = mem[_936 + 128]
            require mem[_936 + 128] == mem[_936 + 156 len 4]
            _952 = mem[_936 + 160]
            require mem[_936 + 160] == mem[_936 + 188 len 4]
            _955 = mem[64]
            mem[64] = mem[64] + 352
            mem[_955] = 0
            mem[_955 + 32] = 0
            mem[_955 + 64] = 0
            mem[_955 + 96] = 0
            mem[_955 + 128] = 0
            mem[_955 + 160] = 0
            mem[_955 + 192] = 0
            mem[_955 + 224] = 0
            mem[_955 + 256] = 0
            mem[_955 + 288] = 0
            mem[_955 + 320] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args _657
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _961 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _963 = mem[_961]
            require mem[_961] == mem[_961]
            _966 = mem[_961 + 32]
            require mem[_961 + 32] == mem[_961 + 60 len 4]
            _968 = mem[_961 + 64]
            require mem[_961 + 64] == mem[_961 + 92 len 4]
            _972 = mem[_961 + 96]
            require mem[_961 + 96] == mem[_961 + 124 len 4]
            _975 = mem[_961 + 128]
            require mem[_961 + 128] == mem[_961 + 128]
            _977 = mem[_961 + 160]
            require mem[_961 + 160] == mem[_961 + 160]
            _980 = mem[_961 + 192]
            require mem[_961 + 192] == mem[_961 + 192]
            _983 = mem[_961 + 224]
            require mem[_961 + 224] == mem[_961 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args _657
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _990 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _991 = mem[_990]
            require mem[_990] == mem[_990 + 30 len 2]
            _999 = mem[_990 + 32]
            require mem[_990 + 32] == mem[_990 + 62 len 2]
            if _977 > 0:
                _1006 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1006] = _963
                mem[_1006 + 32] = uint32(_966)
                mem[_1006 + 64] = uint32(_968)
                mem[_1006 + 96] = uint32(_972)
                mem[_1006 + 128] = _975
                mem[_1006 + 160] = _977
                mem[_1006 + 192] = _980
                mem[_1006 + 224] = _983
                mem[_1006 + 256] = uint16(_991)
                mem[_1006 + 288] = uint16(_999)
                mem[_1006 + 320] = 4
                _1007 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1007] = _939
                mem[_1007 + 32] = uint128(_941)
                mem[_1007 + 64] = uint128(_944)
                mem[_1007 + 96] = uint32(_947)
                mem[_1007 + 128] = uint32(_949)
                mem[_1007 + 160] = uint32(_952)
                mem[_1007 + 192] = _1006
                _1010 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1010] = idx + arg1
                mem[_1010 + 32] = address(_630)
                mem[_1010 + 64] = _753
                mem[_1010 + 96] = _832
                mem[_1010 + 128] = _928
                mem[_1010 + 160] = uint16(_649)
                mem[_1010 + 192] = uint16(_653)
                mem[_1010 + 224] = _657
                mem[_1010 + 256] = _1007
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1010
            else:
                if _983 > 0:
                    _1009 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1009] = _963
                    mem[_1009 + 32] = uint32(_966)
                    mem[_1009 + 64] = uint32(_968)
                    mem[_1009 + 96] = uint32(_972)
                    mem[_1009 + 128] = _975
                    mem[_1009 + 160] = _977
                    mem[_1009 + 192] = _980
                    mem[_1009 + 224] = _983
                    mem[_1009 + 256] = uint16(_991)
                    mem[_1009 + 288] = uint16(_999)
                    mem[_1009 + 320] = 3
                    _1011 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1011] = _939
                    mem[_1011 + 32] = uint128(_941)
                    mem[_1011 + 64] = uint128(_944)
                    mem[_1011 + 96] = uint32(_947)
                    mem[_1011 + 128] = uint32(_949)
                    mem[_1011 + 160] = uint32(_952)
                    mem[_1011 + 192] = _1009
                    _1016 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1016] = idx + arg1
                    mem[_1016 + 32] = address(_630)
                    mem[_1016 + 64] = _753
                    mem[_1016 + 96] = _832
                    mem[_1016 + 128] = _928
                    mem[_1016 + 160] = uint16(_649)
                    mem[_1016 + 192] = uint16(_653)
                    mem[_1016 + 224] = _657
                    mem[_1016 + 256] = _1011
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1016
                else:
                    if _975 > 0:
                        _1015 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1015] = _963
                        mem[_1015 + 32] = uint32(_966)
                        mem[_1015 + 64] = uint32(_968)
                        mem[_1015 + 96] = uint32(_972)
                        mem[_1015 + 128] = _975
                        mem[_1015 + 160] = _977
                        mem[_1015 + 192] = _980
                        mem[_1015 + 224] = _983
                        mem[_1015 + 256] = uint16(_991)
                        mem[_1015 + 288] = uint16(_999)
                        mem[_1015 + 320] = 2
                        _1018 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1018] = _939
                        mem[_1018 + 32] = uint128(_941)
                        mem[_1018 + 64] = uint128(_944)
                        mem[_1018 + 96] = uint32(_947)
                        mem[_1018 + 128] = uint32(_949)
                        mem[_1018 + 160] = uint32(_952)
                        mem[_1018 + 192] = _1015
                        _1022 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1022] = idx + arg1
                        mem[_1022 + 32] = address(_630)
                        mem[_1022 + 64] = _753
                        mem[_1022 + 96] = _832
                        mem[_1022 + 128] = _928
                        mem[_1022 + 160] = uint16(_649)
                        mem[_1022 + 192] = uint16(_653)
                        mem[_1022 + 224] = _657
                        mem[_1022 + 256] = _1018
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1022
                    else:
                        if _980 <= 0:
                            _1017 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1017] = _963
                            mem[_1017 + 32] = uint32(_966)
                            mem[_1017 + 64] = uint32(_968)
                            mem[_1017 + 96] = uint32(_972)
                            mem[_1017 + 128] = _975
                            mem[_1017 + 160] = _977
                            mem[_1017 + 192] = _980
                            mem[_1017 + 224] = _983
                            mem[_1017 + 256] = uint16(_991)
                            mem[_1017 + 288] = uint16(_999)
                            mem[_1017 + 320] = 0
                            _1020 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1020] = _939
                            mem[_1020 + 32] = uint128(_941)
                            mem[_1020 + 64] = uint128(_944)
                            mem[_1020 + 96] = uint32(_947)
                            mem[_1020 + 128] = uint32(_949)
                            mem[_1020 + 160] = uint32(_952)
                            mem[_1020 + 192] = _1017
                            _1024 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1024] = idx + arg1
                            mem[_1024 + 32] = address(_630)
                            mem[_1024 + 64] = _753
                            mem[_1024 + 96] = _832
                            mem[_1024 + 128] = _928
                            mem[_1024 + 160] = uint16(_649)
                            mem[_1024 + 192] = uint16(_653)
                            mem[_1024 + 224] = _657
                            mem[_1024 + 256] = _1020
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _1024
                        else:
                            _1021 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1021] = _963
                            mem[_1021 + 32] = uint32(_966)
                            mem[_1021 + 64] = uint32(_968)
                            mem[_1021 + 96] = uint32(_972)
                            mem[_1021 + 128] = _975
                            mem[_1021 + 160] = _977
                            mem[_1021 + 192] = _980
                            mem[_1021 + 224] = _983
                            mem[_1021 + 256] = uint16(_991)
                            mem[_1021 + 288] = uint16(_999)
                            mem[_1021 + 320] = 1
                            _1025 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1025] = _939
                            mem[_1025 + 32] = uint128(_941)
                            mem[_1025 + 64] = uint128(_944)
                            mem[_1025 + 96] = uint32(_947)
                            mem[_1025 + 128] = uint32(_949)
                            mem[_1025 + 160] = uint32(_952)
                            mem[_1025 + 192] = _1021
                            _1028 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1028] = idx + arg1
                            mem[_1028 + 32] = address(_630)
                            mem[_1028 + 64] = _753
                            mem[_1028 + 96] = _832
                            mem[_1028 + 128] = _928
                            mem[_1028 + 160] = uint16(_649)
                            mem[_1028 + 192] = uint16(_653)
                            mem[_1028 + 224] = _657
                            mem[_1028 + 256] = _1025
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _1028
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _601 = mem[64]
        mem[mem[64]] = 32
        _604 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _604:
            _872 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_872 + 44 len 20]
            _880 = mem[_872 + 64]
            mem[t + 64] = mem[mem[_872 + 64]]
            mem[t + 96] = mem[_880 + 44 len 20]
            mem[t + 128] = mem[_880 + 64]
            mem[t + 160] = mem[_880 + 96]
            mem[t + 192] = mem[_880 + 144 len 16]
            mem[t + 224] = mem[_880 + 176 len 16]
            mem[t + 256] = mem[_880 + 222 len 2]
            mem[t + 288] = mem[_880 + 254 len 2]
            _920 = mem[_872 + 96]
            mem[t + 320] = mem[mem[_872 + 96]]
            mem[t + 352] = mem[_920 + 44 len 20]
            mem[t + 384] = mem[_920 + 64]
            mem[t + 416] = mem[_920 + 96]
            mem[t + 448] = mem[_920 + 144 len 16]
            mem[t + 480] = mem[_920 + 176 len 16]
            mem[t + 512] = mem[_920 + 222 len 2]
            mem[t + 544] = mem[_920 + 254 len 2]
            _937 = mem[_872 + 128]
            mem[t + 576] = mem[mem[_872 + 128]]
            mem[t + 608] = mem[_937 + 44 len 20]
            mem[t + 640] = mem[_937 + 64]
            mem[t + 672] = mem[_937 + 96]
            mem[t + 704] = mem[_937 + 144 len 16]
            mem[t + 736] = mem[_937 + 176 len 16]
            mem[t + 768] = mem[_937 + 222 len 2]
            mem[t + 800] = mem[_937 + 254 len 2]
            mem[t + 832] = mem[_872 + 190 len 2]
            mem[t + 864] = mem[_872 + 222 len 2]
            mem[t + 896] = mem[_872 + 224]
            _957 = mem[_872 + 256]
            mem[t + 928] = mem[mem[_872 + 256]]
            mem[t + 960] = mem[_957 + 48 len 16]
            mem[t + 992] = mem[_957 + 80 len 16]
            mem[t + 1024] = mem[_957 + 124 len 4]
            mem[t + 1056] = mem[_957 + 156 len 4]
            mem[t + 1088] = mem[_957 + 188 len 4]
            _969 = mem[_957 + 192]
            mem[t + 1120] = mem[mem[_957 + 192]]
            mem[t + 1152] = mem[_969 + 60 len 4]
            mem[t + 1184] = mem[_969 + 92 len 4]
            mem[t + 1216] = mem[_969 + 124 len 4]
            mem[t + 1248] = mem[_969 + 128]
            mem[t + 1280] = mem[_969 + 160]
            mem[t + 1312] = mem[_969 + 192]
            mem[t + 1344] = mem[_969 + 224]
            mem[t + 1376] = mem[_969 + 286 len 2]
            mem[t + 1408] = mem[_969 + 318 len 2]
            mem[t + 1440] = mem[_969 + 351 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 1472
            continue 
        return memory
          from mem[64]
           len _601 + (1472 * _604) + -mem[64] + 64
    mem[(32 * arg2 - arg1) + 128] = 0
    mem[(32 * arg2 - arg1) + 160] = 0
    mem[(32 * arg2 - arg1) + 416] = 0
    mem[(32 * arg2 - arg1) + 448] = 0
    mem[(32 * arg2 - arg1) + 480] = 0
    mem[(32 * arg2 - arg1) + 512] = 0
    mem[(32 * arg2 - arg1) + 544] = 0
    mem[(32 * arg2 - arg1) + 576] = 0
    mem[(32 * arg2 - arg1) + 608] = 0
    mem[(32 * arg2 - arg1) + 640] = 0
    mem[(32 * arg2 - arg1) + 192] = (32 * arg2 - arg1) + 416
    mem[(32 * arg2 - arg1) + 672] = 0
    mem[(32 * arg2 - arg1) + 704] = 0
    mem[(32 * arg2 - arg1) + 736] = 0
    mem[(32 * arg2 - arg1) + 768] = 0
    mem[(32 * arg2 - arg1) + 800] = 0
    mem[(32 * arg2 - arg1) + 832] = 0
    mem[(32 * arg2 - arg1) + 864] = 0
    mem[(32 * arg2 - arg1) + 896] = 0
    mem[(32 * arg2 - arg1) + 224] = (32 * arg2 - arg1) + 672
    mem[(32 * arg2 - arg1) + 928] = 0
    mem[(32 * arg2 - arg1) + 960] = 0
    mem[(32 * arg2 - arg1) + 992] = 0
    mem[(32 * arg2 - arg1) + 1024] = 0
    mem[(32 * arg2 - arg1) + 1056] = 0
    mem[(32 * arg2 - arg1) + 1088] = 0
    mem[(32 * arg2 - arg1) + 1120] = 0
    mem[(32 * arg2 - arg1) + 1152] = 0
    mem[(32 * arg2 - arg1) + 256] = (32 * arg2 - arg1) + 928
    mem[(32 * arg2 - arg1) + 288] = 0
    mem[(32 * arg2 - arg1) + 320] = 0
    mem[(32 * arg2 - arg1) + 352] = 0
    mem[(32 * arg2 - arg1) + 1184] = 0
    mem[(32 * arg2 - arg1) + 1216] = 0
    mem[(32 * arg2 - arg1) + 1248] = 0
    mem[(32 * arg2 - arg1) + 1280] = 0
    mem[(32 * arg2 - arg1) + 1312] = 0
    mem[(32 * arg2 - arg1) + 1344] = 0
    mem[64] = (32 * arg2 - arg1) + 1760
    mem[(32 * arg2 - arg1) + 1408] = 0
    mem[(32 * arg2 - arg1) + 1440] = 0
    mem[(32 * arg2 - arg1) + 1472] = 0
    mem[(32 * arg2 - arg1) + 1504] = 0
    mem[(32 * arg2 - arg1) + 1536] = 0
    mem[(32 * arg2 - arg1) + 1568] = 0
    mem[(32 * arg2 - arg1) + 1600] = 0
    mem[(32 * arg2 - arg1) + 1632] = 0
    mem[(32 * arg2 - arg1) + 1664] = 0
    mem[(32 * arg2 - arg1) + 1696] = 0
    mem[(32 * arg2 - arg1) + 1728] = 0
    mem[(32 * arg2 - arg1) + 1376] = (32 * arg2 - arg1) + 1408
    mem[(32 * arg2 - arg1) + 384] = (32 * arg2 - arg1) + 1184
    mem[var44002] = (32 * arg2 - arg1) + 128
    s = (32 * arg2 - arg1) + 192
    s = (32 * arg2 - arg1) + 128
    s = var44002
    idx = var44003
    while idx - 1:
        _487 = mem[64]
        mem[64] = mem[64] + 288
        mem[_487] = 0
        mem[_487 + 32] = 0
        mem[64] = mem[64] + 256
        mem[(32 * arg2 - arg1) + 416] = 0
        mem[(32 * arg2 - arg1) + 448] = 0
        mem[(32 * arg2 - arg1) + 480] = 0
        mem[(32 * arg2 - arg1) + 512] = 0
        mem[(32 * arg2 - arg1) + 544] = 0
        mem[(32 * arg2 - arg1) + 576] = 0
        mem[(32 * arg2 - arg1) + 608] = 0
        mem[(32 * arg2 - arg1) + 640] = 0
        mem[_487 + 64] = (32 * arg2 - arg1) + 416
        mem[64] = mem[64] + 256
        mem[(32 * arg2 - arg1) + 672] = 0
        mem[(32 * arg2 - arg1) + 704] = 0
        mem[(32 * arg2 - arg1) + 736] = 0
        mem[(32 * arg2 - arg1) + 768] = 0
        mem[(32 * arg2 - arg1) + 800] = 0
        mem[(32 * arg2 - arg1) + 832] = 0
        mem[(32 * arg2 - arg1) + 864] = 0
        mem[(32 * arg2 - arg1) + 896] = 0
        mem[_487 + 96] = (32 * arg2 - arg1) + 672
        mem[64] = mem[64] + 256
        mem[(32 * arg2 - arg1) + 928] = 0
        mem[(32 * arg2 - arg1) + 960] = 0
        mem[(32 * arg2 - arg1) + 992] = 0
        mem[(32 * arg2 - arg1) + 1024] = 0
        mem[(32 * arg2 - arg1) + 1056] = 0
        mem[(32 * arg2 - arg1) + 1088] = 0
        mem[(32 * arg2 - arg1) + 1120] = 0
        mem[(32 * arg2 - arg1) + 1152] = 0
        mem[_487 + 128] = (32 * arg2 - arg1) + 928
        mem[_487 + 160] = 0
        mem[_487 + 192] = 0
        mem[_487 + 224] = 0
        mem[64] = mem[64] + 224
        mem[(32 * arg2 - arg1) + 1184] = 0
        mem[(32 * arg2 - arg1) + 1216] = 0
        mem[(32 * arg2 - arg1) + 1248] = 0
        mem[(32 * arg2 - arg1) + 1280] = 0
        mem[(32 * arg2 - arg1) + 1312] = 0
        mem[(32 * arg2 - arg1) + 1344] = 0
        mem[64] = mem[64] + 352
        mem[(32 * arg2 - arg1) + 1408] = 0
        mem[(32 * arg2 - arg1) + 1440] = 0
        mem[(32 * arg2 - arg1) + 1472] = 0
        mem[(32 * arg2 - arg1) + 1504] = 0
        mem[(32 * arg2 - arg1) + 1536] = 0
        mem[(32 * arg2 - arg1) + 1568] = 0
        mem[(32 * arg2 - arg1) + 1600] = 0
        mem[(32 * arg2 - arg1) + 1632] = 0
        mem[(32 * arg2 - arg1) + 1664] = 0
        mem[(32 * arg2 - arg1) + 1696] = 0
        mem[(32 * arg2 - arg1) + 1728] = 0
        mem[(32 * arg2 - arg1) + 1376] = (32 * arg2 - arg1) + 1408
        mem[_487 + 256] = (32 * arg2 - arg1) + 1184
        mem[s + 32] = _487
        s = _487 + 64
        s = _487
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2 - arg1:
        if idx > -arg1 - 1:
            revert with 'NH{q', 17
        _992 = mem[64]
        mem[64] = mem[64] + 288
        mem[_992] = 0
        mem[_992 + 32] = 0
        _993 = mem[64]
        mem[64] = mem[64] + 256
        mem[_993] = 0
        mem[_993 + 32] = 0
        mem[_993 + 64] = 0
        mem[_993 + 96] = 0
        mem[_993 + 128] = 0
        mem[_993 + 160] = 0
        mem[_993 + 192] = 0
        mem[_993 + 224] = 0
        mem[_992 + 64] = _993
        _995 = mem[64]
        mem[64] = mem[64] + 256
        mem[_995] = 0
        mem[_995 + 32] = 0
        mem[_995 + 64] = 0
        mem[_995 + 96] = 0
        mem[_995 + 128] = 0
        mem[_995 + 160] = 0
        mem[_995 + 192] = 0
        mem[_995 + 224] = 0
        mem[_992 + 96] = _995
        _998 = mem[64]
        mem[64] = mem[64] + 256
        mem[_998] = 0
        mem[_998 + 32] = 0
        mem[_998 + 64] = 0
        mem[_998 + 96] = 0
        mem[_998 + 128] = 0
        mem[_998 + 160] = 0
        mem[_998 + 192] = 0
        mem[_998 + 224] = 0
        mem[_992 + 128] = _998
        mem[_992 + 160] = 0
        mem[_992 + 192] = 0
        mem[_992 + 224] = 0
        _1000 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1000] = 0
        mem[_1000 + 32] = 0
        mem[_1000 + 64] = 0
        mem[_1000 + 96] = 0
        mem[_1000 + 128] = 0
        mem[_1000 + 160] = 0
        _1002 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1002] = 0
        mem[_1002 + 32] = 0
        mem[_1002 + 64] = 0
        mem[_1002 + 96] = 0
        mem[_1002 + 128] = 0
        mem[_1002 + 160] = 0
        mem[_1002 + 192] = 0
        mem[_1002 + 224] = 0
        mem[_1002 + 256] = 0
        mem[_1002 + 288] = 0
        mem[_1002 + 320] = 0
        mem[_1000 + 192] = _1002
        mem[_992 + 256] = _1000
        require ext_code.size(stor0)
        staticcall stor0.0x969215ba with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1014 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _1023 = mem[_1014]
        require mem[_1014] == mem[_1014 + 12 len 20]
        _1032 = mem[_1014 + 32]
        require mem[_1014 + 32] == mem[_1014 + 32]
        _1035 = mem[_1014 + 64]
        require mem[_1014 + 64] == mem[_1014 + 64]
        _1038 = mem[_1014 + 96]
        require mem[_1014 + 96] == mem[_1014 + 96]
        _1041 = mem[_1014 + 128]
        require mem[_1014 + 128] == mem[_1014 + 158 len 2]
        _1043 = mem[_1014 + 160]
        require mem[_1014 + 160] == mem[_1014 + 190 len 2]
        _1046 = mem[_1014 + 192]
        require mem[_1014 + 192] == mem[_1014 + 192]
        require mem[_1014 + 224] == mem[_1014 + 240 len 16]
        _1052 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1052] = 0
        mem[_1052 + 32] = 0
        mem[_1052 + 64] = 0
        mem[_1052 + 96] = 0
        mem[_1052 + 128] = 0
        mem[_1052 + 160] = 0
        mem[_1052 + 192] = 0
        mem[_1052 + 224] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1032
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1058 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1059 = mem[_1058]
        require mem[_1058] == mem[_1058 + 30 len 2]
        _1062 = mem[_1058 + 32]
        require mem[_1058 + 32] == mem[_1058 + 62 len 2]
        mem[mem[64] + 4] = _1032
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1032
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1068 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1070 = mem[_1068]
        require mem[_1068] == mem[_1068]
        require ext_code.size(stor1)
        staticcall stor1.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args _1032
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1077 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_1077] == mem[_1077]
        require mem[_1077 + 32] == mem[_1077 + 32]
        _1085 = mem[_1077 + 64]
        require mem[_1077 + 64] == mem[_1077 + 64]
        require mem[_1077 + 96] == mem[_1077 + 120 len 8]
        require mem[_1077 + 128] == mem[_1077 + 159 len 1]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _1032
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1098 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1099 = mem[_1098]
        require mem[_1098] == mem[_1098 + 12 len 20]
        _1103 = mem[_1098 + 32]
        require mem[_1098 + 32] == mem[_1098 + 48 len 16]
        _1105 = mem[_1098 + 64]
        require mem[_1098 + 64] == mem[_1098 + 80 len 16]
        _1107 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1107] = _1032
        mem[_1107 + 32] = address(_1099)
        mem[_1107 + 64] = _1070
        mem[_1107 + 96] = _1085
        mem[_1107 + 128] = uint128(_1103)
        mem[_1107 + 160] = uint128(_1105)
        mem[_1107 + 192] = uint16(_1059)
        mem[_1107 + 224] = uint16(_1062)
        _1108 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1108] = 0
        mem[_1108 + 32] = 0
        mem[_1108 + 64] = 0
        mem[_1108 + 96] = 0
        mem[_1108 + 128] = 0
        mem[_1108 + 160] = 0
        mem[_1108 + 192] = 0
        mem[_1108 + 224] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1035
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1112 = mem[_1111]
        require mem[_1111] == mem[_1111 + 30 len 2]
        _1113 = mem[_1111 + 32]
        require mem[_1111 + 32] == mem[_1111 + 62 len 2]
        mem[mem[64] + 4] = _1035
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1035
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1116 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1117 = mem[_1116]
        require mem[_1116] == mem[_1116]
        require ext_code.size(stor1)
        staticcall stor1.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args _1035
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1120 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_1120] == mem[_1120]
        require mem[_1120 + 32] == mem[_1120 + 32]
        _1123 = mem[_1120 + 64]
        require mem[_1120 + 64] == mem[_1120 + 64]
        require mem[_1120 + 96] == mem[_1120 + 120 len 8]
        require mem[_1120 + 128] == mem[_1120 + 159 len 1]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _1035
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1129 = mem[_1128]
        require mem[_1128] == mem[_1128 + 12 len 20]
        _1130 = mem[_1128 + 32]
        require mem[_1128 + 32] == mem[_1128 + 48 len 16]
        _1131 = mem[_1128 + 64]
        require mem[_1128 + 64] == mem[_1128 + 80 len 16]
        _1132 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1132] = _1035
        mem[_1132 + 32] = address(_1129)
        mem[_1132 + 64] = _1117
        mem[_1132 + 96] = _1123
        mem[_1132 + 128] = uint128(_1130)
        mem[_1132 + 160] = uint128(_1131)
        mem[_1132 + 192] = uint16(_1112)
        mem[_1132 + 224] = uint16(_1113)
        _1133 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1133] = 0
        mem[_1133 + 32] = 0
        mem[_1133 + 64] = 0
        mem[_1133 + 96] = 0
        mem[_1133 + 128] = 0
        mem[_1133 + 160] = 0
        mem[_1133 + 192] = 0
        mem[_1133 + 224] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1038
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1137 = mem[_1136]
        require mem[_1136] == mem[_1136 + 30 len 2]
        _1138 = mem[_1136 + 32]
        require mem[_1136 + 32] == mem[_1136 + 62 len 2]
        mem[mem[64] + 4] = _1038
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1038
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1142 = mem[_1141]
        require mem[_1141] == mem[_1141]
        require ext_code.size(stor1)
        staticcall stor1.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args _1038
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_1145] == mem[_1145]
        require mem[_1145 + 32] == mem[_1145 + 32]
        _1154 = mem[_1145 + 64]
        require mem[_1145 + 64] == mem[_1145 + 64]
        require mem[_1145 + 96] == mem[_1145 + 120 len 8]
        require mem[_1145 + 128] == mem[_1145 + 159 len 1]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _1038
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1167 = mem[_1166]
        require mem[_1166] == mem[_1166 + 12 len 20]
        _1171 = mem[_1166 + 32]
        require mem[_1166 + 32] == mem[_1166 + 48 len 16]
        _1173 = mem[_1166 + 64]
        require mem[_1166 + 64] == mem[_1166 + 80 len 16]
        _1176 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1176] = _1038
        mem[_1176 + 32] = address(_1167)
        mem[_1176 + 64] = _1142
        mem[_1176 + 96] = _1154
        mem[_1176 + 128] = uint128(_1171)
        mem[_1176 + 160] = uint128(_1173)
        mem[_1176 + 192] = uint16(_1137)
        mem[_1176 + 224] = uint16(_1138)
        _1178 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1178] = 0
        mem[_1178 + 32] = 0
        mem[_1178 + 64] = 0
        mem[_1178 + 96] = 0
        mem[_1178 + 128] = 0
        mem[_1178 + 160] = 0
        _1179 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1179] = 0
        mem[_1179 + 32] = 0
        mem[_1179 + 64] = 0
        mem[_1179 + 96] = 0
        mem[_1179 + 128] = 0
        mem[_1179 + 160] = 0
        mem[_1179 + 192] = 0
        mem[_1179 + 224] = 0
        mem[_1179 + 256] = 0
        mem[_1179 + 288] = 0
        mem[_1179 + 320] = 0
        mem[_1178 + 192] = _1179
        require ext_code.size(stor0)
        staticcall stor0.0xf0344e36 with:
                gas gas_remaining wei
               args _1046
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _1187 = mem[_1184]
        require mem[_1184] == mem[_1184]
        _1189 = mem[_1184 + 32]
        require mem[_1184 + 32] == mem[_1184 + 48 len 16]
        _1192 = mem[_1184 + 64]
        require mem[_1184 + 64] == mem[_1184 + 80 len 16]
        _1195 = mem[_1184 + 96]
        require mem[_1184 + 96] == mem[_1184 + 124 len 4]
        _1197 = mem[_1184 + 128]
        require mem[_1184 + 128] == mem[_1184 + 156 len 4]
        _1200 = mem[_1184 + 160]
        require mem[_1184 + 160] == mem[_1184 + 188 len 4]
        _1203 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1203] = 0
        mem[_1203 + 32] = 0
        mem[_1203 + 64] = 0
        mem[_1203 + 96] = 0
        mem[_1203 + 128] = 0
        mem[_1203 + 160] = 0
        mem[_1203 + 192] = 0
        mem[_1203 + 224] = 0
        mem[_1203 + 256] = 0
        mem[_1203 + 288] = 0
        mem[_1203 + 320] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args _1046
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1209 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _1211 = mem[_1209]
        require mem[_1209] == mem[_1209]
        _1214 = mem[_1209 + 32]
        require mem[_1209 + 32] == mem[_1209 + 60 len 4]
        _1216 = mem[_1209 + 64]
        require mem[_1209 + 64] == mem[_1209 + 92 len 4]
        _1220 = mem[_1209 + 96]
        require mem[_1209 + 96] == mem[_1209 + 124 len 4]
        _1223 = mem[_1209 + 128]
        require mem[_1209 + 128] == mem[_1209 + 128]
        _1225 = mem[_1209 + 160]
        require mem[_1209 + 160] == mem[_1209 + 160]
        _1228 = mem[_1209 + 192]
        require mem[_1209 + 192] == mem[_1209 + 192]
        _1231 = mem[_1209 + 224]
        require mem[_1209 + 224] == mem[_1209 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args _1046
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1236 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1237 = mem[_1236]
        require mem[_1236] == mem[_1236 + 30 len 2]
        _1238 = mem[_1236 + 32]
        require mem[_1236 + 32] == mem[_1236 + 62 len 2]
        if _1225 > 0:
            _1239 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1239] = _1211
            mem[_1239 + 32] = uint32(_1214)
            mem[_1239 + 64] = uint32(_1216)
            mem[_1239 + 96] = uint32(_1220)
            mem[_1239 + 128] = _1223
            mem[_1239 + 160] = _1225
            mem[_1239 + 192] = _1228
            mem[_1239 + 224] = _1231
            mem[_1239 + 256] = uint16(_1237)
            mem[_1239 + 288] = uint16(_1238)
            mem[_1239 + 320] = 4
            _1240 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1240] = _1187
            mem[_1240 + 32] = uint128(_1189)
            mem[_1240 + 64] = uint128(_1192)
            mem[_1240 + 96] = uint32(_1195)
            mem[_1240 + 128] = uint32(_1197)
            mem[_1240 + 160] = uint32(_1200)
            mem[_1240 + 192] = _1239
            _1242 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1242] = idx + arg1
            mem[_1242 + 32] = address(_1023)
            mem[_1242 + 64] = _1107
            mem[_1242 + 96] = _1132
            mem[_1242 + 128] = _1176
            mem[_1242 + 160] = uint16(_1041)
            mem[_1242 + 192] = uint16(_1043)
            mem[_1242 + 224] = _1046
            mem[_1242 + 256] = _1240
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _1242
        else:
            if _1231 > 0:
                _1241 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1241] = _1211
                mem[_1241 + 32] = uint32(_1214)
                mem[_1241 + 64] = uint32(_1216)
                mem[_1241 + 96] = uint32(_1220)
                mem[_1241 + 128] = _1223
                mem[_1241 + 160] = _1225
                mem[_1241 + 192] = _1228
                mem[_1241 + 224] = _1231
                mem[_1241 + 256] = uint16(_1237)
                mem[_1241 + 288] = uint16(_1238)
                mem[_1241 + 320] = 3
                _1243 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1243] = _1187
                mem[_1243 + 32] = uint128(_1189)
                mem[_1243 + 64] = uint128(_1192)
                mem[_1243 + 96] = uint32(_1195)
                mem[_1243 + 128] = uint32(_1197)
                mem[_1243 + 160] = uint32(_1200)
                mem[_1243 + 192] = _1241
                _1246 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1246] = idx + arg1
                mem[_1246 + 32] = address(_1023)
                mem[_1246 + 64] = _1107
                mem[_1246 + 96] = _1132
                mem[_1246 + 128] = _1176
                mem[_1246 + 160] = uint16(_1041)
                mem[_1246 + 192] = uint16(_1043)
                mem[_1246 + 224] = _1046
                mem[_1246 + 256] = _1243
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1246
            else:
                if _1223 > 0:
                    _1245 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1245] = _1211
                    mem[_1245 + 32] = uint32(_1214)
                    mem[_1245 + 64] = uint32(_1216)
                    mem[_1245 + 96] = uint32(_1220)
                    mem[_1245 + 128] = _1223
                    mem[_1245 + 160] = _1225
                    mem[_1245 + 192] = _1228
                    mem[_1245 + 224] = _1231
                    mem[_1245 + 256] = uint16(_1237)
                    mem[_1245 + 288] = uint16(_1238)
                    mem[_1245 + 320] = 2
                    _1248 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1248] = _1187
                    mem[_1248 + 32] = uint128(_1189)
                    mem[_1248 + 64] = uint128(_1192)
                    mem[_1248 + 96] = uint32(_1195)
                    mem[_1248 + 128] = uint32(_1197)
                    mem[_1248 + 160] = uint32(_1200)
                    mem[_1248 + 192] = _1245
                    _1252 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1252] = idx + arg1
                    mem[_1252 + 32] = address(_1023)
                    mem[_1252 + 64] = _1107
                    mem[_1252 + 96] = _1132
                    mem[_1252 + 128] = _1176
                    mem[_1252 + 160] = uint16(_1041)
                    mem[_1252 + 192] = uint16(_1043)
                    mem[_1252 + 224] = _1046
                    mem[_1252 + 256] = _1248
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1252
                else:
                    if _1228 <= 0:
                        _1247 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1247] = _1211
                        mem[_1247 + 32] = uint32(_1214)
                        mem[_1247 + 64] = uint32(_1216)
                        mem[_1247 + 96] = uint32(_1220)
                        mem[_1247 + 128] = _1223
                        mem[_1247 + 160] = _1225
                        mem[_1247 + 192] = _1228
                        mem[_1247 + 224] = _1231
                        mem[_1247 + 256] = uint16(_1237)
                        mem[_1247 + 288] = uint16(_1238)
                        mem[_1247 + 320] = 0
                        _1250 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1250] = _1187
                        mem[_1250 + 32] = uint128(_1189)
                        mem[_1250 + 64] = uint128(_1192)
                        mem[_1250 + 96] = uint32(_1195)
                        mem[_1250 + 128] = uint32(_1197)
                        mem[_1250 + 160] = uint32(_1200)
                        mem[_1250 + 192] = _1247
                        _1253 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1253] = idx + arg1
                        mem[_1253 + 32] = address(_1023)
                        mem[_1253 + 64] = _1107
                        mem[_1253 + 96] = _1132
                        mem[_1253 + 128] = _1176
                        mem[_1253 + 160] = uint16(_1041)
                        mem[_1253 + 192] = uint16(_1043)
                        mem[_1253 + 224] = _1046
                        mem[_1253 + 256] = _1250
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1253
                    else:
                        _1251 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1251] = _1211
                        mem[_1251 + 32] = uint32(_1214)
                        mem[_1251 + 64] = uint32(_1216)
                        mem[_1251 + 96] = uint32(_1220)
                        mem[_1251 + 128] = _1223
                        mem[_1251 + 160] = _1225
                        mem[_1251 + 192] = _1228
                        mem[_1251 + 224] = _1231
                        mem[_1251 + 256] = uint16(_1237)
                        mem[_1251 + 288] = uint16(_1238)
                        mem[_1251 + 320] = 1
                        _1254 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1254] = _1187
                        mem[_1254 + 32] = uint128(_1189)
                        mem[_1254 + 64] = uint128(_1192)
                        mem[_1254 + 96] = uint32(_1195)
                        mem[_1254 + 128] = uint32(_1197)
                        mem[_1254 + 160] = uint32(_1200)
                        mem[_1254 + 192] = _1251
                        _1257 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1257] = idx + arg1
                        mem[_1257 + 32] = address(_1023)
                        mem[_1257 + 64] = _1107
                        mem[_1257 + 96] = _1132
                        mem[_1257 + 128] = _1176
                        mem[_1257 + 160] = uint16(_1041)
                        mem[_1257 + 192] = uint16(_1043)
                        mem[_1257 + 224] = _1046
                        mem[_1257 + 256] = _1254
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1257
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _987 = mem[64]
    mem[mem[64]] = 32
    _989 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _989:
        _1146 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1146 + 44 len 20]
        _1152 = mem[_1146 + 64]
        mem[t + 64] = mem[mem[_1146 + 64]]
        mem[t + 96] = mem[_1152 + 44 len 20]
        mem[t + 128] = mem[_1152 + 64]
        mem[t + 160] = mem[_1152 + 96]
        mem[t + 192] = mem[_1152 + 144 len 16]
        mem[t + 224] = mem[_1152 + 176 len 16]
        mem[t + 256] = mem[_1152 + 222 len 2]
        mem[t + 288] = mem[_1152 + 254 len 2]
        _1168 = mem[_1146 + 96]
        mem[t + 320] = mem[mem[_1146 + 96]]
        mem[t + 352] = mem[_1168 + 44 len 20]
        mem[t + 384] = mem[_1168 + 64]
        mem[t + 416] = mem[_1168 + 96]
        mem[t + 448] = mem[_1168 + 144 len 16]
        mem[t + 480] = mem[_1168 + 176 len 16]
        mem[t + 512] = mem[_1168 + 222 len 2]
        mem[t + 544] = mem[_1168 + 254 len 2]
        _1185 = mem[_1146 + 128]
        mem[t + 576] = mem[mem[_1146 + 128]]
        mem[t + 608] = mem[_1185 + 44 len 20]
        mem[t + 640] = mem[_1185 + 64]
        mem[t + 672] = mem[_1185 + 96]
        mem[t + 704] = mem[_1185 + 144 len 16]
        mem[t + 736] = mem[_1185 + 176 len 16]
        mem[t + 768] = mem[_1185 + 222 len 2]
        mem[t + 800] = mem[_1185 + 254 len 2]
        mem[t + 832] = mem[_1146 + 190 len 2]
        mem[t + 864] = mem[_1146 + 222 len 2]
        mem[t + 896] = mem[_1146 + 224]
        _1205 = mem[_1146 + 256]
        mem[t + 928] = mem[mem[_1146 + 256]]
        mem[t + 960] = mem[_1205 + 48 len 16]
        mem[t + 992] = mem[_1205 + 80 len 16]
        mem[t + 1024] = mem[_1205 + 124 len 4]
        mem[t + 1056] = mem[_1205 + 156 len 4]
        mem[t + 1088] = mem[_1205 + 188 len 4]
        _1217 = mem[_1205 + 192]
        mem[t + 1120] = mem[mem[_1205 + 192]]
        mem[t + 1152] = mem[_1217 + 60 len 4]
        mem[t + 1184] = mem[_1217 + 92 len 4]
        mem[t + 1216] = mem[_1217 + 124 len 4]
        mem[t + 1248] = mem[_1217 + 128]
        mem[t + 1280] = mem[_1217 + 160]
        mem[t + 1312] = mem[_1217 + 192]
        mem[t + 1344] = mem[_1217 + 224]
        mem[t + 1376] = mem[_1217 + 286 len 2]
        mem[t + 1408] = mem[_1217 + 318 len 2]
        mem[t + 1440] = mem[_1217 + 351 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 1472
        continue 
    return memory
      from mem[64]
       len _987 + (1472 * _989) + -mem[64] + 64
}



}
