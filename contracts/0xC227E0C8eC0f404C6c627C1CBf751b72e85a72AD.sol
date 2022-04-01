contract main {




// =====================  Runtime code  =====================


const sub_127bf434(?) = 0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c

const sub_8aeea3cc(?) = 0xa842c15ed93c8d8cac6b7e3c4872f88e115dfb33

const sub_c45a1ac1(?) = 0x78ea17559b3d2cf85a7f9c2c704eda119db5e6de

const Factory = 0x91d35d7f63487909c863001ddca481c6de47091

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


function _fallback() payable {
    revert
}

function sub_358f5d6f(?) payable {
    require ext_code.size(0xa842c15ed93c8d8cac6b7e3c4872f88e115dfb33)
    staticcall 0xa842c15ed93c8d8cac6b7e3c4872f88e115dfb33.stakingToken() with:
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
    require ext_code.size(0xa842c15ed93c8d8cac6b7e3c4872f88e115dfb33)
    staticcall 0xa842c15ed93c8d8cac6b7e3c4872f88e115dfb33.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 656740322330838928, sha3(8712802085545782520, 0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)))
    staticcall address(sha3(0, 656740322330838928, sha3(8712802085545782520, 0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)).getReserves() with:
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
    require ext_code.size(0xa842c15ed93c8d8cac6b7e3c4872f88e115dfb33)
    staticcall 0xa842c15ed93c8d8cac6b7e3c4872f88e115dfb33.stakingToken() with:
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
    require ext_code.size(0xa842c15ed93c8d8cac6b7e3c4872f88e115dfb33)
    staticcall 0xa842c15ed93c8d8cac6b7e3c4872f88e115dfb33.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 656740322330838928, sha3(8712802085545782520, 0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)))
    staticcall address(sha3(0, 656740322330838928, sha3(8712802085545782520, 0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)).getReserves() with:
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
