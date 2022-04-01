contract main {




// =====================  Runtime code  =====================


const sub_c45a1ac1(?) = 0x78ea17559b3d2cf85a7f9c2c704eda119db5e6de

const Factory = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const sub_ee6064e0(?) = 0xfa3b314b1df07e4b9237c2d60c3299065f151f78

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
    staticcall address(ext_call.return_data[0]).totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfa3b314b1df07e4b9237c2d60c3299065f151f78)
    staticcall 0xfa3b314b1df07e4b9237c2d60c3299065f151f78.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 11157320132538271434, sha3(8712802085545782520, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
    staticcall address(sha3(0, 11157320132538271434, sha3(8712802085545782520, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            return 0
        require 0 / ext_call.return_data[0]
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
        return (2 * 0 / ext_call.return_data[0])
    require ext_call.return_data[50 len 14]
    if ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[50 len 14] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]:
        return 0
    require ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]
    if 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    return (2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_cf42ee60(?) payable {
    require ext_code.size(0xfa3b314b1df07e4b9237c2d60c3299065f151f78)
    staticcall 0xfa3b314b1df07e4b9237c2d60c3299065f151f78.stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfa3b314b1df07e4b9237c2d60c3299065f151f78)
    staticcall 0xfa3b314b1df07e4b9237c2d60c3299065f151f78.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 11157320132538271434, sha3(8712802085545782520, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
    staticcall address(sha3(0, 11157320132538271434, sha3(8712802085545782520, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            return 0
        require 0 / ext_call.return_data[0]
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
        return (2 * 0 / ext_call.return_data[0])
    require ext_call.return_data[18 len 14]
    if ext_call.return_data[18 len 14] * ext_call.return_data[0] / ext_call.return_data[18 len 14] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not ext_call.return_data[18 len 14] * ext_call.return_data[0] / ext_call.return_data[0]:
        return 0
    require ext_call.return_data[18 len 14] * ext_call.return_data[0] / ext_call.return_data[0]
    if 2 * ext_call.return_data[18 len 14] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[18 len 14] * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    return (2 * ext_call.return_data[18 len 14] * ext_call.return_data[0] / ext_call.return_data[0])
}



}
