contract main {




// =====================  Runtime code  =====================


const sub_3bf65663(?) = 0x6140d3ed2426cbb24f07d884106d9018d49d9101

const Factory = 0xefa94de7a4656d787667c749f7e1223d71e9fd88

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CYCLE = 0x81440c939f2c1e34fc7048e518a637205a632a74


function _fallback() payable {
    revert
}

function sub_31725f88(?) payable {
    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
    staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(9314583757479222836, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(9314583757479222836, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[18 len 14]:
            return (0 / ext_call.return_data[18 len 14])
    else:
        if ext_call.return_data[50 len 14]:
            if ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[50 len 14] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[18 len 14]:
                return (ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[18 len 14])
    revert
}



}
