contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256[] arg2)
#  - initialize(address arg1, address arg2, address arg3)
#  - invest(uint256 arg1, uint256[] arg2)
#
address sub_b6ec2173Address; offset 16
address sub_128a3e27Address;
address sub_d56271daAddress;
uint32 stor3;
address vaultAddress;
uint256 stor3;
uint256 watermark;
uint256 profitFeePerc;

function sub_128a3e27(?) payable {
    return sub_128a3e27Address
}

function sub_b6ec2173(?) payable {
    return sub_b6ec2173Address
}

function sub_d56271da(?) payable {
    return sub_d56271daAddress
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

function sub_cd5b5616(?) payable {
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0xcd5b5616 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0xcd5b5616 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0xcd5b5616 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0x70a08231 with:
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
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0xcd5b5616 with:
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
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x70a08231 with:
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
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0xcd5b5616 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0xcd5b5616 with:
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
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x70a08231 with:
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
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0xcd5b5616 with:
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
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x70a08231 with:
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
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = 10^18 * ext_call.return_data[0] / 10^18
    require ext_code.size(sub_b6ec2173Address)
    call sub_b6ec2173Address.0x2e1a7d4d with:
         gas gas_remaining wei
        args (10^18 * ext_call.return_data[0] / 10^18)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[0]
    mem[(2 * ceil32(return_data.size)) + 132] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = this.address
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    mem[(4 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
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
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _192 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _193 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require (32 * _193) + _192 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _193)] = mem[(4 * ceil32(return_data.size)) + _192 + 224 len ceil32(32 * _193)]
    if 1 >= _193:
        revert with 0, 50
    _355 = mem[(6 * ceil32(return_data.size)) + 256]
    if ext_call.return_data[32] > !mem[(6 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    mem[mem[64] + 32] = ext_call.return_data[32] + mem[(6 * ceil32(return_data.size)) + 256]
    emit 0x2fd181bc: ext_call.return_data[0], ext_call.return_data[32] + _355
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _360 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _361 = mem[_360]
    if mem[_360] and 10^18 > -1 / mem[_360]:
        revert with 0, 17
    mem[mem[64] + 4] = 10^18 * mem[_360] / 10^18
    require ext_code.size(sub_128a3e27Address)
    call sub_128a3e27Address.0x2e1a7d4d with:
         gas gas_remaining wei
        args (10^18 * _361 / 10^18)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _364 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _365 = mem[_364]
    mem[0] = _12
    mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[mem[64] + 68] = _365
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = this.address
    mem[mem[64] + 196] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0x60781c2586d68229fde47564546784ab3faca982, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, _365, 0, 0, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _370 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _371 = mem[_370]
    _372 = mem[_370 + 32]
    mem[0] = _12
    _375 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_375]:
        revert with 0, 50
    mem[_375 + 32] = 0x60781c2586d68229fde47564546784ab3faca982
    if 1 >= mem[_375]:
        revert with 0, 50
    mem[_375 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[_375 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_375 + 100] = _371
    mem[_375 + 132] = 0
    mem[_375 + 164] = 160
    mem[_375 + 260] = mem[_375]
    idx = 0
    s = _375 + 292
    t = _375 + 32
    while idx < mem[_375]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_375 + 196] = this.address
    mem[_375 + 228] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _375 + (32 * mem[_375]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _513 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _514 = mem[_513]
    require mem[_513] <= test266151307()
    require _513 + mem[_513] + 31 < _513 + return_data.size
    _515 = mem[_513 + mem[_513]]
    if mem[_513 + mem[_513]] > test266151307():
        revert with 0, 65
    if _513 + ceil32(return_data.size) + ceil32(32 * mem[_513 + mem[_513]]) + 1 > test266151307() or ceil32(32 * mem[_513 + mem[_513]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _513 + ceil32(return_data.size) + ceil32(32 * mem[_513 + mem[_513]]) + 1
    mem[_513 + ceil32(return_data.size)] = _515
    require (32 * _515) + _514 + 32 <= return_data.size
    mem[_513 + ceil32(return_data.size) + 32 len ceil32(32 * _515)] = mem[_513 + _514 + 32 len ceil32(32 * _515)]
    if 1 >= _515:
        revert with 0, 50
    _644 = mem[_513 + ceil32(return_data.size) + 64]
    if _372 > !mem[_513 + ceil32(return_data.size) + 64]:
        revert with 0, 17
    mem[mem[64] + 32] = _372 + mem[_513 + ceil32(return_data.size) + 64]
    emit 0x7955ac4c: _365, _372 + _644
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _649 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _650 = mem[_649]
    if mem[_649] and 10^18 > -1 / mem[_649]:
        revert with 0, 17
    mem[mem[64] + 4] = 10^18 * mem[_649] / 10^18
    require ext_code.size(sub_d56271daAddress)
    call sub_d56271daAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args (10^18 * _650 / 10^18)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _653 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _654 = mem[_653]
    mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[mem[64] + 68] = _654
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = this.address
    mem[mem[64] + 196] = block.timestamp
    require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, _654, 0, 0, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _659 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _660 = mem[_659]
    _661 = mem[_659 + 32]
    _664 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_664]:
        revert with 0, 50
    mem[_664 + 32] = 0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084
    if 1 >= mem[_664]:
        revert with 0, 50
    mem[_664 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[_664 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_664 + 100] = _660
    mem[_664 + 132] = 0
    mem[_664 + 164] = 160
    mem[_664 + 260] = mem[_664]
    idx = 0
    s = _664 + 292
    t = _664 + 32
    while idx < mem[_664]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_664 + 196] = this.address
    mem[_664 + 228] = block.timestamp
    require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _664 + (32 * mem[_664]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _769 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _770 = mem[_769]
    require mem[_769] <= test266151307()
    require _769 + mem[_769] + 31 < _769 + return_data.size
    _771 = mem[_769 + mem[_769]]
    if mem[_769 + mem[_769]] > test266151307():
        revert with 0, 65
    if _769 + ceil32(return_data.size) + ceil32(32 * mem[_769 + mem[_769]]) + 1 > test266151307() or ceil32(32 * mem[_769 + mem[_769]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _769 + ceil32(return_data.size) + ceil32(32 * mem[_769 + mem[_769]]) + 1
    mem[_769 + ceil32(return_data.size)] = _771
    require (32 * _771) + _770 + 32 <= return_data.size
    mem[_769 + ceil32(return_data.size) + 32 len ceil32(32 * _771)] = mem[_769 + _770 + 32 len ceil32(32 * _771)]
    if 1 >= _771:
        revert with 0, 50
    _867 = mem[_769 + ceil32(return_data.size) + 64]
    if _661 > !mem[_769 + ceil32(return_data.size) + 64]:
        revert with 0, 17
    mem[mem[64] + 32] = _661 + mem[_769 + ceil32(return_data.size) + 64]
    emit 0xd1e2c106: _654, _661 + _867
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
    staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _874 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _875 = mem[_874]
    _878 = mem[64]
    mem[mem[64] + 36] = address(vaultAddress)
    mem[mem[64] + 68] = _875
    _879 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_878 + 100] = 32
    mem[_878 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66):
        revert with 0, 'Address: call to non-contract'
    _886 = mem[_879]
    mem[_878 + 164 len ceil32(mem[_879])] = mem[_879 + 32 len ceil32(mem[_879])]
    if ceil32(_886) > _886:
        mem[_886 + _878 + 164] = 0
    call 0x00b31f66aa3c1e785363f0875a1b74e27b85fd66 with:
         gas gas_remaining wei
        args mem[_878 + 168 len _886 - 4]
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
        mem[_878 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_878 + 196] == bool(mem[_878 + 196])
            if not mem[_878 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    watermark = 0
    emit EmergencyWithdraw(_875);
}

function getAllPoolInUSD() payable {
    require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
    staticcall 0xa77230d17318075983913bc2145db16c7366156.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ChainLink error'
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0xcd5b5616 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 224] = 0xcd5b561600000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0xcd5b5616 with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 224] = 0xcd5b561600000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0xcd5b5616 with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 and ext_call.return_data[0] > -1 / 0:
                    revert with 0, 17
                return 0, mem[(6 * ceil32(return_data.size)) + 256 len 9 * ceil32(return_data.size)]
            mem[(6 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0x18160ddd with:
                    gas gas_remaining wei
                   args mem[(6 * ceil32(return_data.size)) + 228 len 8 * ceil32(return_data.size)]
            mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
            return memory
              from (8 * ceil32(return_data.size)) + 224
               len ceil32(return_data.size) + 32
        mem[(4 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x18160ddd with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
        mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address, mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0xcd5b5616 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
            return memory
              from (8 * ceil32(return_data.size)) + 224
               len ceil32(return_data.size) + 32
        mem[(8 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x18160ddd with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address, mem[(10 * ceil32(return_data.size)) + 260 len 17 * ceil32(return_data.size)]
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
        if uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6)
    mem[(2 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0x18160ddd with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0x70a08231 with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 32]
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    mem[(6 * ceil32(return_data.size)) + 224] = 0xcd5b561600000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0xcd5b5616 with:
            gas gas_remaining wei
           args mem[(6 * ceil32(return_data.size)) + 228 len 8 * ceil32(return_data.size)]
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0xcd5b5616 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
            return memory
              from (8 * ceil32(return_data.size)) + 224
               len ceil32(return_data.size) + 32
        mem[(8 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x18160ddd with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address, mem[(10 * ceil32(return_data.size)) + 260 len 17 * ceil32(return_data.size)]
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
        if uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6)
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0x18160ddd with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0x70a08231 with:
            gas gas_remaining wei
           args mem[(8 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
    mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    mem[(10 * ceil32(return_data.size)) + 224] = 0xcd5b561600000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0xcd5b5616 with:
            gas gas_remaining wei
           args mem[(10 * ceil32(return_data.size)) + 228 len 16 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6)
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x70a08231 with:
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
    if 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6)
}

function getCurrentCompositionPerc() payable {
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0xcd5b5616 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0xcd5b5616 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0xcd5b5616 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0x70a08231 with:
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
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            return Array(len=3, data=0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0xcd5b5616 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            return Array(len=3, data=0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x70a08231 with:
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
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        return Array(len=3, data=0 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0xcd5b5616 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0xcd5b5616 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            return Array(len=3, data=10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x70a08231 with:
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
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        return Array(len=3, data=10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0xcd5b5616 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        return Array(len=3, data=10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x70a08231 with:
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
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 18
    return Array(len=3, data=10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
}

function sub_9dcc5daf(?) payable {
    require calldata.size - 4 >= 96
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Only vault'
    if not arg1:
        require ext_code.size(sub_b6ec2173Address)
        staticcall sub_b6ec2173Address.0xcd5b5616 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            revert with 0, 18
        require ext_code.size(sub_b6ec2173Address)
        staticcall sub_b6ec2173Address.0x18160ddd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_b6ec2173Address)
        staticcall sub_b6ec2173Address.0x70a08231 with:
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
        require ext_code.size(sub_b6ec2173Address)
        staticcall sub_b6ec2173Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
        require ext_code.size(sub_b6ec2173Address)
        call sub_b6ec2173Address.0x2e1a7d4d with:
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
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
             gas gas_remaining wei
            args 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
        mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
        mem[(8 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
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
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _566 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _573 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 0, 65
        if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require (32 * _573) + _566 + 32 <= return_data.size
        mem[(10 * ceil32(return_data.size)) + 224 len ceil32(32 * _573)] = mem[(8 * ceil32(return_data.size)) + _566 + 224 len ceil32(32 * _573)]
        if 1 >= _573:
            revert with 0, 50
        _989 = mem[(10 * ceil32(return_data.size)) + 256]
        if ext_call.return_data[32] > !mem[(10 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        mem[mem[64] + 32] = ext_call.return_data[32] + mem[(10 * ceil32(return_data.size)) + 256]
        emit 0x2fd181bc: ext_call.return_data[0], ext_call.return_data[32] + _989
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1018 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1023 = mem[_1018]
        _1032 = mem[64]
        mem[mem[64] + 36] = address(vaultAddress)
        mem[mem[64] + 68] = _1023
        _1036 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_1032 + 100] = 32
        mem[_1032 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66):
            revert with 0, 'Address: call to non-contract'
        _1056 = mem[_1036]
        mem[_1032 + 164 len ceil32(mem[_1036])] = mem[_1036 + 32 len ceil32(mem[_1036])]
        if ceil32(_1056) > _1056:
            mem[_1056 + _1032 + 164] = 0
        call 0x00b31f66aa3c1e785363f0875a1b74e27b85fd66 with:
             gas gas_remaining wei
            args mem[_1032 + 168 len _1056 - 4]
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
            mem[_1032 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_1032 + 196] == bool(mem[_1032 + 196])
                if not mem[_1032 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Reimburse(_1023);
        return _1023
    if 1 == arg1:
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0xcd5b5616 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            revert with 0, 18
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x18160ddd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x70a08231 with:
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
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
        require ext_code.size(sub_128a3e27Address)
        call sub_128a3e27Address.0x2e1a7d4d with:
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
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
             gas gas_remaining wei
            args 0x60781c2586d68229fde47564546784ab3faca982, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
        mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = 0x60781c2586d68229fde47564546784ab3faca982
        mem[(8 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
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
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _565 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _572 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 0, 65
        if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require (32 * _572) + _565 + 32 <= return_data.size
        mem[(10 * ceil32(return_data.size)) + 224 len ceil32(32 * _572)] = mem[(8 * ceil32(return_data.size)) + _565 + 224 len ceil32(32 * _572)]
        if 1 >= _572:
            revert with 0, 50
        _988 = mem[(10 * ceil32(return_data.size)) + 256]
        if ext_call.return_data[32] > !mem[(10 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        mem[mem[64] + 32] = ext_call.return_data[32] + mem[(10 * ceil32(return_data.size)) + 256]
        emit 0x7955ac4c: ext_call.return_data[0], ext_call.return_data[32] + _988
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1017 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1022 = mem[_1017]
        _1031 = mem[64]
        mem[mem[64] + 36] = address(vaultAddress)
        mem[mem[64] + 68] = _1022
        _1034 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_1031 + 100] = 32
        mem[_1031 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66):
            revert with 0, 'Address: call to non-contract'
        _1054 = mem[_1034]
        mem[_1031 + 164 len ceil32(mem[_1034])] = mem[_1034 + 32 len ceil32(mem[_1034])]
        if ceil32(_1054) > _1054:
            mem[_1054 + _1031 + 164] = 0
        call 0x00b31f66aa3c1e785363f0875a1b74e27b85fd66 with:
             gas gas_remaining wei
            args mem[_1031 + 168 len _1054 - 4]
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
            mem[_1031 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_1031 + 196] == bool(mem[_1031 + 196])
                if not mem[_1031 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Reimburse(_1022);
        return _1022
    if arg1 != 2:
        mem[100] = this.address
        require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
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
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call 0x00b31f66aa3c1e785363f0875a1b74e27b85fd66 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) << 288)
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
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0xcd5b5616 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        revert with 0, 18
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x70a08231 with:
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
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
    require ext_code.size(sub_d56271daAddress)
    call sub_d56271daAddress.0x2e1a7d4d with:
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
    require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(8 * ceil32(return_data.size)) + 96] = 2
    mem[(8 * ceil32(return_data.size)) + 128] = 0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084
    mem[(8 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
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
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _564 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _571 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require (32 * _571) + _564 + 32 <= return_data.size
    mem[(10 * ceil32(return_data.size)) + 224 len ceil32(32 * _571)] = mem[(8 * ceil32(return_data.size)) + _564 + 224 len ceil32(32 * _571)]
    if 1 >= _571:
        revert with 0, 50
    _987 = mem[(10 * ceil32(return_data.size)) + 256]
    if ext_call.return_data[32] > !mem[(10 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    mem[mem[64] + 32] = ext_call.return_data[32] + mem[(10 * ceil32(return_data.size)) + 256]
    emit 0xd1e2c106: ext_call.return_data[0], ext_call.return_data[32] + _987
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
    staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1016 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1019 = mem[_1016]
    _1024 = mem[64]
    mem[mem[64] + 36] = address(vaultAddress)
    mem[mem[64] + 68] = _1019
    _1029 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_1024 + 100] = 32
    mem[_1024 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66):
        revert with 0, 'Address: call to non-contract'
    _1046 = mem[_1029]
    mem[_1024 + 164 len ceil32(mem[_1029])] = mem[_1029 + 32 len ceil32(mem[_1029])]
    if ceil32(_1046) > _1046:
        mem[_1046 + _1024 + 164] = 0
    call 0x00b31f66aa3c1e785363f0875a1b74e27b85fd66 with:
         gas gas_remaining wei
        args mem[_1024 + 168 len _1046 - 4]
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
        mem[_1024 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_1024 + 196] == bool(mem[_1024 + 196])
            if not mem[_1024 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Reimburse(_1019);
    return _1019
}

function collectProfitAndUpdateWatermark() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Only vault'
    require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
    staticcall 0xa77230d17318075983913bc2145db16c7366156.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ChainLink error'
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0xcd5b5616 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 224] = 0xcd5b561600000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0xcd5b5616 with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 224] = 0xcd5b561600000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0xcd5b5616 with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 and ext_call.return_data[0] > -1 / 0:
                    revert with 0, 17
                if 0 / 100 * 10^6 <= watermark:
                    mem[(6 * ceil32(return_data.size)) + 256] = watermark
                    mem[(6 * ceil32(return_data.size)) + 288] = 0
                    emit CollectProfitAndUpdateWatermark(uint256 rg1, uint256 rg2, uint256 rg3):
                                                         0,
                                                         watermark,
                                                         0,
                                                         mem[(6 * ceil32(return_data.size)) + 320 len 9 * ceil32(return_data.size)],
                    return 0, mem[(6 * ceil32(return_data.size)) + 256 len 9 * ceil32(return_data.size)]
                if 0 / 100 * 10^6 < watermark:
                    revert with 0, 17
                if (0 / 100 * 10^6) - watermark and profitFeePerc > -1 / (0 / 100 * 10^6) - watermark:
                    revert with 0, 17
                watermark = 0 / 100 * 10^6
                mem[(6 * ceil32(return_data.size)) + 256] = watermark
                mem[(6 * ceil32(return_data.size)) + 288] = (0 / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000
                emit CollectProfitAndUpdateWatermark(uint256 rg1, uint256 rg2, uint256 rg3):
                                                     0,
                                                     watermark,
                                                     -1 * watermark * profitFeePerc / 10000,
                                                     mem[(6 * ceil32(return_data.size)) + 320 len 9 * ceil32(return_data.size)],
                return -1 * watermark * profitFeePerc / 10000, mem[(6 * ceil32(return_data.size)) + 256 len 9 * ceil32(return_data.size)]
            mem[(6 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0x18160ddd with:
                    gas gas_remaining wei
                   args mem[(6 * ceil32(return_data.size)) + 228 len 8 * ceil32(return_data.size)]
            mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(sub_d56271daAddress)
            staticcall sub_d56271daAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 <= watermark:
                mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
                mem[(8 * ceil32(return_data.size)) + 256] = watermark
                mem[(8 * ceil32(return_data.size)) + 288] = 0
                emit CollectProfitAndUpdateWatermark(uint256 rg1, uint256 rg2, uint256 rg3):
                                                     mem[(8 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 96],
                mem[(8 * ceil32(return_data.size)) + 224] = 0
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 < watermark:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) - watermark and profitFeePerc > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) - watermark:
                    revert with 0, 17
                watermark = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
                mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
                mem[(8 * ceil32(return_data.size)) + 256] = watermark
                mem[(8 * ceil32(return_data.size)) + 288] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000
                emit CollectProfitAndUpdateWatermark(uint256 rg1, uint256 rg2, uint256 rg3):
                                                     mem[(8 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 96],
                mem[(8 * ceil32(return_data.size)) + 224] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000
            return memory
              from (8 * ceil32(return_data.size)) + 224
               len ceil32(return_data.size) + 32
        mem[(4 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x18160ddd with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
        mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(sub_128a3e27Address)
        staticcall sub_128a3e27Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address, mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0xcd5b5616 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 <= watermark:
                mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
                mem[(8 * ceil32(return_data.size)) + 256] = watermark
                mem[(8 * ceil32(return_data.size)) + 288] = 0
                emit CollectProfitAndUpdateWatermark(uint256 rg1, uint256 rg2, uint256 rg3):
                                                     mem[(8 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 96],
                mem[(8 * ceil32(return_data.size)) + 224] = 0
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 < watermark:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) - watermark and profitFeePerc > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) - watermark:
                    revert with 0, 17
                watermark = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
                mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
                mem[(8 * ceil32(return_data.size)) + 256] = watermark
                mem[(8 * ceil32(return_data.size)) + 288] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000
                emit CollectProfitAndUpdateWatermark(uint256 rg1, uint256 rg2, uint256 rg3):
                                                     mem[(8 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 96],
                mem[(8 * ceil32(return_data.size)) + 224] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000
            return memory
              from (8 * ceil32(return_data.size)) + 224
               len ceil32(return_data.size) + 32
        mem[(8 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x18160ddd with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address, mem[(10 * ceil32(return_data.size)) + 260 len 17 * ceil32(return_data.size)]
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
        if uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 <= watermark:
            emit CollectProfitAndUpdateWatermark((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6, watermark, 0);
            return 0
        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 < watermark:
            revert with 0, 17
        if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6) - watermark and profitFeePerc > -1 / ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6) - watermark:
            revert with 0, 17
        watermark = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6
        emit CollectProfitAndUpdateWatermark((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6, watermark, ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return (((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000)
    mem[(2 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0x18160ddd with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(sub_b6ec2173Address)
    staticcall sub_b6ec2173Address.0x70a08231 with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 32]
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    mem[(6 * ceil32(return_data.size)) + 224] = 0xcd5b561600000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0xcd5b5616 with:
            gas gas_remaining wei
           args mem[(6 * ceil32(return_data.size)) + 228 len 8 * ceil32(return_data.size)]
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0xcd5b5616 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 <= watermark:
                mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
                mem[(8 * ceil32(return_data.size)) + 256] = watermark
                mem[(8 * ceil32(return_data.size)) + 288] = 0
                emit CollectProfitAndUpdateWatermark(uint256 rg1, uint256 rg2, uint256 rg3):
                                                     mem[(8 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 96],
                mem[(8 * ceil32(return_data.size)) + 224] = 0
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 < watermark:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) - watermark and profitFeePerc > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) - watermark:
                    revert with 0, 17
                watermark = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
                mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6
                mem[(8 * ceil32(return_data.size)) + 256] = watermark
                mem[(8 * ceil32(return_data.size)) + 288] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000
                emit CollectProfitAndUpdateWatermark(uint256 rg1, uint256 rg2, uint256 rg3):
                                                     mem[(8 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 96],
                mem[(8 * ceil32(return_data.size)) + 224] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000
            return memory
              from (8 * ceil32(return_data.size)) + 224
               len ceil32(return_data.size) + 32
        mem[(8 * ceil32(return_data.size)) + 224] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x18160ddd with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d56271daAddress)
        staticcall sub_d56271daAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address, mem[(10 * ceil32(return_data.size)) + 260 len 17 * ceil32(return_data.size)]
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
        if uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 <= watermark:
            emit CollectProfitAndUpdateWatermark((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6, watermark, 0);
            return 0
        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 < watermark:
            revert with 0, 17
        if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6) - watermark and profitFeePerc > -1 / ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6) - watermark:
            revert with 0, 17
        watermark = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6
        emit CollectProfitAndUpdateWatermark((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6, watermark, ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return (((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000)
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0x18160ddd with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(sub_128a3e27Address)
    staticcall sub_128a3e27Address.0x70a08231 with:
            gas gas_remaining wei
           args mem[(8 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
    mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    mem[(10 * ceil32(return_data.size)) + 224] = 0xcd5b561600000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0xcd5b5616 with:
            gas gas_remaining wei
           args mem[(10 * ceil32(return_data.size)) + 228 len 16 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 <= watermark:
            emit CollectProfitAndUpdateWatermark((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6, watermark, 0);
            return 0
        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 < watermark:
            revert with 0, 17
        if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6) - watermark and profitFeePerc > -1 / ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6) - watermark:
            revert with 0, 17
        watermark = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6
        emit CollectProfitAndUpdateWatermark((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6, watermark, ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return (((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000)
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d56271daAddress)
    staticcall sub_d56271daAddress.0x70a08231 with:
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
    if 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 <= watermark:
        emit CollectProfitAndUpdateWatermark((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6, watermark, 0);
        return 0
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 < watermark:
        revert with 0, 17
    if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6) - watermark and profitFeePerc > -1 / ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6) - watermark:
        revert with 0, 17
    watermark = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6
    emit CollectProfitAndUpdateWatermark((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6, watermark, ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000);
    return (((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * profitFeePerc) - (watermark * profitFeePerc) / 10000)
}



}
