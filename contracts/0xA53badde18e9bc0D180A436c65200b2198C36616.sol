contract main {




// =====================  Runtime code  =====================


#
#  - sub_65011511(?)
#  - sub_a6ef1cf8(?)
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
    staticcall arg2.0xad5c4648 with:
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
    staticcall arg3.0xad5c4648 with:
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
        if not ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalSupply() with:
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
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.calcPrice(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
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
        staticcall address(ext_call.return_data[0]).totalSupply() with:
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
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.calcPrice(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
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
    if not ext_call.return_data[50 len 14]:
        return 0
    if not ext_call.return_data[18 len 14]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).totalSupply() with:
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
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.calcPrice(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
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
    staticcall address(ext_call.return_data[0]).totalSupply() with:
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
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.calcPrice(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
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
    staticcall arg1.attributes() with:
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
        if not ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalSupply() with:
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
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.calcPrice(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
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
        staticcall address(ext_call.return_data[0]).totalSupply() with:
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
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.calcPrice(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
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
    if not ext_call.return_data[50 len 14]:
        return 0
    if not ext_call.return_data[18 len 14]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).totalSupply() with:
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
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.calcPrice(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
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
    staticcall address(ext_call.return_data[0]).totalSupply() with:
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
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.calcPrice(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
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
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, -cd[36]) >> 32 + 128]
        require return_data.size >= _135 + (32 * _138) + 32
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _138] = mem[(32 * ('cd', 4).length) + _135 + 160 len 32 * _138]
        if ('cd', 4).length - 1 < _138:
            return -mem[(32 * ('cd', 4).length - 1) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 160]
        revert
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

function sub_c6c7a1ae(?) {
    require calldata.size - 4 >= 224
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
    if 0 < ('cd', 4).length:
        if 0 < ('cd', 36).length:
            _1411 = mem[(32 * ('cd', 4).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 164] = mem[140 len 20]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 196] = address(_1411)
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 228] = cd[68]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 260] = cd[100]
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0x884a0b6 with:
                    gas gas_remaining wei
                   args mem[140 len 20], address(_1411), cd[68], cd[100]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ('cd', 4).length:
                if 0 < ('cd', 36).length:
                    _1419 = mem[(32 * ('cd', 4).length) + 160]
                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 164] = mem[140 len 20]
                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 196] = address(_1419)
                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 228] = cd[68]
                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 260] = cd[100]
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.0x47f8316f with:
                            gas gas_remaining wei
                           args mem[140 len 20], address(_1419), cd[68], cd[100]
                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not address(ext_call.return_data[0]):
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 260] = 0
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 292] = cd[132]
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 324] = cd[164]
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 356] = cd[196]
                        require ext_code.size(factoryAddress)
                        staticcall factoryAddress.calcDeltaWithFeeAndSlippage(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, int256 rg5, int256 rg6, uint256 rg7) with:
                                gas gas_remaining wei
                               args cd[68], cd[100], 0, 0, cd[132], cd[164], cd[196]
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 160 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        if ('cd', 4).length <= 1:
                            if ('cd', 36).length <= 1:
                                return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                            if ext_call.return_data[32] < 0:
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 164] = -ext_call.return_data[32]
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 196] = 64
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 228] = ('cd', 36).length
                                idx = 0
                                s = (32 * ('cd', 4).length) + 160
                                t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260
                                while idx < ('cd', 36).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(swapRouterAddress)
                                staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args -ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260 len 32 * ('cd', 36).length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 160
                                require return_data.size >= 32
                                _2224 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32
                                require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 <= test266151307()
                                require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 160 > (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 191
                                _2242 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]
                                require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160] <= test266151307()
                                require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]) + 32 >= 0 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]) + 192 <= test266151307()
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 160] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]
                                require return_data.size >= _2224 + (32 * _2242) + 32
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192 len 32 * _2242] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2224 + 192 len 32 * _2242]
                                var96001 = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2224 + (32 * _2242) + 192
                                if ('cd', 36).length - 1 < _2242:
                                    return ext_call.return_data[0], 
                                           -mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192],
                                           ext_call.return_data[64],
                                           ext_call.return_data[96]
                            else:
                                if ext_call.return_data[32] <= 0:
                                    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                require ('cd', 36).length <= test266151307()
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160] = ('cd', 36).length
                                if not ('cd', 36).length:
                                    idx = 0
                                    while idx < ('cd', 36).length:
                                        require ('cd', 36).length + -idx - 1 < ('cd', 36).length
                                        require idx < ('cd', 36).length
                                        mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 36).length + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                        idx = idx + 1
                                        continue 
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 228] = 64
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                                    idx = 0
                                    s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192
                                    t = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(swapRouterAddress)
                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2794 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                    require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                    require (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 192 > (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223
                                    _2812 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                    require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] <= test266151307()
                                    require (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32 >= 0 and (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 224 <= test266151307()
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                    require return_data.size >= _2794 + (32 * _2812) + 32
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224 len 32 * _2812] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2794 + 224 len 32 * _2812]
                                    var104001 = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2794 + (32 * _2812) + 224
                                    if 0 < _2812:
                                        return ext_call.return_data[0], 
                                               mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224],
                                               ext_call.return_data[64],
                                               ext_call.return_data[96]
                                else:
                                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                                    idx = 0
                                    while idx < ('cd', 36).length:
                                        require ('cd', 36).length + -idx - 1 < ('cd', 36).length
                                        require idx < ('cd', 36).length
                                        mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 36).length + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                        idx = idx + 1
                                        continue 
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 228] = 64
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                                    idx = 0
                                    s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192
                                    t = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(swapRouterAddress)
                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2795 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                    require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                    require (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 192 > (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223
                                    _2813 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                    require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] <= test266151307()
                                    require (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32 >= 0 and (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 224 <= test266151307()
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                    require return_data.size >= _2795 + (32 * _2813) + 32
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224 len 32 * _2813] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2795 + 224 len 32 * _2813]
                                    if 0 < _2813:
                                        return ext_call.return_data[0], 
                                               mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224],
                                               ext_call.return_data[64],
                                               ext_call.return_data[96]
                        else:
                            if ext_call.return_data[0] < 0:
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 164] = -ext_call.return_data[0]
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 196] = 64
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 228] = ('cd', 4).length
                                idx = 0
                                s = 128
                                t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260
                                while idx < ('cd', 4).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(swapRouterAddress)
                                staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args -ext_call.return_data[0], Array(len=('cd', 4).length, data=mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260 len 32 * ('cd', 4).length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 160
                                require return_data.size >= 32
                                _2226 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32
                                require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 <= test266151307()
                                require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 160 > (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 191
                                _2244 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160]
                                require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160] <= test266151307()
                                require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160]) + 32 >= 0 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160]) + 192 <= test266151307()
                                mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160]) + 192
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 160] = _2244
                                require return_data.size >= _2226 + (32 * _2244) + 32
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192 len 32 * _2244] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2226 + 192 len 32 * _2244]
                                if ('cd', 4).length - 1 < _2244:
                                    _2766 = mem[(32 * ('cd', 4).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192]
                                    if ('cd', 36).length <= 1:
                                        mem[mem[64]] = -mem[(32 * ('cd', 4).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192]
                                        mem[mem[64] + 64] = ext_call.return_data[64]
                                        mem[mem[64] + 96] = ext_call.return_data[96]
                                        return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                    if ext_call.return_data[32] < 0:
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = -ext_call.return_data[32]
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = ('cd', 36).length
                                        idx = 0
                                        s = (32 * ('cd', 4).length) + 160
                                        t = mem[64] + 100
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(swapRouterAddress)
                                        staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args -ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3294 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3312 = mem[_3294]
                                        require mem[_3294] <= test266151307()
                                        require _3294 + return_data.size > _3294 + mem[_3294] + 31
                                        _3330 = mem[_3294 + mem[_3294]]
                                        require mem[_3294 + mem[_3294]] <= test266151307()
                                        require (32 * mem[_3294 + mem[_3294]]) + 32 >= 0 and _3294 + ceil32(return_data.size) + (32 * mem[_3294 + mem[_3294]]) + 32 <= test266151307()
                                        mem[64] = _3294 + ceil32(return_data.size) + (32 * mem[_3294 + mem[_3294]]) + 32
                                        mem[_3294 + ceil32(return_data.size)] = _3330
                                        require return_data.size >= _3312 + (32 * _3330) + 32
                                        mem[_3294 + ceil32(return_data.size) + 32 len 32 * _3330] = mem[_3294 + _3312 + 32 len 32 * _3330]
                                        var122001 = _3294 + _3312 + (32 * _3330) + 32
                                        if mem[(32 * ('cd', 4).length) + 128] - 1 < _3330:
                                            return -_2766, 
                                                   -mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + _3294 + ceil32(return_data.size) + 32],
                                                   ext_call.return_data[64],
                                                   ext_call.return_data[96]
                                    else:
                                        if ext_call.return_data[32] <= 0:
                                            mem[mem[64]] = -mem[(32 * ('cd', 4).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192]
                                            mem[mem[64] + 64] = ext_call.return_data[64]
                                            mem[mem[64] + 96] = ext_call.return_data[96]
                                            return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                        require ('cd', 36).length <= test266151307()
                                        _2830 = mem[64]
                                        mem[mem[64]] = ('cd', 36).length
                                        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                        if not ('cd', 36).length:
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                require idx < mem[_2830]
                                                mem[(32 * idx) + _2830 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = ext_call.return_data[32]
                                            mem[mem[64] + 36] = 64
                                            _3290 = mem[_2830]
                                            mem[mem[64] + 68] = mem[_2830]
                                            idx = 0
                                            s = _2830 + 32
                                            t = mem[64] + 100
                                            while idx < _3290:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3290) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3684 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3702 = mem[_3684]
                                            require mem[_3684] <= test266151307()
                                            require _3684 + return_data.size > _3684 + mem[_3684] + 31
                                            _3720 = mem[_3684 + mem[_3684]]
                                            require mem[_3684 + mem[_3684]] <= test266151307()
                                            require (32 * mem[_3684 + mem[_3684]]) + 32 >= 0 and _3684 + ceil32(return_data.size) + (32 * mem[_3684 + mem[_3684]]) + 32 <= test266151307()
                                            mem[64] = _3684 + ceil32(return_data.size) + (32 * mem[_3684 + mem[_3684]]) + 32
                                            mem[_3684 + ceil32(return_data.size)] = _3720
                                            require return_data.size >= _3702 + (32 * _3720) + 32
                                            mem[_3684 + ceil32(return_data.size) + 32 len 32 * _3720] = mem[_3684 + _3702 + 32 len 32 * _3720]
                                            if 0 < _3720:
                                                return -_2766, mem[_3684 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                                        else:
                                            mem[_2830 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                require idx < mem[_2830]
                                                mem[(32 * idx) + _2830 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = ext_call.return_data[32]
                                            mem[mem[64] + 36] = 64
                                            _3291 = mem[_2830]
                                            mem[mem[64] + 68] = mem[_2830]
                                            idx = 0
                                            s = _2830 + 32
                                            t = mem[64] + 100
                                            while idx < _3291:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3291) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3685 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3703 = mem[_3685]
                                            require mem[_3685] <= test266151307()
                                            require _3685 + return_data.size > _3685 + mem[_3685] + 31
                                            _3721 = mem[_3685 + mem[_3685]]
                                            require mem[_3685 + mem[_3685]] <= test266151307()
                                            require (32 * mem[_3685 + mem[_3685]]) + 32 >= 0 and _3685 + ceil32(return_data.size) + (32 * mem[_3685 + mem[_3685]]) + 32 <= test266151307()
                                            mem[64] = _3685 + ceil32(return_data.size) + (32 * mem[_3685 + mem[_3685]]) + 32
                                            mem[_3685 + ceil32(return_data.size)] = _3721
                                            require return_data.size >= _3703 + (32 * _3721) + 32
                                            mem[_3685 + ceil32(return_data.size) + 32 len 32 * _3721] = mem[_3685 + _3703 + 32 len 32 * _3721]
                                            var131001 = _3685 + _3703 + (32 * _3721) + 32
                                            if 0 < _3721:
                                                return -_2766, mem[_3685 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                            else:
                                if ext_call.return_data[0] <= 0:
                                    if ('cd', 36).length <= 1:
                                        return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                    if ext_call.return_data[32] < 0:
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 164] = -ext_call.return_data[32]
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 196] = 64
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 228] = ('cd', 36).length
                                        idx = 0
                                        s = (32 * ('cd', 4).length) + 160
                                        t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(swapRouterAddress)
                                        staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args -ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260 len 32 * ('cd', 36).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 160
                                        require return_data.size >= 32
                                        _2225 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32
                                        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 <= test266151307()
                                        require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 160 > (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 191
                                        _2243 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]
                                        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160] <= test266151307()
                                        require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]) + 32 >= 0 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]) + 192 <= test266151307()
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 160] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]
                                        require return_data.size >= _2225 + (32 * _2243) + 32
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192 len 32 * _2243] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2225 + 192 len 32 * _2243]
                                        var98001 = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2225 + (32 * _2243) + 192
                                        if ('cd', 36).length - 1 < _2243:
                                            return ext_call.return_data[0], 
                                                   -mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192],
                                                   ext_call.return_data[64],
                                                   ext_call.return_data[96]
                                    else:
                                        if ext_call.return_data[32] <= 0:
                                            return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                        require ('cd', 36).length <= test266151307()
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160] = ('cd', 36).length
                                        if not ('cd', 36).length:
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                require ('cd', 36).length + -idx - 1 < ('cd', 36).length
                                                require idx < ('cd', 36).length
                                                mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 36).length + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                idx = idx + 1
                                                continue 
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 228] = 64
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                                            idx = 0
                                            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192
                                            t = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292
                                            while idx < ('cd', 36).length:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            _2796 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                            require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                            require (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 192 > (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223
                                            _2814 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                            require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] <= test266151307()
                                            require (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32 >= 0 and (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 224 <= test266151307()
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                            require return_data.size >= _2796 + (32 * _2814) + 32
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224 len 32 * _2814] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2796 + 224 len 32 * _2814]
                                            if 0 < _2814:
                                                return ext_call.return_data[0], 
                                                       mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224],
                                                       ext_call.return_data[64],
                                                       ext_call.return_data[96]
                                        else:
                                            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                require ('cd', 36).length + -idx - 1 < ('cd', 36).length
                                                require idx < ('cd', 36).length
                                                mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 36).length + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                idx = idx + 1
                                                continue 
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 228] = 64
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                                            idx = 0
                                            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192
                                            t = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292
                                            while idx < ('cd', 36).length:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            _2797 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                            require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                            require (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 192 > (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223
                                            _2815 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                            require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] <= test266151307()
                                            require (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32 >= 0 and (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 224 <= test266151307()
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                            require return_data.size >= _2797 + (32 * _2815) + 32
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224 len 32 * _2815] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2797 + 224 len 32 * _2815]
                                            if 0 < _2815:
                                                return ext_call.return_data[0], 
                                                       mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224],
                                                       ext_call.return_data[64],
                                                       ext_call.return_data[96]
                                else:
                                    require ('cd', 4).length <= test266151307()
                                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160] = ('cd', 4).length
                                    if not ('cd', 4).length:
                                        idx = 0
                                        while idx < ('cd', 4).length:
                                            require ('cd', 4).length + -idx - 1 < ('cd', 4).length
                                            require idx < ('cd', 4).length
                                            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 4).length + -idx - 1) + 140 len 20]
                                            idx = idx + 1
                                            continue 
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 228] = 64
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260] = ('cd', 4).length
                                        idx = 0
                                        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192
                                        t = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292
                                        while idx < ('cd', 4).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(swapRouterAddress)
                                        staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0], Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 4).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _2798 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                        require mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 192 > (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                                        _2816 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                        require mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                                        require (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                                        mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192] = _2816
                                        require return_data.size >= _2798 + (32 * _2816) + 32
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224 len 32 * _2816] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2798 + 224 len 32 * _2816]
                                        var100001 = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2798 + (32 * _2816) + 224
                                        if 0 < _2816:
                                            _3280 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224]
                                            if mem[(32 * ('cd', 4).length) + 128] <= 1:
                                                mem[mem[64]] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224]
                                                mem[mem[64] + 64] = ext_call.return_data[64]
                                                mem[mem[64] + 96] = ext_call.return_data[96]
                                                return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                            if ext_call.return_data[32] < 0:
                                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = -ext_call.return_data[32]
                                                mem[mem[64] + 36] = 64
                                                _3334 = mem[(32 * ('cd', 4).length) + 128]
                                                mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + 128]
                                                idx = 0
                                                s = (32 * ('cd', 4).length) + 160
                                                t = mem[64] + 100
                                                while idx < _3334:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(swapRouterAddress)
                                                staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args -ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3334) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3682 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3700 = mem[_3682]
                                                require mem[_3682] <= test266151307()
                                                require _3682 + return_data.size > _3682 + mem[_3682] + 31
                                                _3718 = mem[_3682 + mem[_3682]]
                                                require mem[_3682 + mem[_3682]] <= test266151307()
                                                require (32 * mem[_3682 + mem[_3682]]) + 32 >= 0 and _3682 + ceil32(return_data.size) + (32 * mem[_3682 + mem[_3682]]) + 32 <= test266151307()
                                                mem[64] = _3682 + ceil32(return_data.size) + (32 * mem[_3682 + mem[_3682]]) + 32
                                                mem[_3682 + ceil32(return_data.size)] = _3718
                                                require return_data.size >= _3700 + (32 * _3718) + 32
                                                mem[_3682 + ceil32(return_data.size) + 32 len 32 * _3718] = mem[_3682 + _3700 + 32 len 32 * _3718]
                                                if mem[(32 * ('cd', 4).length) + 128] - 1 < _3718:
                                                    return _3280, 
                                                           -mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + _3682 + ceil32(return_data.size) + 32],
                                                           ext_call.return_data[64],
                                                           ext_call.return_data[96]
                                            else:
                                                if ext_call.return_data[32] <= 0:
                                                    mem[mem[64]] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224]
                                                    mem[mem[64] + 64] = ext_call.return_data[64]
                                                    mem[mem[64] + 96] = ext_call.return_data[96]
                                                    return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                                _3333 = mem[(32 * ('cd', 4).length) + 128]
                                                require mem[(32 * ('cd', 4).length) + 128] <= test266151307()
                                                _3348 = mem[64]
                                                mem[mem[64]] = mem[(32 * ('cd', 4).length) + 128]
                                                mem[64] = mem[64] + (32 * _3333) + 32
                                                if not _3333:
                                                    _3602 = mem[(32 * ('cd', 4).length) + 128]
                                                    idx = 0
                                                    while idx < _3602:
                                                        require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                        require idx < mem[_3348]
                                                        mem[(32 * idx) + _3348 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                        _3602 = mem[(32 * ('cd', 4).length) + 128]
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ext_call.return_data[32]
                                                    mem[mem[64] + 36] = 64
                                                    _3674 = mem[_3348]
                                                    mem[mem[64] + 68] = mem[_3348]
                                                    idx = 0
                                                    s = _3348 + 32
                                                    t = mem[64] + 100
                                                    while idx < _3674:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(swapRouterAddress)
                                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3674) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3894 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3910 = mem[_3894]
                                                    require mem[_3894] <= test266151307()
                                                    require _3894 + return_data.size > _3894 + mem[_3894] + 31
                                                    _3926 = mem[_3894 + mem[_3894]]
                                                    require mem[_3894 + mem[_3894]] <= test266151307()
                                                    require (32 * mem[_3894 + mem[_3894]]) + 32 >= 0 and _3894 + ceil32(return_data.size) + (32 * mem[_3894 + mem[_3894]]) + 32 <= test266151307()
                                                    mem[64] = _3894 + ceil32(return_data.size) + (32 * mem[_3894 + mem[_3894]]) + 32
                                                    mem[_3894 + ceil32(return_data.size)] = _3926
                                                    require return_data.size >= _3910 + (32 * _3926) + 32
                                                    mem[_3894 + ceil32(return_data.size) + 32 len 32 * _3926] = mem[_3894 + _3910 + 32 len 32 * _3926]
                                                    if 0 < _3926:
                                                        return _3280, mem[_3894 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                                                else:
                                                    mem[_3348 + 32 len 32 * _3333] = call.data[calldata.size len 32 * _3333]
                                                    _3603 = mem[(32 * ('cd', 4).length) + 128]
                                                    idx = 0
                                                    while idx < _3603:
                                                        require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                        require idx < mem[_3348]
                                                        mem[(32 * idx) + _3348 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                        _3603 = mem[(32 * ('cd', 4).length) + 128]
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ext_call.return_data[32]
                                                    mem[mem[64] + 36] = 64
                                                    _3675 = mem[_3348]
                                                    mem[mem[64] + 68] = mem[_3348]
                                                    idx = 0
                                                    s = _3348 + 32
                                                    t = mem[64] + 100
                                                    while idx < _3675:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(swapRouterAddress)
                                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3675) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3895 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3911 = mem[_3895]
                                                    require mem[_3895] <= test266151307()
                                                    require _3895 + return_data.size > _3895 + mem[_3895] + 31
                                                    _3927 = mem[_3895 + mem[_3895]]
                                                    require mem[_3895 + mem[_3895]] <= test266151307()
                                                    require (32 * mem[_3895 + mem[_3895]]) + 32 >= 0 and _3895 + ceil32(return_data.size) + (32 * mem[_3895 + mem[_3895]]) + 32 <= test266151307()
                                                    mem[64] = _3895 + ceil32(return_data.size) + (32 * mem[_3895 + mem[_3895]]) + 32
                                                    mem[_3895 + ceil32(return_data.size)] = _3927
                                                    require return_data.size >= _3911 + (32 * _3927) + 32
                                                    mem[_3895 + ceil32(return_data.size) + 32 len 32 * _3927] = mem[_3895 + _3911 + 32 len 32 * _3927]
                                                    if 0 < _3927:
                                                        return _3280, mem[_3895 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                                    else:
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                                        idx = 0
                                        while idx < ('cd', 4).length:
                                            require ('cd', 4).length + -idx - 1 < ('cd', 4).length
                                            require idx < ('cd', 4).length
                                            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 4).length + -idx - 1) + 140 len 20]
                                            idx = idx + 1
                                            continue 
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 228] = 64
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 260] = ('cd', 4).length
                                        idx = 0
                                        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192
                                        t = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292
                                        while idx < ('cd', 4).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(swapRouterAddress)
                                        staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0], Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 4).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _2799 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                        require mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 192 > (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                                        _2817 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                        require mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                                        require (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                                        mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 192] = _2817
                                        require return_data.size >= _2799 + (32 * _2817) + 32
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224 len 32 * _2817] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _2799 + 224 len 32 * _2817]
                                        if 0 < _2817:
                                            _3281 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224]
                                            if mem[(32 * ('cd', 4).length) + 128] <= 1:
                                                mem[mem[64]] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224]
                                                mem[mem[64] + 64] = ext_call.return_data[64]
                                                mem[mem[64] + 96] = ext_call.return_data[96]
                                                return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                            if ext_call.return_data[32] < 0:
                                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = -ext_call.return_data[32]
                                                mem[mem[64] + 36] = 64
                                                _3337 = mem[(32 * ('cd', 4).length) + 128]
                                                mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + 128]
                                                idx = 0
                                                s = (32 * ('cd', 4).length) + 160
                                                t = mem[64] + 100
                                                while idx < _3337:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(swapRouterAddress)
                                                staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args -ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3337) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3683 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3701 = mem[_3683]
                                                require mem[_3683] <= test266151307()
                                                require _3683 + return_data.size > _3683 + mem[_3683] + 31
                                                _3719 = mem[_3683 + mem[_3683]]
                                                require mem[_3683 + mem[_3683]] <= test266151307()
                                                require (32 * mem[_3683 + mem[_3683]]) + 32 >= 0 and _3683 + ceil32(return_data.size) + (32 * mem[_3683 + mem[_3683]]) + 32 <= test266151307()
                                                mem[64] = _3683 + ceil32(return_data.size) + (32 * mem[_3683 + mem[_3683]]) + 32
                                                mem[_3683 + ceil32(return_data.size)] = _3719
                                                require return_data.size >= _3701 + (32 * _3719) + 32
                                                mem[_3683 + ceil32(return_data.size) + 32 len 32 * _3719] = mem[_3683 + _3701 + 32 len 32 * _3719]
                                                var131001 = _3683 + _3701 + (32 * _3719) + 32
                                                if mem[(32 * ('cd', 4).length) + 128] - 1 < _3719:
                                                    return _3281, 
                                                           -mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + _3683 + ceil32(return_data.size) + 32],
                                                           ext_call.return_data[64],
                                                           ext_call.return_data[96]
                                            else:
                                                if ext_call.return_data[32] <= 0:
                                                    mem[mem[64]] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 224]
                                                    mem[mem[64] + 64] = ext_call.return_data[64]
                                                    mem[mem[64] + 96] = ext_call.return_data[96]
                                                    return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                                _3336 = mem[(32 * ('cd', 4).length) + 128]
                                                require mem[(32 * ('cd', 4).length) + 128] <= test266151307()
                                                _3349 = mem[64]
                                                mem[mem[64]] = mem[(32 * ('cd', 4).length) + 128]
                                                mem[64] = mem[64] + (32 * _3336) + 32
                                                if not _3336:
                                                    _3604 = mem[(32 * ('cd', 4).length) + 128]
                                                    idx = 0
                                                    while idx < _3604:
                                                        require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                        require idx < mem[_3349]
                                                        mem[(32 * idx) + _3349 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                        _3604 = mem[(32 * ('cd', 4).length) + 128]
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ext_call.return_data[32]
                                                    mem[mem[64] + 36] = 64
                                                    _3676 = mem[_3349]
                                                    mem[mem[64] + 68] = mem[_3349]
                                                    idx = 0
                                                    s = _3349 + 32
                                                    t = mem[64] + 100
                                                    while idx < _3676:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(swapRouterAddress)
                                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3676) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3896 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3912 = mem[_3896]
                                                    require mem[_3896] <= test266151307()
                                                    require _3896 + return_data.size > _3896 + mem[_3896] + 31
                                                    _3928 = mem[_3896 + mem[_3896]]
                                                    require mem[_3896 + mem[_3896]] <= test266151307()
                                                    require (32 * mem[_3896 + mem[_3896]]) + 32 >= 0 and _3896 + ceil32(return_data.size) + (32 * mem[_3896 + mem[_3896]]) + 32 <= test266151307()
                                                    mem[64] = _3896 + ceil32(return_data.size) + (32 * mem[_3896 + mem[_3896]]) + 32
                                                    mem[_3896 + ceil32(return_data.size)] = _3928
                                                    require return_data.size >= _3912 + (32 * _3928) + 32
                                                    mem[_3896 + ceil32(return_data.size) + 32 len 32 * _3928] = mem[_3896 + _3912 + 32 len 32 * _3928]
                                                    if 0 < _3928:
                                                        return _3281, mem[_3896 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                                                else:
                                                    mem[_3349 + 32 len 32 * _3336] = call.data[calldata.size len 32 * _3336]
                                                    _3605 = mem[(32 * ('cd', 4).length) + 128]
                                                    idx = 0
                                                    while idx < _3605:
                                                        require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                        require idx < mem[_3349]
                                                        mem[(32 * idx) + _3349 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                        _3605 = mem[(32 * ('cd', 4).length) + 128]
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ext_call.return_data[32]
                                                    mem[mem[64] + 36] = 64
                                                    _3677 = mem[_3349]
                                                    mem[mem[64] + 68] = mem[_3349]
                                                    idx = 0
                                                    s = _3349 + 32
                                                    t = mem[64] + 100
                                                    while idx < _3677:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(swapRouterAddress)
                                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3677) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3897 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3913 = mem[_3897]
                                                    require mem[_3897] <= test266151307()
                                                    require _3897 + return_data.size > _3897 + mem[_3897] + 31
                                                    _3929 = mem[_3897 + mem[_3897]]
                                                    require mem[_3897 + mem[_3897]] <= test266151307()
                                                    require (32 * mem[_3897 + mem[_3897]]) + 32 >= 0 and _3897 + ceil32(return_data.size) + (32 * mem[_3897 + mem[_3897]]) + 32 <= test266151307()
                                                    mem[64] = _3897 + ceil32(return_data.size) + (32 * mem[_3897 + mem[_3897]]) + 32
                                                    mem[_3897 + ceil32(return_data.size)] = _3929
                                                    require return_data.size >= _3913 + (32 * _3929) + 32
                                                    mem[_3897 + ceil32(return_data.size) + 32 len 32 * _3929] = mem[_3897 + _3913 + 32 len 32 * _3929]
                                                    if 0 < _3929:
                                                        return _3281, mem[_3897 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).totalSupply() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).totalSupply() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 292] = cd[132]
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 324] = cd[164]
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 356] = cd[196]
                        require ext_code.size(factoryAddress)
                        staticcall factoryAddress.calcDeltaWithFeeAndSlippage(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, int256 rg5, int256 rg6, uint256 rg7) with:
                                gas gas_remaining wei
                               args cd[68], cd[100], ext_call.return_data[0], ext_call.return_data[0], cd[132], cd[164], cd[196]
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 160 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        if ('cd', 4).length <= 1:
                            if ('cd', 36).length <= 1:
                                return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                            if ext_call.return_data[32] < 0:
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 164] = -ext_call.return_data[32]
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 196] = 64
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 228] = ('cd', 36).length
                                idx = 0
                                s = (32 * ('cd', 4).length) + 160
                                t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260
                                while idx < ('cd', 36).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(swapRouterAddress)
                                staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args -ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260 len 32 * ('cd', 36).length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 160
                                require return_data.size >= 32
                                _2227 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32
                                require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 <= test266151307()
                                require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 191
                                _2245 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]
                                require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160] <= test266151307()
                                require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]) + 32 >= 0 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]) + 192 <= test266151307()
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]
                                require return_data.size >= _2227 + (32 * _2245) + 32
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192 len 32 * _2245] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + _2227 + 192 len 32 * _2245]
                                if ('cd', 36).length - 1 < _2245:
                                    return ext_call.return_data[0], 
                                           -mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192],
                                           ext_call.return_data[64],
                                           ext_call.return_data[96]
                            else:
                                if ext_call.return_data[32] <= 0:
                                    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                require ('cd', 36).length <= test266151307()
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160] = ('cd', 36).length
                                if not ('cd', 36).length:
                                    idx = 0
                                    while idx < ('cd', 36).length:
                                        require ('cd', 36).length + -idx - 1 < ('cd', 36).length
                                        require idx < ('cd', 36).length
                                        mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 36).length + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                        idx = idx + 1
                                        continue 
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 228] = 64
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                                    idx = 0
                                    s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192
                                    t = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(swapRouterAddress)
                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                    require (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + return_data.size + 192 > (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223
                                    _2818 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                    require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] <= test266151307()
                                    require (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32 >= 0 and (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 224 <= test266151307()
                                    require return_data.size >= mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224 len 32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 224 len 32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]]
                                    var115001 = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + (32 * _2818) + 224
                                    if 0 < _2818:
                                        return ext_call.return_data[0], 
                                               mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224],
                                               ext_call.return_data[64],
                                               ext_call.return_data[96]
                                else:
                                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                                    idx = 0
                                    while idx < ('cd', 36).length:
                                        require ('cd', 36).length + -idx - 1 < ('cd', 36).length
                                        require idx < ('cd', 36).length
                                        mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 36).length + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                        idx = idx + 1
                                        continue 
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 228] = 64
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                                    idx = 0
                                    s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192
                                    t = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(swapRouterAddress)
                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                    require (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + return_data.size + 192 > (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223
                                    _2819 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                    require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] <= test266151307()
                                    require (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32 >= 0 and (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 224 <= test266151307()
                                    require return_data.size >= mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32
                                    mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224 len 32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 224 len 32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]]
                                    var116001 = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + (32 * _2819) + 224
                                    if 0 < _2819:
                                        return ext_call.return_data[0], 
                                               mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224],
                                               ext_call.return_data[64],
                                               ext_call.return_data[96]
                        else:
                            if ext_call.return_data[0] < 0:
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 164] = -ext_call.return_data[0]
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 196] = 64
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 228] = ('cd', 4).length
                                idx = 0
                                s = 128
                                t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260
                                while idx < ('cd', 4).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(swapRouterAddress)
                                staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args -ext_call.return_data[0], Array(len=('cd', 4).length, data=mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260 len 32 * ('cd', 4).length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 160
                                require return_data.size >= 32
                                _2229 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32
                                require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 <= test266151307()
                                require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 191
                                _2247 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160]
                                require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160] <= test266151307()
                                require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160]) + 32 >= 0 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160]) + 192 <= test266151307()
                                mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[0]) >> 32 + 160]) + 192
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 160] = _2247
                                require return_data.size >= _2229 + (32 * _2247) + 32
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192 len 32 * _2247] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + _2229 + 192 len 32 * _2247]
                                if ('cd', 4).length - 1 < _2247:
                                    _2775 = mem[(32 * ('cd', 4).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192]
                                    if ('cd', 36).length <= 1:
                                        mem[mem[64]] = -mem[(32 * ('cd', 4).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192]
                                        mem[mem[64] + 64] = ext_call.return_data[64]
                                        mem[mem[64] + 96] = ext_call.return_data[96]
                                        return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                    if ext_call.return_data[32] < 0:
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = -ext_call.return_data[32]
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = ('cd', 36).length
                                        idx = 0
                                        s = (32 * ('cd', 4).length) + 160
                                        t = mem[64] + 100
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(swapRouterAddress)
                                        staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args -ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3295 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3313 = mem[_3295]
                                        require mem[_3295] <= test266151307()
                                        require _3295 + return_data.size > _3295 + mem[_3295] + 31
                                        _3331 = mem[_3295 + mem[_3295]]
                                        require mem[_3295 + mem[_3295]] <= test266151307()
                                        require (32 * mem[_3295 + mem[_3295]]) + 32 >= 0 and _3295 + ceil32(return_data.size) + (32 * mem[_3295 + mem[_3295]]) + 32 <= test266151307()
                                        mem[64] = _3295 + ceil32(return_data.size) + (32 * mem[_3295 + mem[_3295]]) + 32
                                        mem[_3295 + ceil32(return_data.size)] = _3331
                                        require return_data.size >= _3313 + (32 * _3331) + 32
                                        mem[_3295 + ceil32(return_data.size) + 32 len 32 * _3331] = mem[_3295 + _3313 + 32 len 32 * _3331]
                                        var133001 = _3295 + _3313 + (32 * _3331) + 32
                                        if mem[(32 * ('cd', 4).length) + 128] - 1 < _3331:
                                            return -_2775, 
                                                   -mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + _3295 + ceil32(return_data.size) + 32],
                                                   ext_call.return_data[64],
                                                   ext_call.return_data[96]
                                    else:
                                        if ext_call.return_data[32] <= 0:
                                            mem[mem[64]] = -mem[(32 * ('cd', 4).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192]
                                            mem[mem[64] + 64] = ext_call.return_data[64]
                                            mem[mem[64] + 96] = ext_call.return_data[96]
                                            return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                        require ('cd', 36).length <= test266151307()
                                        _2831 = mem[64]
                                        mem[mem[64]] = ('cd', 36).length
                                        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                        if not ('cd', 36).length:
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                require idx < mem[_2831]
                                                mem[(32 * idx) + _2831 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = ext_call.return_data[32]
                                            mem[mem[64] + 36] = 64
                                            _3292 = mem[_2831]
                                            mem[mem[64] + 68] = mem[_2831]
                                            idx = 0
                                            s = _2831 + 32
                                            t = mem[64] + 100
                                            while idx < _3292:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3292) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3688 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3706 = mem[_3688]
                                            require mem[_3688] <= test266151307()
                                            require _3688 + return_data.size > _3688 + mem[_3688] + 31
                                            _3724 = mem[_3688 + mem[_3688]]
                                            require mem[_3688 + mem[_3688]] <= test266151307()
                                            require (32 * mem[_3688 + mem[_3688]]) + 32 >= 0 and _3688 + ceil32(return_data.size) + (32 * mem[_3688 + mem[_3688]]) + 32 <= test266151307()
                                            mem[64] = _3688 + ceil32(return_data.size) + (32 * mem[_3688 + mem[_3688]]) + 32
                                            mem[_3688 + ceil32(return_data.size)] = _3724
                                            require return_data.size >= _3706 + (32 * _3724) + 32
                                            mem[_3688 + ceil32(return_data.size) + 32 len 32 * _3724] = mem[_3688 + _3706 + 32 len 32 * _3724]
                                            if 0 < _3724:
                                                return -_2775, mem[_3688 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                                        else:
                                            mem[_2831 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                require idx < mem[_2831]
                                                mem[(32 * idx) + _2831 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = ext_call.return_data[32]
                                            mem[mem[64] + 36] = 64
                                            _3293 = mem[_2831]
                                            mem[mem[64] + 68] = mem[_2831]
                                            idx = 0
                                            s = _2831 + 32
                                            t = mem[64] + 100
                                            while idx < _3293:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3293) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3689 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3707 = mem[_3689]
                                            require mem[_3689] <= test266151307()
                                            require _3689 + return_data.size > _3689 + mem[_3689] + 31
                                            _3725 = mem[_3689 + mem[_3689]]
                                            require mem[_3689 + mem[_3689]] <= test266151307()
                                            require (32 * mem[_3689 + mem[_3689]]) + 32 >= 0 and _3689 + ceil32(return_data.size) + (32 * mem[_3689 + mem[_3689]]) + 32 <= test266151307()
                                            mem[64] = _3689 + ceil32(return_data.size) + (32 * mem[_3689 + mem[_3689]]) + 32
                                            mem[_3689 + ceil32(return_data.size)] = _3725
                                            require return_data.size >= _3707 + (32 * _3725) + 32
                                            mem[_3689 + ceil32(return_data.size) + 32 len 32 * _3725] = mem[_3689 + _3707 + 32 len 32 * _3725]
                                            if 0 < _3725:
                                                return -_2775, mem[_3689 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                            else:
                                if ext_call.return_data[0] <= 0:
                                    if ('cd', 36).length <= 1:
                                        return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                    if ext_call.return_data[32] < 0:
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 164] = -ext_call.return_data[32]
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 196] = 64
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 228] = ('cd', 36).length
                                        idx = 0
                                        s = (32 * ('cd', 4).length) + 160
                                        t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(swapRouterAddress)
                                        staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args -ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260 len 32 * ('cd', 36).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 160
                                        require return_data.size >= 32
                                        _2228 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32
                                        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 <= test266151307()
                                        require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + return_data.size + 160 > (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 191
                                        _2246 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]
                                        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160] <= test266151307()
                                        require (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]) + 32 >= 0 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]) + 192 <= test266151307()
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 160] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, -ext_call.return_data[32]) >> 32 + 160]
                                        require return_data.size >= _2228 + (32 * _2246) + 32
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192 len 32 * _2246] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + _2228 + 192 len 32 * _2246]
                                        var109001 = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + _2228 + (32 * _2246) + 192
                                        if ('cd', 36).length - 1 < _2246:
                                            return ext_call.return_data[0], 
                                                   -mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192],
                                                   ext_call.return_data[64],
                                                   ext_call.return_data[96]
                                    else:
                                        if ext_call.return_data[32] <= 0:
                                            return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                        require ('cd', 36).length <= test266151307()
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160] = ('cd', 36).length
                                        if not ('cd', 36).length:
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                require ('cd', 36).length + -idx - 1 < ('cd', 36).length
                                                require idx < ('cd', 36).length
                                                mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 36).length + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                idx = idx + 1
                                                continue 
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                                            idx = 0
                                            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192
                                            t = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292
                                            while idx < ('cd', 36).length:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                            require (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + return_data.size + 192 > (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223
                                            _2820 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                            require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] <= test266151307()
                                            require (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32 >= 0 and (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 224 <= test266151307()
                                            require return_data.size >= mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224 len 32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 224 len 32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]]
                                            var117001 = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + (32 * _2820) + 224
                                            if 0 < _2820:
                                                return ext_call.return_data[0], 
                                                       mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224],
                                                       ext_call.return_data[64],
                                                       ext_call.return_data[96]
                                        else:
                                            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                require ('cd', 36).length + -idx - 1 < ('cd', 36).length
                                                require idx < ('cd', 36).length
                                                mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 36).length + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                idx = idx + 1
                                                continue 
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                                            idx = 0
                                            s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192
                                            t = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292
                                            while idx < ('cd', 36).length:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(swapRouterAddress)
                                            staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                            require (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + return_data.size + 192 > (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223
                                            _2821 = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                            require mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] <= test266151307()
                                            require (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32 >= 0 and (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 224 <= test266151307()
                                            require return_data.size >= mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + (32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 32
                                            mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224 len 32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]] = mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 224 len 32 * mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]]
                                            var118001 = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + (32 * _2821) + 224
                                            if 0 < _2821:
                                                return ext_call.return_data[0], 
                                                       mem[(32 * ('cd', 4).length) + (64 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224],
                                                       ext_call.return_data[64],
                                                       ext_call.return_data[96]
                                else:
                                    require ('cd', 4).length <= test266151307()
                                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 160] = ('cd', 4).length
                                    if not ('cd', 4).length:
                                        idx = 0
                                        while idx < ('cd', 4).length:
                                            require ('cd', 4).length + -idx - 1 < ('cd', 4).length
                                            require idx < ('cd', 4).length
                                            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 4).length + -idx - 1) + 140 len 20]
                                            idx = idx + 1
                                            continue 
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 228] = 64
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260] = ('cd', 4).length
                                        idx = 0
                                        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192
                                        t = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292
                                        while idx < ('cd', 4).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(swapRouterAddress)
                                        staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0], Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 4).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _2804 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                        require mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + return_data.size + 192 > (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                                        _2822 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                        require mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                                        require (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                                        mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192] = _2822
                                        require return_data.size >= _2804 + (32 * _2822) + 32
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224 len 32 * _2822] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + _2804 + 224 len 32 * _2822]
                                        if 0 < _2822:
                                            _3287 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224]
                                            if mem[(32 * ('cd', 4).length) + 128] <= 1:
                                                mem[mem[64]] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224]
                                                mem[mem[64] + 64] = ext_call.return_data[64]
                                                mem[mem[64] + 96] = ext_call.return_data[96]
                                                return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                            if ext_call.return_data[32] < 0:
                                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = -ext_call.return_data[32]
                                                mem[mem[64] + 36] = 64
                                                _3342 = mem[(32 * ('cd', 4).length) + 128]
                                                mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + 128]
                                                idx = 0
                                                s = (32 * ('cd', 4).length) + 160
                                                t = mem[64] + 100
                                                while idx < _3342:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(swapRouterAddress)
                                                staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args -ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3342) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3686 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3704 = mem[_3686]
                                                require mem[_3686] <= test266151307()
                                                require _3686 + return_data.size > _3686 + mem[_3686] + 31
                                                _3722 = mem[_3686 + mem[_3686]]
                                                require mem[_3686 + mem[_3686]] <= test266151307()
                                                require (32 * mem[_3686 + mem[_3686]]) + 32 >= 0 and _3686 + ceil32(return_data.size) + (32 * mem[_3686 + mem[_3686]]) + 32 <= test266151307()
                                                mem[64] = _3686 + ceil32(return_data.size) + (32 * mem[_3686 + mem[_3686]]) + 32
                                                mem[_3686 + ceil32(return_data.size)] = _3722
                                                require return_data.size >= _3704 + (32 * _3722) + 32
                                                mem[_3686 + ceil32(return_data.size) + 32 len 32 * _3722] = mem[_3686 + _3704 + 32 len 32 * _3722]
                                                if mem[(32 * ('cd', 4).length) + 128] - 1 < _3722:
                                                    return _3287, 
                                                           -mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + _3686 + ceil32(return_data.size) + 32],
                                                           ext_call.return_data[64],
                                                           ext_call.return_data[96]
                                            else:
                                                if ext_call.return_data[32] <= 0:
                                                    mem[mem[64]] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224]
                                                    mem[mem[64] + 64] = ext_call.return_data[64]
                                                    mem[mem[64] + 96] = ext_call.return_data[96]
                                                    return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                                _3341 = mem[(32 * ('cd', 4).length) + 128]
                                                require mem[(32 * ('cd', 4).length) + 128] <= test266151307()
                                                _3350 = mem[64]
                                                mem[mem[64]] = mem[(32 * ('cd', 4).length) + 128]
                                                mem[64] = mem[64] + (32 * _3341) + 32
                                                if not _3341:
                                                    _3606 = mem[(32 * ('cd', 4).length) + 128]
                                                    idx = 0
                                                    while idx < _3606:
                                                        require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                        require idx < mem[_3350]
                                                        mem[(32 * idx) + _3350 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                        _3606 = mem[(32 * ('cd', 4).length) + 128]
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ext_call.return_data[32]
                                                    mem[mem[64] + 36] = 64
                                                    _3678 = mem[_3350]
                                                    mem[mem[64] + 68] = mem[_3350]
                                                    idx = 0
                                                    s = _3350 + 32
                                                    t = mem[64] + 100
                                                    while idx < _3678:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(swapRouterAddress)
                                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3678) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3898 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3914 = mem[_3898]
                                                    require mem[_3898] <= test266151307()
                                                    require _3898 + return_data.size > _3898 + mem[_3898] + 31
                                                    _3930 = mem[_3898 + mem[_3898]]
                                                    require mem[_3898 + mem[_3898]] <= test266151307()
                                                    require (32 * mem[_3898 + mem[_3898]]) + 32 >= 0 and _3898 + ceil32(return_data.size) + (32 * mem[_3898 + mem[_3898]]) + 32 <= test266151307()
                                                    mem[64] = _3898 + ceil32(return_data.size) + (32 * mem[_3898 + mem[_3898]]) + 32
                                                    mem[_3898 + ceil32(return_data.size)] = _3930
                                                    require return_data.size >= _3914 + (32 * _3930) + 32
                                                    mem[_3898 + ceil32(return_data.size) + 32 len 32 * _3930] = mem[_3898 + _3914 + 32 len 32 * _3930]
                                                    if 0 < _3930:
                                                        return _3287, mem[_3898 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                                                else:
                                                    mem[_3350 + 32 len 32 * _3341] = call.data[calldata.size len 32 * _3341]
                                                    _3607 = mem[(32 * ('cd', 4).length) + 128]
                                                    idx = 0
                                                    while idx < _3607:
                                                        require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                        require idx < mem[_3350]
                                                        mem[(32 * idx) + _3350 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                        _3607 = mem[(32 * ('cd', 4).length) + 128]
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ext_call.return_data[32]
                                                    mem[mem[64] + 36] = 64
                                                    _3679 = mem[_3350]
                                                    mem[mem[64] + 68] = mem[_3350]
                                                    idx = 0
                                                    s = _3350 + 32
                                                    t = mem[64] + 100
                                                    while idx < _3679:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(swapRouterAddress)
                                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3679) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3899 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3915 = mem[_3899]
                                                    require mem[_3899] <= test266151307()
                                                    require _3899 + return_data.size > _3899 + mem[_3899] + 31
                                                    _3931 = mem[_3899 + mem[_3899]]
                                                    require mem[_3899 + mem[_3899]] <= test266151307()
                                                    require (32 * mem[_3899 + mem[_3899]]) + 32 >= 0 and _3899 + ceil32(return_data.size) + (32 * mem[_3899 + mem[_3899]]) + 32 <= test266151307()
                                                    mem[64] = _3899 + ceil32(return_data.size) + (32 * mem[_3899 + mem[_3899]]) + 32
                                                    mem[_3899 + ceil32(return_data.size)] = _3931
                                                    require return_data.size >= _3915 + (32 * _3931) + 32
                                                    mem[_3899 + ceil32(return_data.size) + 32 len 32 * _3931] = mem[_3899 + _3915 + 32 len 32 * _3931]
                                                    if 0 < _3931:
                                                        return _3287, mem[_3899 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                                    else:
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                                        idx = 0
                                        while idx < ('cd', 4).length:
                                            require ('cd', 4).length + -idx - 1 < ('cd', 4).length
                                            require idx < ('cd', 4).length
                                            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = mem[(32 * ('cd', 4).length + -idx - 1) + 140 len 20]
                                            idx = idx + 1
                                            continue 
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 228] = 64
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 260] = ('cd', 4).length
                                        idx = 0
                                        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192
                                        t = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292
                                        while idx < ('cd', 4).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(swapRouterAddress)
                                        staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0], Array(len=('cd', 4).length, data=mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 4).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _2805 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                        require mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + return_data.size + 192 > (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                                        _2823 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                        require mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                                        require (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                                        mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 192] = _2823
                                        require return_data.size >= _2805 + (32 * _2823) + 32
                                        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224 len 32 * _2823] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + _2805 + 224 len 32 * _2823]
                                        var112001 = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + _2805 + (32 * _2823) + 224
                                        if 0 < _2823:
                                            _3288 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224]
                                            if mem[(32 * ('cd', 4).length) + 128] <= 1:
                                                mem[mem[64]] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224]
                                                mem[mem[64] + 64] = ext_call.return_data[64]
                                                mem[mem[64] + 96] = ext_call.return_data[96]
                                                return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                            if ext_call.return_data[32] < 0:
                                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = -ext_call.return_data[32]
                                                mem[mem[64] + 36] = 64
                                                _3345 = mem[(32 * ('cd', 4).length) + 128]
                                                mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + 128]
                                                idx = 0
                                                s = (32 * ('cd', 4).length) + 160
                                                t = mem[64] + 100
                                                while idx < _3345:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(swapRouterAddress)
                                                staticcall swapRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args -ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3345) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3687 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3705 = mem[_3687]
                                                require mem[_3687] <= test266151307()
                                                require _3687 + return_data.size > _3687 + mem[_3687] + 31
                                                _3723 = mem[_3687 + mem[_3687]]
                                                require mem[_3687 + mem[_3687]] <= test266151307()
                                                require (32 * mem[_3687 + mem[_3687]]) + 32 >= 0 and _3687 + ceil32(return_data.size) + (32 * mem[_3687 + mem[_3687]]) + 32 <= test266151307()
                                                mem[64] = _3687 + ceil32(return_data.size) + (32 * mem[_3687 + mem[_3687]]) + 32
                                                mem[_3687 + ceil32(return_data.size)] = _3723
                                                require return_data.size >= _3705 + (32 * _3723) + 32
                                                mem[_3687 + ceil32(return_data.size) + 32 len 32 * _3723] = mem[_3687 + _3705 + 32 len 32 * _3723]
                                                if mem[(32 * ('cd', 4).length) + 128] - 1 < _3723:
                                                    return _3288, 
                                                           -mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + _3687 + ceil32(return_data.size) + 32],
                                                           ext_call.return_data[64],
                                                           ext_call.return_data[96]
                                            else:
                                                if ext_call.return_data[32] <= 0:
                                                    mem[mem[64]] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 224]
                                                    mem[mem[64] + 64] = ext_call.return_data[64]
                                                    mem[mem[64] + 96] = ext_call.return_data[96]
                                                    return mem[mem[64]], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
                                                _3344 = mem[(32 * ('cd', 4).length) + 128]
                                                require mem[(32 * ('cd', 4).length) + 128] <= test266151307()
                                                _3351 = mem[64]
                                                mem[mem[64]] = mem[(32 * ('cd', 4).length) + 128]
                                                mem[64] = mem[64] + (32 * _3344) + 32
                                                if not _3344:
                                                    _3608 = mem[(32 * ('cd', 4).length) + 128]
                                                    idx = 0
                                                    while idx < _3608:
                                                        require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                        require idx < mem[_3351]
                                                        mem[(32 * idx) + _3351 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                        _3608 = mem[(32 * ('cd', 4).length) + 128]
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ext_call.return_data[32]
                                                    mem[mem[64] + 36] = 64
                                                    _3680 = mem[_3351]
                                                    mem[mem[64] + 68] = mem[_3351]
                                                    idx = 0
                                                    s = _3351 + 32
                                                    t = mem[64] + 100
                                                    while idx < _3680:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(swapRouterAddress)
                                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3680) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3900 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3916 = mem[_3900]
                                                    require mem[_3900] <= test266151307()
                                                    require _3900 + return_data.size > _3900 + mem[_3900] + 31
                                                    _3932 = mem[_3900 + mem[_3900]]
                                                    require mem[_3900 + mem[_3900]] <= test266151307()
                                                    require (32 * mem[_3900 + mem[_3900]]) + 32 >= 0 and _3900 + ceil32(return_data.size) + (32 * mem[_3900 + mem[_3900]]) + 32 <= test266151307()
                                                    mem[64] = _3900 + ceil32(return_data.size) + (32 * mem[_3900 + mem[_3900]]) + 32
                                                    mem[_3900 + ceil32(return_data.size)] = _3932
                                                    require return_data.size >= _3916 + (32 * _3932) + 32
                                                    mem[_3900 + ceil32(return_data.size) + 32 len 32 * _3932] = mem[_3900 + _3916 + 32 len 32 * _3932]
                                                    if 0 < _3932:
                                                        return _3288, mem[_3900 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
                                                else:
                                                    mem[_3351 + 32 len 32 * _3344] = call.data[calldata.size len 32 * _3344]
                                                    _3609 = mem[(32 * ('cd', 4).length) + 128]
                                                    idx = 0
                                                    while idx < _3609:
                                                        require mem[(32 * ('cd', 4).length) + 128] + -idx - 1 < mem[(32 * ('cd', 4).length) + 128]
                                                        require idx < mem[_3351]
                                                        mem[(32 * idx) + _3351 + 32] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] + -idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
                                                        _3609 = mem[(32 * ('cd', 4).length) + 128]
                                                        idx = idx + 1
                                                        continue 
                                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ext_call.return_data[32]
                                                    mem[mem[64] + 36] = 64
                                                    _3681 = mem[_3351]
                                                    mem[mem[64] + 68] = mem[_3351]
                                                    idx = 0
                                                    s = _3351 + 32
                                                    t = mem[64] + 100
                                                    while idx < _3681:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(swapRouterAddress)
                                                    staticcall swapRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32], 64, mem[mem[64] + 68 len (32 * _3681) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3901 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3917 = mem[_3901]
                                                    require mem[_3901] <= test266151307()
                                                    require _3901 + return_data.size > _3901 + mem[_3901] + 31
                                                    _3933 = mem[_3901 + mem[_3901]]
                                                    require mem[_3901 + mem[_3901]] <= test266151307()
                                                    require (32 * mem[_3901 + mem[_3901]]) + 32 >= 0 and _3901 + ceil32(return_data.size) + (32 * mem[_3901 + mem[_3901]]) + 32 <= test266151307()
                                                    mem[64] = _3901 + ceil32(return_data.size) + (32 * mem[_3901 + mem[_3901]]) + 32
                                                    mem[_3901 + ceil32(return_data.size)] = _3933
                                                    require return_data.size >= _3917 + (32 * _3933) + 32
                                                    mem[_3901 + ceil32(return_data.size) + 32 len 32 * _3933] = mem[_3901 + _3917 + 32 len 32 * _3933]
                                                    if 0 < _3933:
                                                        return _3288, mem[_3901 + ceil32(return_data.size) + 32], ext_call.return_data[64], ext_call.return_data[96]
    revert
}



}
