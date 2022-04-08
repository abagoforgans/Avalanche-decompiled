contract main {




// =====================  Runtime code  =====================


const router = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106


address factoryAddress;
address owner;
uint256 oneUnit;
address tokenAddress;
address pivotAddress;
uint256 minBuyTokenPerUnit;

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function factory() {
    return factoryAddress
}

function pivotAddress() {
    return pivotAddress
}

function minBuyTokenPerUnit() {
    return minBuyTokenPerUnit
}

function oneUnit() {
    return oneUnit
}

function _fallback() payable {
    revert
}

function setInfo(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    tokenAddress = arg1
    pivotAddress = arg2
    minBuyTokenPerUnit = arg3
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x53416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0]
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function buy() {
    if pivotAddress == tokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if pivotAddress < tokenAddress:
        if not pivotAddress:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args pivotAddress, tokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if pivotAddress == pivotAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'Empty reserve'
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if pivotAddress == ext_call.return_data[12 len 20]:
                require 997 * minBuyTokenPerUnit
                if (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit > 0:
                    if not oneUnit:
                        if oneUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require oneUnit
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / oneUnit < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    else:
                        require oneUnit
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit != (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if oneUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require oneUnit
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            else:
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == pivotAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[201 len 27]
                if ext_call.return_data[12 len 20] < pivotAddress:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), pivotAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                else:
                    if not pivotAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), pivotAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == pivotAddress:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 997 * minBuyTokenPerUnit
                if (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit > 0:
                    if not oneUnit:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[0] < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    else:
                        require oneUnit
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit != (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'Empty reserve'
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if pivotAddress == ext_call.return_data[12 len 20]:
                require 997 * minBuyTokenPerUnit
                if (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit > 0:
                    if not oneUnit:
                        if oneUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require oneUnit
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / oneUnit < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    else:
                        require oneUnit
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit != (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if oneUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require oneUnit
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            else:
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == pivotAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[201 len 27]
                if ext_call.return_data[12 len 20] < pivotAddress:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), pivotAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                else:
                    if not pivotAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), pivotAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == pivotAddress:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 997 * minBuyTokenPerUnit
                if (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit > 0:
                    if not oneUnit:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[0] < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    else:
                        require oneUnit
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit != (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    else:
        if not tokenAddress:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args pivotAddress, tokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if pivotAddress == tokenAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'Empty reserve'
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if pivotAddress == ext_call.return_data[12 len 20]:
                require 997 * minBuyTokenPerUnit
                if (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit > 0:
                    if not oneUnit:
                        if oneUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require oneUnit
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / oneUnit < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    else:
                        require oneUnit
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit != (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if oneUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require oneUnit
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            else:
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == pivotAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[201 len 27]
                if ext_call.return_data[12 len 20] < pivotAddress:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), pivotAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                else:
                    if not pivotAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), pivotAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == pivotAddress:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 997 * minBuyTokenPerUnit
                if (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit > 0:
                    if not oneUnit:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[0] < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    else:
                        require oneUnit
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit != (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[0]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'Empty reserve'
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if pivotAddress == ext_call.return_data[12 len 20]:
                require 997 * minBuyTokenPerUnit
                if (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit > 0:
                    if not oneUnit:
                        if oneUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require oneUnit
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / oneUnit < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    else:
                        require oneUnit
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit != (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if oneUnit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require oneUnit
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * oneUnit) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            else:
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == pivotAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[201 len 27]
                if ext_call.return_data[12 len 20] < pivotAddress:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), pivotAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                else:
                    if not pivotAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(factoryAddress)
                    staticcall factoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), pivotAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == pivotAddress:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args oneUnit, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 997 * minBuyTokenPerUnit
                if (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit > 0:
                    if not oneUnit:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[0] < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value 0 / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    else:
                        require oneUnit
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / oneUnit != (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] < eth.balance(this.address):
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value oneUnit * (997 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (1000 * Mask(112, 0, ext_call.return_data[32]) * minBuyTokenPerUnit) / 997 * minBuyTokenPerUnit / ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                        else:
                            if pivotAddress != ext_call.return_data[12 len 20]:
                                mem[192] = tokenAddress
                                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[228] = 1
                                mem[292] = owner
                                mem[324] = block.timestamp
                                mem[260] = 128
                                mem[356] = 3
                                mem[388 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[224 len 4], 0 <= 4294967296
                                require mem[224 len 4], 0 + 32 <= return_data.size
                                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                            else:
                                mem[160] = tokenAddress
                                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[196] = 1
                                mem[260] = owner
                                mem[292] = block.timestamp
                                mem[228] = 128
                                mem[324] = 2
                                mem[356 len 0] = None
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                require mem[192 len 4], 0 <= 4294967296
                                require mem[192 len 4], 0 + 32 <= return_data.size
                                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
}



}
