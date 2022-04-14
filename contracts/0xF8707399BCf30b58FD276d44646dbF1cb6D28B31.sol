contract main {




// =====================  Runtime code  =====================


address owner;
address kinsAddress;
address devAddr;
address kinsMasterAddress;
array of struct poolInfo;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           bool(poolInfo[arg1].field_1280)
}

function owner() payable {
    return owner
}

function kins() payable {
    return kinsAddress
}

function devAddr() payable {
    return devAddr
}

function kinsMaster() payable {
    return kinsMasterAddress
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'dev: wut?'
    devAddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getReserves(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function add(address arg1, address arg2, address arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if kinsMasterAddress != msg.sender:
        if devAddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x734552524f523a2063616c6c6572206973206e6f7420746865206b696e734d6173746572206f7220446576,
                        mem[207 len 21]
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    poolInfo[poolInfo.length].field_256 = arg2
    poolInfo[poolInfo.length].field_512 = arg3
    poolInfo[poolInfo.length].field_768 = ext_call.return_data[31 len 1]
    poolInfo[poolInfo.length].field_1024 = ext_call.return_data[31 len 1]
    poolInfo[poolInfo.length].field_1280 = uint8(arg4)
}

function set(uint256 arg1, address arg2, address arg3, address arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if kinsMasterAddress != msg.sender:
        if devAddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x734552524f523a2063616c6c6572206973206e6f7420746865206b696e734d6173746572206f7220446576,
                        mem[207 len 21]
    require arg1 < poolInfo.length
    poolInfo[arg1].field_0 = arg2
    poolInfo[arg1].field_256 = arg3
    poolInfo[arg1].field_512 = arg4
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    poolInfo[arg1].field_768 = uint8(ext_call.return_data[0])
    poolInfo[arg1].field_776 = 0
    require ext_code.size(arg4)
    staticcall arg4.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    poolInfo[arg1].field_1024 = uint8(ext_call.return_data[0])
    poolInfo[arg1].field_1032 = 0
    poolInfo[arg1].field_1280 = uint8(arg5)
}

function kinsTransfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if kinsMasterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x2e4552524f523a2063616c6c6572206973206e6f7420746865206b696e734d6173746572206f72206f776e6572,
                        mem[209 len 19]
    require ext_code.size(kinsAddress)
    staticcall kinsAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= ext_call.return_data[0]:
        if arg2:
            require ext_code.size(kinsAddress)
            call kinsAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if ext_call.return_data[0]:
            require ext_code.size(kinsAddress)
            call kinsAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function setAddresses(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == kinsMasterAddress:
        kinsAddress = arg1
        kinsMasterAddress = arg2
    else:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x2e4552524f523a2063616c6c6572206973206e6f7420746865206b696e734d6173746572206f72206f776e6572,
                        mem[209 len 19]
        kinsAddress = arg1
        kinsMasterAddress = arg2
        if kinsMasterAddress != msg.sender:
            if devAddr != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x734552524f523a2063616c6c6572206973206e6f7420746865206b696e734d6173746572206f7220446576,
                            mem[207 len 21]
    require 0 < poolInfo.length
    address(poolInfo.field_0) = arg1
    address(poolInfo.field_256) = arg1
    address(poolInfo.field_512) = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < poolInfo.length
    uint8(poolInfo.field_768) = uint8(ext_call.return_data[0])
    Mask(248, 0, poolInfo.field_776) = 0
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < poolInfo.length
    uint8(poolInfo.field_1024) = uint8(ext_call.return_data[0])
    Mask(248, 0, poolInfo.field_1032) = 0
    uint8(poolInfo.field_1280) = 0
}

function getKinsPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if kinsAddress == poolInfo[arg1].field_256:
        if poolInfo[arg1].field_768 <= poolInfo[arg1].field_1024:
            if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1024:
                if ext_call.return_data[18 len 14]:
                    return (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
            else:
                if ext_call.return_data[18 len 14]:
                    return (10^(poolInfo[arg1].field_1024 + -poolInfo[arg1].field_768 + 18) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
        else:
            if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1024:
                if ext_call.return_data[18 len 14]:
                    return (10^(poolInfo[arg1].field_768 + -poolInfo[arg1].field_1024 + 18) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
            else:
                if ext_call.return_data[18 len 14]:
                    return (10^(poolInfo[arg1].field_1024 + -poolInfo[arg1].field_768 + 18) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
        ('iszero', ('ext_call.return_data', 18, 14))
    else:
        if kinsAddress != poolInfo[arg1].field_512:
            return 0
        if poolInfo[arg1].field_768 <= poolInfo[arg1].field_1024:
            if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1024:
                if ext_call.return_data[50 len 14]:
                    return (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
            else:
                if ext_call.return_data[50 len 14]:
                    return (10^(poolInfo[arg1].field_1024 + -poolInfo[arg1].field_768 + 18) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        else:
            if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1024:
                if ext_call.return_data[50 len 14]:
                    return (10^(poolInfo[arg1].field_768 + -poolInfo[arg1].field_1024 + 18) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
            else:
                if ext_call.return_data[50 len 14]:
                    return (10^(poolInfo[arg1].field_1024 + -poolInfo[arg1].field_768 + 18) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        ('iszero', ('ext_call.return_data', 50, 14))
    revert
}

function getDepositValue(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < poolInfo.length
    if kinsAddress != poolInfo[arg2].field_256:
        if poolInfo[arg2].field_512 != kinsAddress:
            return 0
    require ext_code.size(poolInfo[arg2].field_0)
    staticcall poolInfo[arg2].field_0.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg2].field_0)
    staticcall poolInfo[arg2].field_0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if kinsAddress == poolInfo[arg2].field_256:
        if poolInfo[arg2].field_768 <= poolInfo[arg2].field_1024:
            if poolInfo[arg2].field_768 >= poolInfo[arg2].field_1024:
                require ext_call.return_data[18 len 14]
                require ext_code.size(kinsAddress)
                staticcall kinsAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args poolInfo[arg2].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0])
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0])
                if arg1 * 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (arg1 * 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0])
        else:
            if poolInfo[arg2].field_768 >= poolInfo[arg2].field_1024:
                require ext_call.return_data[18 len 14]
                require ext_code.size(kinsAddress)
                staticcall kinsAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args poolInfo[arg2].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0])
                if 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 2 * 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0])
                if arg1 * 2 * 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 2 * 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (arg1 * 2 * 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0])
        ('lt', ('field', 768, ('stor', ('array', ('mul', 6, ('param', 'arg2')), ('name', 'poolInfo', 4)))), ('field', 1024, ('stor', ('array', ('mul', 6, ('param', 'arg2')), ('name', 'poolInfo', 4)))))
        require ext_call.return_data[18 len 14]
        require ext_code.size(kinsAddress)
        staticcall kinsAddress.0x70a08231 with:
                gas gas_remaining wei
               args poolInfo[arg2].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0])
        if 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 2 * 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0])
        if arg1 * 2 * 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 2 * 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 * 2 * 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0])
    if kinsAddress != poolInfo[arg2].field_512:
        require ext_code.size(kinsAddress)
        staticcall kinsAddress.0x70a08231 with:
                gas gas_remaining wei
               args poolInfo[arg2].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if poolInfo[arg2].field_768 <= poolInfo[arg2].field_1024:
        if poolInfo[arg2].field_768 >= poolInfo[arg2].field_1024:
            require ext_call.return_data[50 len 14]
            require ext_code.size(kinsAddress)
            staticcall kinsAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg2].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0])
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0])
            if arg1 * 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (arg1 * 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0])
    else:
        if poolInfo[arg2].field_768 >= poolInfo[arg2].field_1024:
            require ext_call.return_data[50 len 14]
            require ext_code.size(kinsAddress)
            staticcall kinsAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg2].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0])
            if 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 2 * 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0])
            if arg1 * 2 * 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 2 * 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (arg1 * 2 * 10^(poolInfo[arg2].field_768 + -poolInfo[arg2].field_1024 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0])
    ('lt', ('field', 768, ('stor', ('array', ('mul', 6, ('param', 'arg2')), ('name', 'poolInfo', 4)))), ('field', 1024, ('stor', ('array', ('mul', 6, ('param', 'arg2')), ('name', 'poolInfo', 4)))))
    require ext_call.return_data[50 len 14]
    require ext_code.size(kinsAddress)
    staticcall kinsAddress.0x70a08231 with:
            gas gas_remaining wei
           args poolInfo[arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 2 * 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if arg1 * 2 * 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 2 * 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 * 2 * 10^(poolInfo[arg2].field_1024 + -poolInfo[arg2].field_768 + 18) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0])
}



}
