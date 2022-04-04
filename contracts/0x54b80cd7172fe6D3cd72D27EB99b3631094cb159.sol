contract main {




// =====================  Runtime code  =====================


const sub_5fd866df(?) = 0x782fa41444b12ec76e8c095faef1953929ee0e0d

const sub_6c362556(?) = 0x61ecd63e42c27415696e10864d70ecea4aa11289

const sub_c45a1ac1(?) = 0x78ea17559b3d2cf85a7f9c2c704eda119db5e6de

const Factory = 0xefa94de7a4656d787667c749f7e1223d71e9fd88


function _fallback() payable {
    revert
}

function sub_cf42ee60(?) payable {
    require ext_code.size(0x782fa41444b12ec76e8c095faef1953929ee0e0d)
    staticcall 0x782fa41444b12ec76e8c095faef1953929ee0e0d.stakingToken() with:
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
    require ext_code.size(0x782fa41444b12ec76e8c095faef1953929ee0e0d)
    staticcall 0x782fa41444b12ec76e8c095faef1953929ee0e0d.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(7056250279079080981, 0x78ea17559b3d2cf85a7f9c2c704eda119db5e6de), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(7056250279079080981, 0x78ea17559b3d2cf85a7f9c2c704eda119db5e6de), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
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

function sub_f7fbe177(?) payable {
    require ext_code.size(0x782fa41444b12ec76e8c095faef1953929ee0e0d)
    staticcall 0x782fa41444b12ec76e8c095faef1953929ee0e0d.stakingToken() with:
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
    require ext_code.size(0x782fa41444b12ec76e8c095faef1953929ee0e0d)
    staticcall 0x782fa41444b12ec76e8c095faef1953929ee0e0d.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(7056250279079080981, 0x78ea17559b3d2cf85a7f9c2c704eda119db5e6de), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(7056250279079080981, 0x78ea17559b3d2cf85a7f9c2c704eda119db5e6de), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
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
