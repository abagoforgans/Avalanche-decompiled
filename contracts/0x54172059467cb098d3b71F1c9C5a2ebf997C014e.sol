contract main {




// =====================  Runtime code  =====================


const sub_916180f4(?) = 0xe006716ae6caa486d77084c1cca1428fb99c877b

const Factory = 0xefa94de7a4656d787667c749f7e1223d71e9fd88

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CYCLE = 0x81440c939f2c1e34fc7048e518a637205a632a74


function _fallback() payable {
    revert
}

function sub_cce5603e(?) payable {
    require ext_code.size(0xe006716ae6caa486d77084c1cca1428fb99c877b)
    staticcall 0xe006716ae6caa486d77084c1cca1428fb99c877b.stakingToken() with:
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
    require ext_code.size(0xe006716ae6caa486d77084c1cca1428fb99c877b)
    staticcall 0xe006716ae6caa486d77084c1cca1428fb99c877b.totalSupply() with:
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
