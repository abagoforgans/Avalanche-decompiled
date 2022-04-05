contract main {




// =====================  Runtime code  =====================


const sub_288a1ec3(?) = 0x8d88e48465f30acfb8dac0b3e35c9d6d7d36abaf

const sub_33623794(?) = 0x2b6947c933441424f5a8bb95fc73471c907ee874

const sub_c45a1ac1(?) = 0x78ea17559b3d2cf85a7f9c2c704eda119db5e6de

const Factory = 0xcfba329d49c24b70f3a8b9cc0853493d4645436b


function _fallback() payable {
    revert
}

function sub_b12a942d(?) payable {
    require ext_code.size(0x2b6947c933441424f5a8bb95fc73471c907ee874)
    staticcall 0x2b6947c933441424f5a8bb95fc73471c907ee874.0x72f702f3 with:
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
    require ext_code.size(0x2b6947c933441424f5a8bb95fc73471c907ee874)
    staticcall 0x2b6947c933441424f5a8bb95fc73471c907ee874.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 14968331962647989104, sha3(8712802085545782520, 0x8d88e48465f30acfb8dac0b3e35c9d6d7d36abaf), 0x60df5edf580dff3274fff5a3d83ad2b6ef6e296f71c3bc28c939e641888bd5b0)))
    staticcall address(sha3(0, 14968331962647989104, sha3(8712802085545782520, 0x8d88e48465f30acfb8dac0b3e35c9d6d7d36abaf), 0x60df5edf580dff3274fff5a3d83ad2b6ef6e296f71c3bc28c939e641888bd5b0)).getReserves() with:
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
    require ext_code.size(0x2b6947c933441424f5a8bb95fc73471c907ee874)
    staticcall 0x2b6947c933441424f5a8bb95fc73471c907ee874.0x72f702f3 with:
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
    require ext_code.size(0x2b6947c933441424f5a8bb95fc73471c907ee874)
    staticcall 0x2b6947c933441424f5a8bb95fc73471c907ee874.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 14968331962647989104, sha3(8712802085545782520, 0x8d88e48465f30acfb8dac0b3e35c9d6d7d36abaf), 0x60df5edf580dff3274fff5a3d83ad2b6ef6e296f71c3bc28c939e641888bd5b0)))
    staticcall address(sha3(0, 14968331962647989104, sha3(8712802085545782520, 0x8d88e48465f30acfb8dac0b3e35c9d6d7d36abaf), 0x60df5edf580dff3274fff5a3d83ad2b6ef6e296f71c3bc28c939e641888bd5b0)).getReserves() with:
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
