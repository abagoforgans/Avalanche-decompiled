contract main {




// =====================  Runtime code  =====================


#
#  - sub_65011511(?)
#  - sub_c6c7a1ae(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address governorAddress;
mapping of uint256 configI;
address factoryAddress;
address swapFactoryAddress;
address swapRouterAddress;
address WETHAddress;
address storB531;

function governor() {
    return governorAddress
}

function getConfigA(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return configI[arg2 xor arg1]
}

function getConfigI(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return configI[arg2 xor arg1]
}

function getConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return configI[arg1]
}

function swapFactory() {
    return swapFactoryAddress
}

function WETH() {
    return WETHAddress
}

function swapRouter() {
    return swapRouterAddress
}

function factory() {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function renounceGovernorship() {
    if governorAddress != msg.sender:
        require msg.sender == storB531
    emit GovernorshipTransferred(governorAddress, 0);
    governorAddress = 0
}

function setConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if governorAddress != msg.sender:
        require msg.sender == storB531
    if arg2 != configI[arg1]:
        configI[arg1] = arg2
}

function setConfigI(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if governorAddress != msg.sender:
        require msg.sender == storB531
    if arg3 != configI[arg2 xor arg1]:
        configI[arg2 xor arg1] = arg3
}

function setConfigA(bytes32 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if governorAddress != msg.sender:
        require msg.sender == storB531
    if arg3 != configI[arg1 xor arg2]:
        configI[arg1 xor arg2] = arg3
}

function transferGovernorship(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require msg.sender == storB531
    require arg1
    emit GovernorshipTransferred(governorAddress, arg1);
    governorAddress = arg1
}

function __Governable_init_unchained(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
            uint8(stor0.field_8) = 0
}

function __Router_init_unchained(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if governorAddress != msg.sender:
        require msg.sender == storB531
    factoryAddress = arg1
    require ext_code.size(arg2)
    staticcall arg2.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    swapFactoryAddress = ext_call.return_data[12 len 20]
    swapRouterAddress = arg2
    require ext_code.size(arg2)
    staticcall arg2.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    WETHAddress = ext_call.return_data[12 len 20]
}

function __Router_init(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
    if governorAddress != msg.sender:
        require msg.sender == storB531
    factoryAddress = arg2
    require ext_code.size(arg3)
    staticcall arg3.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    swapFactoryAddress = ext_call.return_data[12 len 20]
    swapRouterAddress = arg3
    require ext_code.size(arg3)
    staticcall arg3.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    WETHAddress = ext_call.return_data[12 len 20]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function calcPrice4(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x884a0b6 with:
            gas gas_remaining wei
           args 0, 0, address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x47f8316f with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(swapFactoryAddress)
    staticcall swapFactoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not address(ext_call.return_data[0]):
        return 0
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 < arg2:
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
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
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0xb975d22a with:
                    gas gas_remaining wei
                   args 0 / Mask(112, 0, ext_call.return_data[0]), arg3, arg4, ext_call.return_data[0], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            return 0 / Mask(112, 0, ext_call.return_data[0]), 
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   ext_call.return_data[128]
        if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
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
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xb975d22a with:
                gas gas_remaining wei
               args 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), arg3, arg4, ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        return 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128]
    if not ext_call.return_data[18 len 14]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
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
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xb975d22a with:
                gas gas_remaining wei
               args 0 / Mask(112, 0, ext_call.return_data[32]), arg3, arg4, ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        return 0 / Mask(112, 0, ext_call.return_data[32]), 
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128]
    if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
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
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0xb975d22a with:
            gas gas_remaining wei
           args 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), arg3, arg4, ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function calcPrice1(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x93e1ea41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x884a0b6 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x47f8316f with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(swapFactoryAddress)
    staticcall swapFactoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not address(ext_call.return_data[0]):
        return 0
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(ext_call.return_data[0]) < address(ext_call.return_data[32]):
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
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
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0xb975d22a with:
                    gas gas_remaining wei
                   args 0 / Mask(112, 0, ext_call.return_data[0]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            return 0 / Mask(112, 0, ext_call.return_data[0]), 
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   ext_call.return_data[128]
        if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
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
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xb975d22a with:
                gas gas_remaining wei
               args 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        return 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128]
    if not ext_call.return_data[18 len 14]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
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
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xb975d22a with:
                gas gas_remaining wei
               args 0 / Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        return 0 / Mask(112, 0, ext_call.return_data[32]), 
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128]
    if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
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
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0xb975d22a with:
            gas gas_remaining wei
           args 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function sub_223e0902(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length <= 1:
        return cd[36]
    if cd[36] < 0:
        mem[(32 * ('cd', 4).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + 132] = -cd[36]
        mem[(32 * ('cd', 4).length) + 164] = 64
        mem[(32 * ('cd', 4).length) + 196] = ('cd', 4).length
        idx = 0
        s = 128
        t = (32 * ('cd', 4).length) + 228
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(swapRouterAddress)
        staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args mem[(32 * ('cd', 4).length) + 132 len (96 * ('cd', 4).length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * ('cd', 4).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _135 = mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, -cd[36]) >> 32
        require mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, -cd[36]) >> 32 <= test266151307()
        require (32 * ('cd', 4).length) + return_data.size + 128 > (32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, -cd[36]) >> 32 + 159
        _138 = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, -cd[36]) >> 32 + 128]
        require mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, -cd[36]) >> 32 + 128] <= test266151307()
        require (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, -cd[36]) >> 32 + 128]) + 32 >= 0 and (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, -cd[36]) >> 32 + 128]) + 160 <= test266151307()
        mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, -cd[36]) >> 32 + 128]) + 160
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = _138
        require return_data.size >= _135 + (32 * _138) + 32
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _138] = mem[(32 * ('cd', 4).length) + _135 + 160 len 32 * _138]
        require ('cd', 4).length - 1 < _138
        mem[mem[64]] = -mem[(32 * ('cd', 4).length - 1) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 160]
    else:
        if cd[36] <= 0:
            return cd[36]
        require ('cd', 4).length <= test266151307()
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require ('cd', 4).length + -idx - 1 < ('cd', 4).length
                require idx < ('cd', 4).length
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[(32 * ('cd', 4).length + -idx - 1) + 140 len 20]
                idx = idx + 1
                continue 
            mem[(64 * ('cd', 4).length) + 160] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 4).length) + 164] = cd[36]
            mem[(64 * ('cd', 4).length) + 196] = 64
            mem[(64 * ('cd', 4).length) + 228] = ('cd', 4).length
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = (64 * ('cd', 4).length) + 260
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(swapRouterAddress)
            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args cd[36], Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + 260 len 32 * ('cd', 4).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(64 * ('cd', 4).length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _175 = mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require (64 * ('cd', 4).length) + return_data.size + 160 > (64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 191
            _178 = mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160]
            require mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160] <= test266151307()
            require (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160]) + 32 >= 0 and (64 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160]) + 192 <= test266151307()
            mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160]) + 192
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 160] = _178
            require return_data.size >= _175 + (32 * _178) + 32
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 192 len 32 * _178] = mem[(64 * ('cd', 4).length) + _175 + 192 len 32 * _178]
            require 0 < _178
        else:
            mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                require ('cd', 4).length + -idx - 1 < ('cd', 4).length
                require idx < ('cd', 4).length
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[(32 * ('cd', 4).length + -idx - 1) + 140 len 20]
                idx = idx + 1
                continue 
            mem[(64 * ('cd', 4).length) + 160] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 4).length) + 164] = cd[36]
            mem[(64 * ('cd', 4).length) + 196] = 64
            mem[(64 * ('cd', 4).length) + 228] = ('cd', 4).length
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = (64 * ('cd', 4).length) + 260
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(swapRouterAddress)
            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args cd[36], Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + 260 len 32 * ('cd', 4).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(64 * ('cd', 4).length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _176 = mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require (64 * ('cd', 4).length) + return_data.size + 160 > (64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 191
            _179 = mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160]
            require mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160] <= test266151307()
            require (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160]) + 32 >= 0 and (64 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160]) + 192 <= test266151307()
            mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 4).length) + mem[(64 * ('cd', 4).length) + 160 len 4], Mask(224, 32, cd[36]) >> 32 + 160]) + 192
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 160] = _179
            require return_data.size >= _176 + (32 * _179) + 32
            mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 192 len 32 * _179] = mem[(64 * ('cd', 4).length) + _176 + 192 len 32 * _179]
            require 0 < _179
        mem[mem[64]] = mem[(64 * ('cd', 4).length) + ceil32(return_data.size) + 192]
    return memory
      from mem[64]
       len 32
}

function sub_a6ef1cf8(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not msg.value:
        require ('cd', 4).length
        _519 = mem[128]
        require 0 < ('cd', 36).length
        _521 = mem[(32 * ('cd', 4).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = calldata.size
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len calldata.size] = call.data[0 len calldata.size]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + calldata.size + 192] = 0
        require calldata.size - 4 <= test266151307()
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 192] = calldata.size - 4
        mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224 len calldata.size - 4] = call.data[4 len calldata.size - 4]
        require calldata.size - 4 >= 256
        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] <= test266151307()
        require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 255 < (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + calldata.size + 220
        if not calldata.size - 4:
            _538 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224] <= test266151307()
            require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 64 >= 32 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 256 <= test266151307()
            mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 256
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224] = _538
            require calldata.size + 28 >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + (32 * _538) + 64
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 256
            t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 256
            while idx < _538:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _776 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] <= test266151307()
            require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 255 < (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + calldata.size + 220
            _780 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224] <= test266151307()
            _784 = mem[64]
            require mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32 >= mem[64] and mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32
            mem[_784] = _780
            require calldata.size + 28 >= _776 + (32 * _780) + 64
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + _776 + 256
            t = _784 + 32
            while idx < _780:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1004 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 416]
            _1005 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 448]
            _1024 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = 160
            _1028 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224]
            mem[mem[64] + 192] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224]
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 256
            t = mem[64] + 224
            while idx < _1028:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * _1028) + 192
            _1208 = mem[_784]
            mem[mem[64] + (32 * _1028) + 224] = mem[_784]
            idx = 0
            s = _784 + 32
            t = mem[64] + (32 * _1028) + 256
            while idx < _1208:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1024 + 128] = _1004
            mem[_1024 + 160] = _1005
            _1380 = mem[64]
            mem[64] = _1024 + (32 * _1028) + (32 * _1208) + 256
            mem[_1024 + (32 * _1028) + (32 * _1208) + 256] = 0xcbec878200000000000000000000000000000000000000000000000000000000
            mem[_1024 + (32 * _1028) + (32 * _1208) + 260] = address(_519)
            mem[_1024 + (32 * _1028) + (32 * _1208) + 292] = address(_521)
            mem[_1024 + (32 * _1028) + (32 * _1208) + 324] = cd[68]
            mem[_1024 + (32 * _1028) + (32 * _1208) + 356] = cd[100]
            mem[_1024 + (32 * _1028) + (32 * _1208) + 388] = cd[132]
            mem[_1024 + (32 * _1028) + (32 * _1208) + 420] = cd[164]
            mem[_1024 + (32 * _1028) + (32 * _1208) + 452] = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_1024 + (32 * _1028) + (32 * _1208) + 484] = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_1024 + (32 * _1028) + (32 * _1208) + 516] = 288
            _1388 = mem[_1380]
            mem[_1024 + (32 * _1028) + (32 * _1208) + 548] = mem[_1380]
            mem[_1024 + (32 * _1028) + (32 * _1208) + 580 len ceil32(_1388)] = mem[_1380 + 32 len ceil32(_1388)]
            if ceil32(_1388) > _1388:
                mem[_1388 + _1024 + (32 * _1028) + (32 * _1208) + 580] = 0
            require ext_code.size(factoryAddress)
            call factoryAddress.0xcbec8782 with:
                 gas gas_remaining wei
                args address(_519), address(_521), cd[68], cd[100], cd[132], cd[164], 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 288, mem[_1024 + (32 * _1028) + (32 * _1208) + 548 len ceil32(_1388) + 32]
        else:
            _540 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224] <= test266151307()
            require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 64 >= 32 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 256 <= test266151307()
            mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 256
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224] = _540
            require calldata.size + 28 >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + (32 * _540) + 64
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 256
            t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 256
            while idx < _540:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _777 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] <= test266151307()
            require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 255 < (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + calldata.size + 220
            _781 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224] <= test266151307()
            _785 = mem[64]
            require mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32 >= mem[64] and mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32
            mem[_785] = _781
            require calldata.size + 28 >= _777 + (32 * _781) + 64
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + _777 + 256
            t = _785 + 32
            while idx < _781:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1010 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 416]
            _1011 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 448]
            _1025 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = 160
            _1029 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224]
            mem[mem[64] + 192] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224]
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 256
            t = mem[64] + 224
            while idx < _1029:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * _1029) + 192
            _1209 = mem[_785]
            mem[mem[64] + (32 * _1029) + 224] = mem[_785]
            idx = 0
            s = _785 + 32
            t = mem[64] + (32 * _1029) + 256
            while idx < _1209:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = _1010
            mem[mem[64] + 160] = _1011
            _1381 = mem[64]
            mem[64] = mem[64] + (32 * _1029) + (32 * _1209) + 256
            mem[_1025 + (32 * _1029) + (32 * _1209) + 256] = 0xcbec878200000000000000000000000000000000000000000000000000000000
            mem[_1025 + (32 * _1029) + (32 * _1209) + 260] = address(_519)
            mem[_1025 + (32 * _1029) + (32 * _1209) + 292] = address(_521)
            mem[_1025 + (32 * _1029) + (32 * _1209) + 324] = cd[68]
            mem[_1025 + (32 * _1029) + (32 * _1209) + 356] = cd[100]
            mem[_1025 + (32 * _1029) + (32 * _1209) + 388] = cd[132]
            mem[_1025 + (32 * _1029) + (32 * _1209) + 420] = cd[164]
            mem[_1025 + (32 * _1029) + (32 * _1209) + 452] = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_1025 + (32 * _1029) + (32 * _1209) + 484] = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_1025 + (32 * _1029) + (32 * _1209) + 516] = 288
            _1389 = mem[_1381]
            mem[_1025 + (32 * _1029) + (32 * _1209) + 548] = mem[_1381]
            mem[_1025 + (32 * _1029) + (32 * _1209) + 580 len ceil32(_1389)] = mem[_1381 + 32 len ceil32(_1389)]
            if ceil32(_1389) > _1389:
                mem[_1389 + _1025 + (32 * _1029) + (32 * _1209) + 580] = 0
            require ext_code.size(factoryAddress)
            call factoryAddress.0xcbec8782 with:
                 gas gas_remaining wei
                args address(_519), address(_521), cd[68], cd[100], cd[132], cd[164], 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 288, mem[_1025 + (32 * _1029) + (32 * _1209) + 548 len ceil32(_1389) + 32]
    else:
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 4).length
        _523 = mem[128]
        require 0 < ('cd', 36).length
        _525 = mem[(32 * ('cd', 4).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = calldata.size
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len calldata.size] = call.data[0 len calldata.size]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + calldata.size + 192] = 0
        require calldata.size - 4 <= test266151307()
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 192] = calldata.size - 4
        mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224 len calldata.size - 4] = call.data[4 len calldata.size - 4]
        require calldata.size - 4 >= 256
        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] <= test266151307()
        require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 255 < (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + calldata.size + 220
        if not calldata.size - 4:
            _542 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224] <= test266151307()
            require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 64 >= 32 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 256 <= test266151307()
            mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 256
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224] = _542
            require calldata.size + 28 >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + (32 * _542) + 64
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 256
            t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 256
            while idx < _542:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _778 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] <= test266151307()
            require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 255 < (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + calldata.size + 220
            _782 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224] <= test266151307()
            _786 = mem[64]
            require mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32 >= mem[64] and mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32
            mem[_786] = _782
            require calldata.size + 28 >= _778 + (32 * _782) + 64
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + _778 + 256
            t = _786 + 32
            while idx < _782:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1016 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 416]
            _1017 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 448]
            _1026 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = 160
            _1030 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224]
            mem[mem[64] + 192] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224]
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 256
            t = mem[64] + 224
            while idx < _1030:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * _1030) + 192
            _1210 = mem[_786]
            mem[mem[64] + (32 * _1030) + 224] = mem[_786]
            idx = 0
            s = _786 + 32
            t = mem[64] + (32 * _1030) + 256
            while idx < _1210:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = _1016
            mem[mem[64] + 160] = _1017
            _1382 = mem[64]
            mem[64] = mem[64] + (32 * _1030) + (32 * _1210) + 256
            mem[_1026 + (32 * _1030) + (32 * _1210) + 256] = 0xcbec878200000000000000000000000000000000000000000000000000000000
            mem[_1026 + (32 * _1030) + (32 * _1210) + 260] = address(_523)
            mem[_1026 + (32 * _1030) + (32 * _1210) + 292] = address(_525)
            mem[_1026 + (32 * _1030) + (32 * _1210) + 324] = cd[68]
            mem[_1026 + (32 * _1030) + (32 * _1210) + 356] = cd[100]
            mem[_1026 + (32 * _1030) + (32 * _1210) + 388] = cd[132]
            mem[_1026 + (32 * _1030) + (32 * _1210) + 420] = cd[164]
            mem[_1026 + (32 * _1030) + (32 * _1210) + 452] = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_1026 + (32 * _1030) + (32 * _1210) + 484] = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_1026 + (32 * _1030) + (32 * _1210) + 516] = 288
            _1390 = mem[_1382]
            mem[_1026 + (32 * _1030) + (32 * _1210) + 548] = mem[_1382]
            mem[_1026 + (32 * _1030) + (32 * _1210) + 580 len ceil32(_1390)] = mem[_1382 + 32 len ceil32(_1390)]
            if ceil32(_1390) > _1390:
                mem[_1390 + _1026 + (32 * _1030) + (32 * _1210) + 580] = 0
            require ext_code.size(factoryAddress)
            call factoryAddress.0xcbec8782 with:
                 gas gas_remaining wei
                args address(_523), address(_525), cd[68], cd[100], cd[132], cd[164], 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 288, mem[_1026 + (32 * _1030) + (32 * _1210) + 548 len ceil32(_1390) + 32]
        else:
            _544 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224] <= test266151307()
            require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 64 >= 32 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 256 <= test266151307()
            mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 224]) + 256
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224] = _544
            require calldata.size + 28 >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + (32 * _544) + 64
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 224] + 256
            t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 256
            while idx < _544:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _779 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] <= test266151307()
            require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 255 < (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + calldata.size + 220
            _783 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]
            require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224] <= test266151307()
            _787 = mem[64]
            require mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32 >= mem[64] and mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 256] + 224]) + 32
            mem[_787] = _783
            require calldata.size + 28 >= _779 + (32 * _783) + 64
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + _779 + 256
            t = _787 + 32
            while idx < _783:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1022 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 416]
            _1023 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + 448]
            _1027 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = 160
            _1031 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224]
            mem[mem[64] + 192] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 224]
            idx = 0
            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(calldata.size) + floor32(calldata.size + 27) + 256
            t = mem[64] + 224
            while idx < _1031:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * _1031) + 192
            _1211 = mem[_787]
            mem[mem[64] + (32 * _1031) + 224] = mem[_787]
            idx = 0
            s = _787 + 32
            t = mem[64] + (32 * _1031) + 256
            while idx < _1211:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = _1022
            mem[mem[64] + 160] = _1023
            _1383 = mem[64]
            mem[64] = mem[64] + (32 * _1031) + (32 * _1211) + 256
            mem[_1027 + (32 * _1031) + (32 * _1211) + 256] = 0xcbec878200000000000000000000000000000000000000000000000000000000
            mem[_1027 + (32 * _1031) + (32 * _1211) + 260] = address(_523)
            mem[_1027 + (32 * _1031) + (32 * _1211) + 292] = address(_525)
            mem[_1027 + (32 * _1031) + (32 * _1211) + 324] = cd[68]
            mem[_1027 + (32 * _1031) + (32 * _1211) + 356] = cd[100]
            mem[_1027 + (32 * _1031) + (32 * _1211) + 388] = cd[132]
            mem[_1027 + (32 * _1031) + (32 * _1211) + 420] = cd[164]
            mem[_1027 + (32 * _1031) + (32 * _1211) + 452] = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_1027 + (32 * _1031) + (32 * _1211) + 484] = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_1027 + (32 * _1031) + (32 * _1211) + 516] = 288
            _1391 = mem[_1383]
            mem[_1027 + (32 * _1031) + (32 * _1211) + 548] = mem[_1383]
            mem[_1027 + (32 * _1031) + (32 * _1211) + 580 len ceil32(_1391)] = mem[_1383 + 32 len ceil32(_1391)]
            if ceil32(_1391) > _1391:
                mem[_1391 + _1027 + (32 * _1031) + (32 * _1211) + 580] = 0
            require ext_code.size(factoryAddress)
            call factoryAddress.0xcbec8782 with:
                 gas gas_remaining wei
                args address(_523), address(_525), cd[68], cd[100], cd[132], cd[164], 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 288, mem[_1027 + (32 * _1031) + (32 * _1211) + 548 len ceil32(_1391) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(WETHAddress)
        call WETHAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
    return address(ext_call.return_data[0]), address(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96]
}



}
