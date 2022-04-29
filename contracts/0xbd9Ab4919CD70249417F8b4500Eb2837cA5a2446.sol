contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256[] arg2)
#  - initialize(address arg1, address arg2, address arg3)
#  - invest(uint256 arg1, uint256[] arg2)
#
address sub_dbeee4aeAddress; offset 16
address sub_a3ba1798Address;
address sub_8e2d7196Address;
uint32 stor3;
address vaultAddress;
uint256 stor3;
bool stor4;
uint256 stor4; offset 1
uint256 watermark;
uint256 profitFeePerc;

function sub_8e2d7196(?) payable {
    return sub_8e2d7196Address
}

function sub_a3ba1798(?) payable {
    return sub_a3ba1798Address
}

function sub_dbeee4ae(?) payable {
    return sub_dbeee4aeAddress
}

function profitFeePerc() payable {
    return profitFeePerc
}

function watermark() payable {
    return watermark
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function setProfitFeePerc(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Only vault'
    profitFeePerc = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(vaultAddress):
        revert with 0, 'Vault set'
    address(vaultAddress) = arg1
}

function adjustWatermark(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Only vault'
    if arg2 == 1:
        if watermark > !arg1:
            revert with 0, 17
        watermark += arg1
        emit AdjustWatermark(watermark + arg1, watermark);
    else:
        if watermark < arg1:
            revert with 0, 17
        watermark -= arg1
        emit AdjustWatermark(watermark - arg1, watermark);
}

function getAllPoolInUSD() payable {
    require ext_code.size(sub_dbeee4aeAddress)
    staticcall sub_dbeee4aeAddress.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_8e2d7196Address)
            staticcall sub_8e2d7196Address.0xbd244af4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(sub_8e2d7196Address)
            staticcall sub_8e2d7196Address.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8e2d7196Address)
            staticcall sub_8e2d7196Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(sub_dbeee4aeAddress)
    staticcall sub_dbeee4aeAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_dbeee4aeAddress)
    staticcall sub_dbeee4aeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_a3ba1798Address)
    staticcall sub_a3ba1798Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(sub_a3ba1798Address)
    staticcall sub_a3ba1798Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a3ba1798Address)
    staticcall sub_a3ba1798Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    return (3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function emergencyWithdraw() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Only vault'
    mem[100] = this.address
    require ext_code.size(sub_dbeee4aeAddress)
    staticcall sub_dbeee4aeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = 10^18 * ext_call.return_data[0] / 10^18
    require ext_code.size(sub_dbeee4aeAddress)
    call sub_dbeee4aeAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args (10^18 * ext_call.return_data[0] / 10^18)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _14 = mem[0]
    mem[(2 * ceil32(return_data.size)) + 132] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = this.address
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0xc7198437980c041c805a1edcba50c1ce5db951, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[(4 * ceil32(return_data.size)) + 160] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 0
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 388
    t = (4 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _843 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _844 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require (32 * _844) + _843 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _844)] = mem[(4 * ceil32(return_data.size)) + _843 + 224 len ceil32(32 * _844)]
    if 1 >= _844:
        revert with 0, 50
    _4380 = mem[(6 * ceil32(return_data.size)) + 256]
    if ext_call.return_data[32] > !mem[(6 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    mem[mem[64] + 32] = ext_call.return_data[32] + mem[(6 * ceil32(return_data.size)) + 256]
    emit 0xe2816b92: ext_call.return_data[0], ext_call.return_data[32] + _4380
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_a3ba1798Address)
    staticcall sub_a3ba1798Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4385 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4386 = mem[_4385]
    if mem[_4385] and 10^18 > -1 / mem[_4385]:
        revert with 0, 17
    mem[mem[64] + 4] = 10^18 * mem[_4385] / 10^18
    require ext_code.size(sub_a3ba1798Address)
    call sub_a3ba1798Address.0x2e1a7d4d with:
         gas gas_remaining wei
        args (10^18 * _4386 / 10^18)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4389 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4390 = mem[_4389]
    mem[0] = _14
    mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[mem[64] + 68] = _4390
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = this.address
    mem[mem[64] + 196] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, _4390, 0, 0, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4395 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _4396 = mem[_4395]
    _4397 = mem[_4395 + 32]
    mem[0] = _14
    _4400 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_4400]:
        revert with 0, 50
    mem[_4400 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if 1 >= mem[_4400]:
        revert with 0, 50
    mem[_4400 + 64] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[_4400 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_4400 + 100] = _4397
    mem[_4400 + 132] = 0
    mem[_4400 + 164] = 160
    mem[_4400 + 260] = mem[_4400]
    idx = 0
    s = _4400 + 292
    t = _4400 + 32
    while idx < mem[_4400]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_4400 + 196] = this.address
    mem[_4400 + 228] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _4400 + (32 * mem[_4400]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _8056 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _8057 = mem[_8056]
    require mem[_8056] <= test266151307()
    require _8056 + mem[_8056] + 31 < _8056 + return_data.size
    _8058 = mem[_8056 + mem[_8056]]
    if mem[_8056 + mem[_8056]] > test266151307():
        revert with 0, 65
    if _8056 + ceil32(return_data.size) + ceil32(32 * mem[_8056 + mem[_8056]]) + 1 > test266151307() or ceil32(32 * mem[_8056 + mem[_8056]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _8056 + ceil32(return_data.size) + ceil32(32 * mem[_8056 + mem[_8056]]) + 1
    mem[_8056 + ceil32(return_data.size)] = _8058
    require (32 * _8058) + _8057 + 32 <= return_data.size
    mem[_8056 + ceil32(return_data.size) + 32 len ceil32(32 * _8058)] = mem[_8056 + _8057 + 32 len ceil32(32 * _8058)]
    if 1 >= _8058:
        revert with 0, 50
    _11705 = mem[_8056 + ceil32(return_data.size) + 64]
    if _4396 > !mem[_8056 + ceil32(return_data.size) + 64]:
        revert with 0, 17
    _11714 = mem[0]
    if _4396 + mem[_8056 + ceil32(return_data.size) + 64] > 0x295fad40a57eb50295fad40a57eb50295fad40a57eb50295fad40a57eb50295:
        revert with 0, 17
    mem[mem[64] + 4] = 1
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = _4396 + _11705
    mem[mem[64] + 100] = (99 * _4396) + (99 * _11705) / 100
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 1, 0, _4396 + _11705, (99 * _4396) + (99 * _11705) / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11732 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _11739 = mem[_11732]
    mem[mem[64] + 32] = mem[_11732]
    emit 0xf8ed8bc4: _4390, _11739
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11768 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _11774 = mem[_11768]
    if mem[_11768] and 10^18 > -1 / mem[_11768]:
        revert with 0, 17
    mem[mem[64] + 4] = 10^18 * mem[_11768] / 10^18
    require ext_code.size(sub_8e2d7196Address)
    call sub_8e2d7196Address.0x2e1a7d4d with:
         gas gas_remaining wei
        args (10^18 * _11774 / 10^18)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11792 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _11801 = mem[_11792]
    mem[0] = _11714
    mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[mem[64] + 68] = _11801
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = this.address
    mem[mem[64] + 196] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, _11801, 0, 0, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11828 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _11840 = mem[_11828]
    _11841 = mem[_11828 + 32]
    mem[0] = _11714
    _11863 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_11863]:
        revert with 0, 50
    mem[_11863 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if 1 >= mem[_11863]:
        revert with 0, 50
    mem[_11863 + 64] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    mem[_11863 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_11863 + 100] = _11841
    mem[_11863 + 132] = 0
    mem[_11863 + 164] = 160
    mem[_11863 + 260] = mem[_11863]
    idx = 0
    s = _11863 + 292
    t = _11863 + 32
    while idx < mem[_11863]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_11863 + 196] = this.address
    mem[_11863 + 228] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _11863 + (32 * mem[_11863]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _15358 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _15364 = mem[_15358]
    require mem[_15358] <= test266151307()
    require _15358 + mem[_15358] + 31 < _15358 + return_data.size
    _15370 = mem[_15358 + mem[_15358]]
    if mem[_15358 + mem[_15358]] > test266151307():
        revert with 0, 65
    if _15358 + ceil32(return_data.size) + ceil32(32 * mem[_15358 + mem[_15358]]) + 1 > test266151307() or ceil32(32 * mem[_15358 + mem[_15358]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _15358 + ceil32(return_data.size) + ceil32(32 * mem[_15358 + mem[_15358]]) + 1
    mem[_15358 + ceil32(return_data.size)] = _15370
    require (32 * _15370) + _15364 + 32 <= return_data.size
    mem[_15358 + ceil32(return_data.size) + 32 len ceil32(32 * _15370)] = mem[_15358 + _15364 + 32 len ceil32(32 * _15370)]
    if 1 >= _15370:
        revert with 0, 50
    _18820 = mem[_15358 + ceil32(return_data.size) + 64]
    if _11840 > !mem[_15358 + ceil32(return_data.size) + 64]:
        revert with 0, 17
    _18874 = mem[0]
    if _11840 + mem[_15358 + ceil32(return_data.size) + 64] / 10^12 > 0x295fad40a57eb50295fad40a57eb50295fad40a57eb50295fad40a57eb50295:
        revert with 0, 17
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = _11840 + _18820
    mem[mem[64] + 100] = 99 * _11840 + _18820 / 10^12 / 100
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, _11840 + _18820, 99 * _11840 + _18820 / 10^12 / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _18982 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _19024 = mem[_18982]
    mem[mem[64] + 32] = mem[_18982]
    emit 0xedb32e6b: _11801, _19024
    mem[mem[64] + 4] = this.address
    mem[0] = _18874
    require ext_code.size(0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951)
    staticcall 0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _19270 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _19318 = mem[_19270]
    mem[0] = _18874
    _19426 = mem[64]
    mem[mem[64] + 36] = address(vaultAddress)
    mem[mem[64] + 68] = _19318
    _19480 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_19426 + 100] = 32
    mem[_19426 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db951):
        revert with 0, 'Address: call to non-contract'
    _19726 = mem[_19480]
    mem[_19426 + 164 len ceil32(mem[_19480])] = mem[_19480 + 32 len ceil32(mem[_19480])]
    if ceil32(_19726) > _19726:
        mem[_19726 + _19426 + 164] = 0
    call 0x00c7198437980c041c805a1edcba50c1ce5db951 with:
         gas gas_remaining wei
        args mem[_19426 + 168 len _19726 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_19426 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_19426 + 196] == bool(mem[_19426 + 196])
            if not mem[_19426 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    watermark = 0
    emit EmergencyWithdraw(_19318);
}

function collectProfitAndUpdateWatermark() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Only vault'
    require ext_code.size(sub_dbeee4aeAddress)
    staticcall sub_dbeee4aeAddress.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_8e2d7196Address)
            staticcall sub_8e2d7196Address.0xbd244af4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 <= watermark:
                    emit CollectProfitAndUpdateWatermark(0, watermark, 0);
                    return 0
                if 0 < watermark:
                    revert with 0, 17
                if -watermark and profitFeePerc > -1 / -watermark:
                    revert with 0, 17
                watermark = 0
                emit CollectProfitAndUpdateWatermark(0, watermark, -1 * watermark * profitFeePerc / 10000);
                return (-1 * watermark * profitFeePerc / 10000)
            require ext_code.size(sub_8e2d7196Address)
            staticcall sub_8e2d7196Address.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8e2d7196Address)
            staticcall sub_8e2d7196Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
                emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
                revert with 0, 17
            watermark = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000)
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
                emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
                revert with 0, 17
            watermark = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000)
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
            emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
            return 0
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
            revert with 0, 17
        if (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
            revert with 0, 17
        bool(stor4.field_0) = 0
        uint255(stor4.field_1) = uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000)
    require ext_code.size(sub_dbeee4aeAddress)
    staticcall sub_dbeee4aeAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_dbeee4aeAddress)
    staticcall sub_dbeee4aeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_a3ba1798Address)
    staticcall sub_a3ba1798Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
                emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
                revert with 0, 17
            watermark = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000)
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8e2d7196Address)
        staticcall sub_8e2d7196Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
            emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
            return 0
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
            revert with 0, 17
        if (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
            revert with 0, 17
        bool(stor4.field_0) = 0
        uint255(stor4.field_1) = uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000)
    require ext_code.size(sub_a3ba1798Address)
    staticcall sub_a3ba1798Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a3ba1798Address)
    staticcall sub_a3ba1798Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
            emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
            return 0
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
            revert with 0, 17
        if (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
            revert with 0, 17
        bool(stor4.field_0) = 0
        uint255(stor4.field_1) = uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000)
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    if 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
        emit CollectProfitAndUpdateWatermark(3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
        return 0
    if 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
        revert with 0, 17
    if (3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
        revert with 0, 17
    watermark = 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    emit CollectProfitAndUpdateWatermark(3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000)
}

function sub_9dcc5daf(?) payable {
    require calldata.size - 4 >= 96
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Only vault'
    if not arg1:
        require ext_code.size(sub_dbeee4aeAddress)
        staticcall sub_dbeee4aeAddress.0xbd244af4 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            revert with 0, 18
        require ext_code.size(sub_dbeee4aeAddress)
        staticcall sub_dbeee4aeAddress.totalSupply() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_dbeee4aeAddress)
        staticcall sub_dbeee4aeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_dbeee4aeAddress)
        staticcall sub_dbeee4aeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
        require ext_code.size(sub_dbeee4aeAddress)
        call sub_dbeee4aeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18)
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 132] = 0xc7198437980c041c805a1edcba50c1ce5db951
        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 196] = 0
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        mem[(7 * ceil32(return_data.size)) + 260] = this.address
        mem[(7 * ceil32(return_data.size)) + 292] = block.timestamp
        require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
        call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0xc7198437980c041c805a1edcba50c1ce5db951, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
        mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[(8 * ceil32(return_data.size)) + 160] = 0xc7198437980c041c805a1edcba50c1ce5db951
        mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 228] = arg3
        mem[(8 * ceil32(return_data.size)) + 260] = 160
        mem[(8 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 388
        t = (8 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 292] = this.address
        mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
        call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1688 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _1695 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 0, 65
        if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require (32 * _1695) + _1688 + 32 <= return_data.size
        mem[(10 * ceil32(return_data.size)) + 224 len ceil32(32 * _1695)] = mem[(8 * ceil32(return_data.size)) + _1688 + 224 len ceil32(32 * _1695)]
        if 1 >= _1695:
            revert with 0, 50
        _3229 = mem[(10 * ceil32(return_data.size)) + 256]
        if ext_call.return_data[32] > !mem[(10 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        mem[mem[64] + 32] = ext_call.return_data[32] + mem[(10 * ceil32(return_data.size)) + 256]
        emit 0xe2816b92: ext_call.return_data[0], ext_call.return_data[32] + _3229
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951)
        staticcall 0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3264 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3265 = mem[_3264]
        _3268 = mem[64]
        mem[mem[64] + 36] = address(vaultAddress)
        mem[mem[64] + 68] = _3265
        _3269 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_3268 + 100] = 32
        mem[_3268 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db951):
            revert with 0, 'Address: call to non-contract'
        _3303 = mem[_3269]
        mem[_3268 + 164 len ceil32(mem[_3269])] = mem[_3269 + 32 len ceil32(mem[_3269])]
        if ceil32(_3303) > _3303:
            mem[_3303 + _3268 + 164] = 0
        call 0x00c7198437980c041c805a1edcba50c1ce5db951 with:
             gas gas_remaining wei
            args mem[_3268 + 168 len _3303 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_3268 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_3268 + 196] == bool(mem[_3268 + 196])
                if not mem[_3268 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Reimburse(_3265);
        return _3265
    if 1 == arg1:
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.0xbd244af4 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            revert with 0, 18
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.totalSupply() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_a3ba1798Address)
        staticcall sub_a3ba1798Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
        require ext_code.size(sub_a3ba1798Address)
        call sub_a3ba1798Address.0x2e1a7d4d with:
             gas gas_remaining wei
            args (ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18)
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 132] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 196] = 0
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        mem[(7 * ceil32(return_data.size)) + 260] = this.address
        mem[(7 * ceil32(return_data.size)) + 292] = block.timestamp
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
        mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[(8 * ceil32(return_data.size)) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
        mem[(8 * ceil32(return_data.size)) + 228] = arg3
        mem[(8 * ceil32(return_data.size)) + 260] = 160
        mem[(8 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 388
        t = (8 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 292] = this.address
        mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[32], arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1687 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _1694 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
            revert with 0, 65
        if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
        require (32 * _1694) + _1687 + 32 <= return_data.size
        mem[(10 * ceil32(return_data.size)) + 224 len ceil32(32 * _1694)] = mem[(8 * ceil32(return_data.size)) + _1687 + 224 len ceil32(32 * _1694)]
        if 1 >= _1694:
            revert with 0, 50
        _3228 = mem[(10 * ceil32(return_data.size)) + 256]
        if ext_call.return_data[0] > !mem[(10 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        _3262 = mem[0]
        if ext_call.return_data[0] + mem[(10 * ceil32(return_data.size)) + 256] > 0x295fad40a57eb50295fad40a57eb50295fad40a57eb50295fad40a57eb50295:
            revert with 0, 17
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = ext_call.return_data[0] + _3228
        mem[mem[64] + 100] = (99 * ext_call.return_data[0]) + (99 * _3228) / 100
        require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 1, 0, ext_call.return_data[0] + _3228, (99 * ext_call.return_data[0]) + (99 * _3228) / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3300 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3317 = mem[_3300]
        mem[mem[64] + 32] = mem[_3300]
        emit 0xf8ed8bc4: ext_call.return_data[0], _3317
        mem[mem[64] + 4] = this.address
        mem[0] = _3262
        require ext_code.size(0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951)
        staticcall 0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3408 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3422 = mem[_3408]
        mem[0] = _3262
        _3466 = mem[64]
        mem[mem[64] + 36] = address(vaultAddress)
        mem[mem[64] + 68] = _3422
        _3488 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_3466 + 100] = 32
        mem[_3466 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db951):
            revert with 0, 'Address: call to non-contract'
        _3599 = mem[_3488]
        mem[_3466 + 164 len ceil32(mem[_3488])] = mem[_3488 + 32 len ceil32(mem[_3488])]
        if ceil32(_3599) > _3599:
            mem[_3599 + _3466 + 164] = 0
        call 0x00c7198437980c041c805a1edcba50c1ce5db951 with:
             gas gas_remaining wei
            args mem[_3466 + 168 len _3599 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_3466 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_3466 + 196] == bool(mem[_3466 + 196])
                if not mem[_3466 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Reimburse(_3422);
        return _3422
    if arg1 != 2:
        mem[100] = this.address
        require ext_code.size(0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951)
        staticcall 0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db951):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call 0x00c7198437980c041c805a1edcba50c1ce5db951 with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Reimburse(ext_call.return_data[0]);
        return ext_call.return_data[0]
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.0xbd244af4 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        revert with 0, 18
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.totalSupply() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 18
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(sub_8e2d7196Address)
    staticcall sub_8e2d7196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
    require ext_code.size(sub_8e2d7196Address)
    call sub_8e2d7196Address.0x2e1a7d4d with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18)
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 132] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 196] = 0
    mem[(7 * ceil32(return_data.size)) + 228] = 0
    mem[(7 * ceil32(return_data.size)) + 260] = this.address
    mem[(7 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(8 * ceil32(return_data.size)) + 96] = 2
    mem[(8 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[(8 * ceil32(return_data.size)) + 160] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
    mem[(8 * ceil32(return_data.size)) + 228] = arg3
    mem[(8 * ceil32(return_data.size)) + 260] = 160
    mem[(8 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (8 * ceil32(return_data.size)) + 388
    t = (8 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = this.address
    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[32], arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _1686 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _1693 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
        revert with 0, 65
    if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193
    mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
    require (32 * _1693) + _1686 + 32 <= return_data.size
    mem[(10 * ceil32(return_data.size)) + 224 len ceil32(32 * _1693)] = mem[(8 * ceil32(return_data.size)) + _1686 + 224 len ceil32(32 * _1693)]
    if 1 >= _1693:
        revert with 0, 50
    _3227 = mem[(10 * ceil32(return_data.size)) + 256]
    if ext_call.return_data[0] > !mem[(10 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    _3260 = mem[0]
    if ext_call.return_data[0] + mem[(10 * ceil32(return_data.size)) + 256] / 10^12 > 0x295fad40a57eb50295fad40a57eb50295fad40a57eb50295fad40a57eb50295:
        revert with 0, 17
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = ext_call.return_data[0] + _3227
    mem[mem[64] + 100] = 99 * ext_call.return_data[0] + _3227 / 10^12 / 100
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0] + _3227, 99 * ext_call.return_data[0] + _3227 / 10^12 / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3323 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _3342 = mem[_3323]
    mem[mem[64] + 32] = mem[_3323]
    emit 0xedb32e6b: ext_call.return_data[0], _3342
    mem[mem[64] + 4] = this.address
    mem[0] = _3260
    require ext_code.size(0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951)
    staticcall 0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3419 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _3457 = mem[_3419]
    mem[0] = _3260
    _3495 = mem[64]
    mem[mem[64] + 36] = address(vaultAddress)
    mem[mem[64] + 68] = _3457
    _3506 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_3495 + 100] = 32
    mem[_3495 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db951):
        revert with 0, 'Address: call to non-contract'
    _3624 = mem[_3506]
    mem[_3495 + 164 len ceil32(mem[_3506])] = mem[_3506 + 32 len ceil32(mem[_3506])]
    if ceil32(_3624) > _3624:
        mem[_3624 + _3495 + 164] = 0
    call 0x00c7198437980c041c805a1edcba50c1ce5db951 with:
         gas gas_remaining wei
        args mem[_3495 + 168 len _3624 - 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_3495 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_3495 + 196] == bool(mem[_3495 + 196])
            if not mem[_3495 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Reimburse(_3457);
    return _3457
}



}
