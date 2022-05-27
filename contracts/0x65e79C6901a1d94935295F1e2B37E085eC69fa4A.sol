contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
uint256 pid;
address sub_19921904Address;
address WAVAXAddress;
address sub_1eb04addAddress;
address routerAddress;
address masterchefAddress;

function sub_19921904(?) {
    return sub_19921904Address
}

function sub_1eb04add(?) {
    return sub_1eb04addAddress
}

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function pid() {
    return pid
}

function admin() {
    return adminAddress
}

function router() {
    return routerAddress
}

function masterchef() {
    return masterchefAddress
}

function _fallback() payable {
    revert
}

function harvest() {
    require ext_code.size(masterchefAddress)
    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function call(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Compounder: Caller is not the deployer'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with 0, 'Compounder: external call failed'
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function deposit() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Compounder: Caller is not the deployer'
    require ext_code.size(sub_1eb04addAddress)
    staticcall sub_1eb04addAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Compounder: Insufficient LP balance'
    require ext_code.size(sub_1eb04addAddress)
    staticcall sub_1eb04addAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Compounder: Caller is not the deployer'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args pid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1eb04addAddress)
    staticcall sub_1eb04addAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1eb04addAddress)
    call sub_1eb04addAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_19921904Address)
    staticcall sub_19921904Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_19921904Address)
    call sub_19921904Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function compound() {
    if msg.sender == owner:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 2
        mem[128] = sub_19921904Address
        mem[160] = WAVAXAddress
        mem[196] = this.address
        require ext_code.size(sub_19921904Address)
        staticcall sub_19921904Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1200 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] / 2
        mem[ceil32(return_data.size) + 228] = 0
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _101 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _103 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = _103
        require return_data.size >= _101 + (32 * _103) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _103] = mem[ceil32(return_data.size) + _101 + 224 len 32 * _103]
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_19921904Address)
        staticcall sub_19921904Address.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _173 = mem[_171]
        mem[mem[64] + 4] = this.address
        require ext_code.size(WAVAXAddress)
        staticcall WAVAXAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _181 = mem[_179]
        if 1200 > !block.timestamp:
            revert with 0, 17
        mem[mem[64] + 68] = _173
        mem[mem[64] + 100] = _181
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 1200
        require ext_code.size(routerAddress)
        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args sub_19921904Address, WAVAXAddress, _173, _181, 0, 0, address(this.address), block.timestamp + 1200
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if owner != msg.sender:
            revert with 0, 'Compounder: Caller is not the deployer'
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_1eb04addAddress)
        staticcall sub_1eb04addAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_203] <= 0:
            revert with 0, 'Compounder: Insufficient LP balance'
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_1eb04addAddress)
        staticcall sub_1eb04addAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, mem[_215]
    else:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Compounder: Caller is not an admin address'
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 2
        mem[128] = sub_19921904Address
        mem[160] = WAVAXAddress
        mem[196] = this.address
        require ext_code.size(sub_19921904Address)
        staticcall sub_19921904Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1200 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] / 2
        mem[ceil32(return_data.size) + 228] = 0
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _102 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _104 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = _104
        require return_data.size >= _102 + (32 * _104) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _104] = mem[ceil32(return_data.size) + _102 + 224 len 32 * _104]
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_19921904Address)
        staticcall sub_19921904Address.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _172 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _174 = mem[_172]
        mem[mem[64] + 4] = this.address
        require ext_code.size(WAVAXAddress)
        staticcall WAVAXAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _182 = mem[_180]
        if 1200 > !block.timestamp:
            revert with 0, 17
        mem[mem[64] + 68] = _174
        mem[mem[64] + 100] = _182
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 1200
        require ext_code.size(routerAddress)
        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args sub_19921904Address, WAVAXAddress, _174, _182, 0, 0, address(this.address), block.timestamp + 1200
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if owner != msg.sender:
            revert with 0, 'Compounder: Caller is not the deployer'
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_1eb04addAddress)
        staticcall sub_1eb04addAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_204] <= 0:
            revert with 0, 'Compounder: Insufficient LP balance'
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_1eb04addAddress)
        staticcall sub_1eb04addAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, mem[_216]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
