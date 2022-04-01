contract main {




// =====================  Runtime code  =====================


const sub_5fd866df(?) = 0xfa3b314b1df07e4b9237c2d60c3299065f151f78

const sub_c45a1ac1(?) = 0x78ea17559b3d2cf85a7f9c2c704eda119db5e6de

const Factory = 0xefa94de7a4656d787667c749f7e1223d71e9fd88

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


function _fallback() payable {
    revert
}

function sub_601ec1e7(?) payable {
    require ext_code.size(0xfa3b314b1df07e4b9237c2d60c3299065f151f78)
    staticcall 0xfa3b314b1df07e4b9237c2d60c3299065f151f78.stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfa3b314b1df07e4b9237c2d60c3299065f151f78)
    staticcall 0xfa3b314b1df07e4b9237c2d60c3299065f151f78.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(8712802085545782520, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(8712802085545782520, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[50 len 14]:
            if ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[50 len 14] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function sub_cf42ee60(?) payable {
    require ext_code.size(0xfa3b314b1df07e4b9237c2d60c3299065f151f78)
    staticcall 0xfa3b314b1df07e4b9237c2d60c3299065f151f78.stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfa3b314b1df07e4b9237c2d60c3299065f151f78)
    staticcall 0xfa3b314b1df07e4b9237c2d60c3299065f151f78.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(8712802085545782520, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(8712802085545782520, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[18 len 14]:
            if ext_call.return_data[18 len 14] * ext_call.return_data[0] / ext_call.return_data[18 len 14] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[18 len 14] * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}



}
