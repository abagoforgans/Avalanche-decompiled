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
address vaultAddress;

function sub_128a3e27(?) payable {
    return sub_128a3e27Address
}

function sub_b6ec2173(?) payable {
    return sub_b6ec2173Address
}

function sub_d56271da(?) payable {
    return sub_d56271daAddress
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if vaultAddress:
        revert with 0, 'Vault set'
    vaultAddress = arg1
}

function getEachPool() payable {
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
                return ''
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
            return '', 0, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
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
            return '', ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
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
        return '', 
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
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
            return 32, 3, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0
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
        return 32, 3, 
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               0,
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
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
        return 32, 3, 
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               0
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
    return Array(len=3, data=ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
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
    if vaultAddress != msg.sender:
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
    call sub_b6ec2173Address.withdraw(uint256 arg1) with:
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
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
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
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
    call sub_128a3e27Address.withdraw(uint256 arg1) with:
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
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
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
    call sub_d56271daAddress.withdraw(uint256 arg1) with:
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
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
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
    mem[mem[64] + 36] = vaultAddress
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



}
